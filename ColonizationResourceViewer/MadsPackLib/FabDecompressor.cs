// Decompiled with JetBrains decompiler
// Type: MadsPackLib.FabDecompressor
// Assembly: MadsPackLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 02C54206-9715-402A-9199-67BF3982EDB9
// Assembly location: U:\Programming\C#\ColonizationResourceViewer\ColonizationResourceViewer\bin\Release\MadsPackLib.dll

using Extensions;
using System;
using System.Text;

namespace MadsPackLib
{
  /// <summary>Decompresses a FAB section.</summary>
  internal class FabDecompressor
  {
    private const string FabErrorInputExceeded = "Passed end of input buffer during decompression.";
    private const string FabErrorOutputExceeded = "Decompressed data exceeded specified size.";
    private const string FabErrorInvalidData = "Invalid compressed data.";
    private const string FabErrorInvalidShiftStart = "Invalid shift start.";
    private const string FabErrorOutputLength = "Decompressed data does not match header decompressed size.";
    private const string FabDataStartString = "FAB";
    private uint decompressedLength;
    private byte[] compressedData;
    private ushort bitBuffer;
    private byte bitsLeft = 16;
    private int compDataPos = 6;

    /// <summary>Create a new instance of FabDecompressor.</summary>
    /// <param name="compressedData">The byte[] containing the compressed
    /// data.</param>
    /// <param name="decompressedLength">An unsigned int representing the
    /// length of the data after it has been decompressed.</param>
    public FabDecompressor(byte[] compressedData, uint decompressedLength)
    {
      this.compressedData = compressedData;
      this.decompressedLength = decompressedLength;
    }

    /// <summary>Gets the next bit from the buffer.</summary>
    /// <returns>A boolean value indicating whether the next bit was a
    /// 1.</returns>
    private bool getBit()
    {
      bool flag = ((int) this.bitBuffer & 1) == 1;
      if (this.bitsLeft == (byte) 1)
      {
        if (this.compDataPos == this.compressedData.Length)
          throw new FabDecompressionException("Passed end of input buffer during decompression.");
        this.bitBuffer = this.compressedData.GetUInt16(this.compDataPos);
        this.compDataPos += 2;
        this.bitsLeft = (byte) 16;
      }
      else
      {
        this.bitBuffer >>= 1;
        --this.bitsLeft;
      }
      return flag;
    }

    /// <summary>Decompress the data array passed to the contructor.</summary>
    /// <returns>A byte[] containing the decompressed data.</returns>
    public byte[] Decompress()
    {
      byte[] numArray = new byte[this.decompressedLength];
      int index = 0;
      if (!Encoding.ASCII.GetString(this.compressedData, 0, 3).Equals("FAB"))
        throw new FabDecompressionException("Invalid compressed data.");
      if (this.compressedData[3] < (byte) 10 || this.compressedData[3] > (byte) 13)
        throw new FabDecompressionException("Invalid shift start.");
      byte num1 = (byte) (16U - (uint) this.compressedData[3]);
      byte num2 = (byte) ((int) byte.MaxValue << (int) this.compressedData[3] - 8);
      byte num3 = (byte) ((1 << (int) num1) - 1);
      this.bitBuffer = this.compressedData.GetUInt16(4);
      while (true)
      {
        while (!this.getBit())
        {
          byte num4;
          ulong num5;
          if (this.getBit())
          {
            ulong num6 = (ulong) ((uint) (((int) this.compressedData[this.compDataPos + 1] >> (int) num1 | (int) num2) << 8) | (uint) this.compressedData[this.compDataPos]);
            byte num7 = (byte) ((uint) this.compressedData[this.compDataPos + 1] & (uint) num3);
            this.compDataPos += 2;
            if (num7 == (byte) 0)
            {
              byte num8 = this.compressedData[this.compDataPos++];
              switch (num8)
              {
                case 0:
                  if ((long) index != (long) this.decompressedLength)
                    throw new FabDecompressionException("Decompressed data does not match header decompressed size.");
                  return numArray;
                case 1:
                  continue;
                default:
                  num4 = (byte) ((uint) num8 + 1U);
                  break;
              }
            }
            else
              num4 = (byte) ((uint) num7 + 2U);
            num5 = num6 | 4294901760UL;
          }
          else
          {
            num4 = (byte) ((this.getBit() ? 2 : 0) + (this.getBit() ? 1 : 0) + 2);
            num5 = (ulong) ((uint) this.compressedData[this.compDataPos++] | 4294967040U);
          }
          while (num4-- > (byte) 0)
          {
            if ((long) index == (long) this.decompressedLength)
              throw new FabDecompressionException("Decompressed data exceeded specified size.");
            numArray[index] = numArray[index + (int) num5];
            ++index;
          }
        }
        if (this.compDataPos != this.compressedData.Length)
        {
          if ((long) index != (long) this.decompressedLength)
            numArray[index++] = this.compressedData[this.compDataPos++];
          else
            goto label_9;
        }
        else
          break;
      }
      throw new FabDecompressionException("Passed end of input buffer during decompression.");
label_9:
      throw new FabDecompressionException("Decompressed data exceeded specified size.");
    }
  }
}
