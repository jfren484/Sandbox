// Decompiled with JetBrains decompiler
// Type: Extensions.ByteArray
// Assembly: Extensions, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 93C7F22B-28B0-4C97-8DF2-08AC1E8B8475
// Assembly location: U:\Programming\C#\ColonizationResourceViewer\ColonizationResourceViewer\bin\Release\Extensions.dll

using System;

namespace Extensions
{
  /// <summary>Static class to hold extension methods for byte[].</summary>
  public static class ByteArray
  {
    /// <summary>Get a subset of the array.</summary>
    /// <param name="data">The array of bytes.</param>
    /// <param name="index">The index in the array at which copying
    /// begins.</param>
    /// <returns>An array of bytes.</returns>
    public static byte[] GetSubset(this byte[] data, long index) => data.GetSubset(index, (long) data.Length - index);

    /// <summary>Get a subset of the array.</summary>
    /// <param name="data">The array of bytes.</param>
    /// <param name="index">The index in the array at which copying
    /// begins.</param>
    /// <param name="length">The number of bytes to copy.</param>
    /// <returns>An array of bytes.</returns>
    public static byte[] GetSubset(this byte[] data, long index, long length)
    {
      byte[] numArray = new byte[length];
      int index1 = 0;
      while ((long) index1 < length)
      {
        numArray[index1] = data[index];
        ++index1;
        ++index;
      }
      return numArray;
    }

    /// <summary>
    /// Returns a 16-bit unsigned integer converted from two bytes at a
    /// specified position in the byte array.
    /// </summary>
    /// <param name="data">The array of bytes.</param>
    /// <param name="startIndex">The starting position within the byte
    /// array.</param>
    /// <returns>A 16-bit unsigned integer formed by two bytes beginning at
    /// startIndex.</returns>
    public static ushort GetUInt16(this byte[] data, int startIndex) => BitConverter.ToUInt16(data, startIndex);

    /// <summary>
    /// Returns a 32-bit unsigned integer converted from two bytes at a
    /// specified position in the byte array.
    /// </summary>
    /// <param name="data">The array of bytes.</param>
    /// <param name="startIndex">The starting position within the byte
    /// array.</param>
    /// <returns>A 32-bit unsigned integer formed by two bytes beginning at
    /// startIndex.</returns>
    public static uint GetUInt32(this byte[] data, int startIndex) => BitConverter.ToUInt32(data, startIndex);
  }
}
