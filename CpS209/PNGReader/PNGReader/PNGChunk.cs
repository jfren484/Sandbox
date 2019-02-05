using System;
using System.Collections.Generic;

namespace PNGReader
{
    public class PNGChunk
    {
        private uint _chunkLength;
        private string _chunkType;
        private byte[] _chunkData;
        private uint _crc;

        public PNGChunk(uint chunkLength, string chunkType, byte[] chunkData, uint crc)
        {
            _chunkLength = chunkLength;
            _chunkType = chunkType;
            _chunkData = chunkData;
            _crc = crc;
        }

        public uint ChunkLength
        {
            get
            {
                return _chunkLength;
            }
            set
            {
                _chunkLength = value;
            }
        }

        public string ChunkType
        {
            get
            {
                return _chunkType;
            }
            set
            {
                _chunkType = value;
            }
        }

        public byte[] ChunkData
        {
            get
            {
                return _chunkData;
            }
            set
            {
                _chunkData = value;
            }
        }

        public uint CRC
        {
            get
            {
                return _crc;
            }
            set
            {
                _crc = value;
            }
        }

        public KeyValuePair<string, string> ParseTextualData()
        {
            if (_chunkType != "tEXt")
            {
                throw new InvalidOperationException(string.Format("Cannot parse textual data from chunk type {0}", _chunkType));
            }

            string keyword = "";
            string text = "";

            bool nullFound = false;

            for (int i = 0; i < _chunkData.Length; i++)
            {
                byte c = _chunkData[i];
                if (c == 0)
                {
                    nullFound = true;
                }
                else if (!nullFound)
                {
                    keyword += (char)c;
                }
                else
                {
                    text += (char)c;
                }
            }

            return new KeyValuePair<string, string>(keyword, text);
        }
    }
}
