///scr_get_closest_activable(inst_control_active)
argument0.thisDist = 9999999;
with(obj_activable)
{
    var currentDist = point_distance(other.target.x + other.offsetX, other.target.y + other.offsetY, x+offsetX, y+offsetY);
    if (currentDist < other.thisDist)
    {
        other.thisDist = currentDist;
        other.currentActive = id;
    }
}

