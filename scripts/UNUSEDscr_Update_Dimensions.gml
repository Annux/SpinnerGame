// WHEN: Called when the orientation changes
// WHAT: Changes the game view

// COMMENTED: Currently the game does not flip orientations
/*
{
    var orientation = argument0;

    if (orientation == 0)
    {
        view_visible[1] = false;
        view_visible[0] = true;
    }
    else if (orientation == 1)
    {
        view_visible[0] = false;
        view_visible[1] = true;
    }
}
