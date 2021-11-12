// Decompiled with JetBrains decompiler
// Type: MadsPackLib.MadsPackEntry
// Assembly: MadsPackLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 02C54206-9715-402A-9199-67BF3982EDB9
// Assembly location: U:\Programming\C#\ColonizationResourceViewer\ColonizationResourceViewer\bin\Release\MadsPackLib.dll

namespace MadsPackLib
{
  /// <summary>
  /// Represents a single entry in a MADSPACK-compressed file.
  /// </summary>
  public class MadsPackEntry
  {
    /// <summary>The Hash value of this entry.</summary>
    public ushort Hash { get; set; }

    /// <summary>The uncompressed size (in bytes) of this entry.</summary>
    public uint Size { get; set; }

    /// <summary>The compresses size (in bytes) of this entry.</summary>
    public uint CompressedSize { get; set; }

    /// <summary>The bytes contained in this entry.</summary>
    public byte[] Data { get; set; }
  }
}
