///scr_lock_perso(inst_perso_sidescroll, inst_unlock)
scr_safe_check(obj_lock_perso);

argument0.able = false;
argument0.freeze = true;

obj_lock_perso.target = argument0;
obj_lock_perso.callConditionRelease = argument1;
