// WHEN: Runs at the very beginning of the application
// WHAT: Deletes self-duplicates. Turns off the application surface so all event drawing is done directly to the screen buffer.
// Basically, it improves performace on old devices, at the cost of requiring all aspect ratio stuff to be coded manually

{
    if(instance_number(obj_orientation_manager) > 1) // This object is persistant, so if there are more than one orientation managers, destroy the new one
    {
        instance_destroy();
        exit;
    }
    application_surface_enable(false);
    
    scr_Global_Variables();
    var currentRoom, lastRoom, orientation, rmSize, viewWidth, viewHeight;
    var maxRes;
}
