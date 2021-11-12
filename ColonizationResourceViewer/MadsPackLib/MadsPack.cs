// Decompiled with JetBrains decompiler
// Type: MadsPackLib.MadsPack
// Assembly: MadsPackLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 02C54206-9715-402A-9199-67BF3982EDB9
// Assembly location: U:\Programming\C#\ColonizationResourceViewer\ColonizationResourceViewer\bin\Release\MadsPackLib.dll

using Extensions;
using System.Collections.Generic;
using System.Text;

namespace MadsPackLib
{
  /// <summary>Represents a MADSPACK-compressed file.</summary>
  public class MadsPack
  {
    private const string MADSPACKSTRING = "MADSPACK";
    private const int OFF_ENTRY_COUNT = 14;
    private const int OFF_HEADER = 16;
    private const int OFF_DATA = 176;

    /// <summary>The entries that are contained in this file.</summary>
    public List<MadsPackEntry> Entries { get; private set; }

    /// <summary>Create a new MadsPack instance.</summary>
    /// <param name="data">The file data to process into this
    /// instance.</param>
    public MadsPack(byte[] data)
    {
      if (!Encoding.ASCII.GetString(data, 0, 8).Equals("MADSPACK"))
        throw new MadsPackDataException("Not valid MADSPACK data.");
      long index1 = 176;
      int startIndex = 16;
      ushort uint16 = data.GetUInt16(14);
      this.Entries = new List<MadsPackEntry>((int) uint16);
      for (int index2 = 0; index2 < (int) uint16; ++index2)
      {
        MadsPackEntry madsPackEntry = new MadsPackEntry()
        {
          Hash = data.GetUInt16(startIndex),
          Size = data.GetUInt32(startIndex + 2),
          CompressedSize = data.GetUInt32(startIndex + 6)
        };
        byte[] subset = data.GetSubset(index1, (long) madsPackEntry.CompressedSize);
        if ((int) madsPackEntry.Size == (int) madsPackEntry.CompressedSize)
        {
          madsPackEntry.Data = subset;
        }
        else
        {
          madsPackEntry.Data = new FabDecompressor(subset, madsPackEntry.Size).Decompress();
          if ((long) madsPackEntry.Data.Length != (long) madsPackEntry.Size)
            throw new MadsPackDataException("The decompressed data size does not match the value in the header.");
        }
        this.Entries.Add(madsPackEntry);
        index1 += (long) madsPackEntry.CompressedSize;
        startIndex += 10;
      }
    }
  }
}
