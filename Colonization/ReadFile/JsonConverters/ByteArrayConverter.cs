using System;
using Newtonsoft.Json;

namespace ReadFile.JsonConverters
{
    public class ByteArrayConverter : JsonConverter<byte[]>
    {
        public override bool CanRead => false;

        public override byte[] ReadJson(JsonReader reader, Type objectType, byte[] existingValue, bool hasExistingValue, JsonSerializer serializer)
        {
            throw new NotImplementedException();
        }

        public override void WriteJson(JsonWriter writer, byte[] value, JsonSerializer serializer)
        {
            writer.WriteStartArray();
            foreach (var b in value)
            {
                writer.WriteValue(b.ToString("X2"));
            }
            writer.WriteEndArray();
        }
    }
}
