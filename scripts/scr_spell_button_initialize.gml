///This script populates the spell button with the spell-specific information
var buttonInstance = argument[0];
var spellType = argument[1];

with(buttonInstance)
{
    switch(spellType)
    {
        case (spell.swordstrike):
            //scr_swordstrike_create();
            break;
        case (spell.bash):
            scr_spell_bash_create();
            break;
        case (spell.shield):
            //scr_spell_bash_create();
            break;
        case (spell.shatter):
            scr_spell_shatter_create();
            break;
            
        case (spell.zap):
            scr_spell_zap_create();
            break; 
        case (spell.heal):
            scr_spell_heal_create();
            break;
        case (spell.fireball):
            //scr_spell_fireball_create();
            break;
        case (spell.freeze):
            //scr_spell_freeze_create();
            break;

        case (spell.manabomb):
            scr_spell_manabomb_create();
            break;
    }
}