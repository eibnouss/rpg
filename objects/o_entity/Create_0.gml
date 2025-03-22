enum STATES
{
 DEFAULT,
 LIFTED,
 THROWN,
 LANDED
}

state = STATES. DEFAULT;
thrownCollision = false;
throwSpeed = 3;



z = 0;
flash = 0;
lifted = 0;
thrown = false;
uflash = shader_get_uniform(shWhiteFlash, "flash");