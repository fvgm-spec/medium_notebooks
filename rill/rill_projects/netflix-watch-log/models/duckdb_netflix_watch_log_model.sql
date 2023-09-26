-- @materialize: true

SELECT
    cs."Profile Name" AS profile_name,
    a."Device Type" AS device_type,
    b."Maturity Level",
    c."Country Iso Code",
    c."Utc Timestamp",
FROM netflix_watch_log_clickstream cs
LEFT JOIN netflix_watch_log_devices a ON cs."Profile Name" = a."Profile Name"
LEFT JOIN netflix_watch_log_profiles b ON cs."Profile Name" = b."Profile Name"
LEFT JOIN netflix_watch_log_searchHistory c ON cs."Profile Name" = c."Profile Name"