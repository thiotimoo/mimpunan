var i_d = ds_map_find_value(async_load, "id");
if i_d == msg
{
    if ds_map_find_value(async_load, "status")
    {
        if ds_map_find_value(async_load, "result") != ""
        {
            ip = ds_map_find_value(async_load, "result");
			event_user(1);
        }
    }
}