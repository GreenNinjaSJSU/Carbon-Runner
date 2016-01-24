///scr_create_floating_number(text,color,x,y)
//scr_create_floating_number('gold +1',c_lime,x,y-32)
nf=instance_create(argument2,argument3,obj_floating_number)
nf.text=argument0
nf.c=argument1
nf.a=1
nf.hspeed = -8