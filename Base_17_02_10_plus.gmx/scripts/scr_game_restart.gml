///scr_game_restart(room_initiale)

audio_stop_all();
with(all)
{
    persistent = false;
}
room_persistent = false;
room_goto(argument0);
