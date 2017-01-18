///scr_set_animation_trigger(target_object, animation_state)
var target = argument[0];
var animationState = argument[1];
var duration = argument[2];

with(target)
{
    sprite_index = animationState;
    animTimer = duration;
}
