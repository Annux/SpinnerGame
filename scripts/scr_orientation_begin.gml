// WHEN: Runs at the very beginning of the application
// WHAT: Deletes self-duplicates (THERE CAN ONLY BE ONE!). Turns off the 'application surface' so all event drawing is done directly to the screen buffer.
// Basically, it improves performace on old devices at the cost of requiring all aspect ratio information to be coded manually
{
    if(instance_number(obj_orientation_manager) > 1) // This object is persistant, so if there is more than one orientation manager, destroy the new one
    {
        instance_destroy();
        exit;
    }
    application_surface_enable(false);
}
