// Decompiled with JetBrains decompiler
// Type: MadsPackLib.FabDecompressionException
// Assembly: MadsPackLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 02C54206-9715-402A-9199-67BF3982EDB9
// Assembly location: U:\Programming\C#\ColonizationResourceViewer\ColonizationResourceViewer\bin\Release\MadsPackLib.dll

using System;

namespace MadsPackLib
{
  /// <summary>
  /// An exception related to the decompressing of data in a MADSPACK-compressed
  /// file.
  /// </summary>
  public class FabDecompressionException : Exception
  {
    /// <summary>Create a new instance of FabDecompressionException.</summary>
    /// <param name="message">The message that describes the error.</param>
    public FabDecompressionException(string message)
      : base(message)
    {
    }
  }
}
