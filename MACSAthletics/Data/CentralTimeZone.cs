namespace MACSAthletics.Data
{
    public static class CentralTimeZone
    {
        private static readonly TimeZoneInfo CentralTimeZoneInfo = TimeZoneInfo.FindSystemTimeZoneById("Central Standard Time");

        public static DateTime Now => TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, CentralTimeZoneInfo);
        public static DateTime Today => Now.Date;
    }
}
