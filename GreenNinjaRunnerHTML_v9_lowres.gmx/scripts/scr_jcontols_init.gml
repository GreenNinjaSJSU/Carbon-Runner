global.js = 0
if joystick_exists(1)
global.js+=1
if joystick_exists(2)
global.js+=1

for(j=0 ; j < 2 ; j+=1) //global.js
    {
    global.jbuttons[j] = joystick_buttons(j+1)
    for(i=0 ; i < 32; i+=1) //global.jbuttons[j]
        {
        global.jpressed[j,i] = 0
        global.jreleased[j,i] = 0
        global.jactive[j,i] = 0
        }
    global.jaxes[j] = joystick_axes(j+1)
    global.jleft_active[j] = 0
    global.jright_active[j] = 0
    global.jup_active[j] = 0
    global.jdown_active[j] = 0
    
    global.jleft_pressed[j] = 0
    global.jright_pressed[j] = 0
    global.jup_pressed[j] = 0
    global.jdown_pressed[j] = 0
    
    global.jleft_released[j] = 0
    global.jright_released[j] = 0
    global.jup_released[j] = 0
    global.jdown_released[j] = 0
    
    //ZPOS
    global.jleft_z_active[j] = 0
    global.jright_z_active[j] = 0
    
    global.jright_z_pressed[j] = 0
    global.jright_z_released[j] = 0
    
    global.jleft_z_pressed[j] = 0
    global.jleft_z_released[j] = 0
    
    ///RPOS (stick 2 y-axis on xbox 360 controller)
    global.jup_r_active[j] = 0
    global.jdown_r_active[j] = 0
    
    global.jdown_r_pressed[j] = 0
    global.jdown_r_released[j] = 0
    
    global.jup_r_pressed[j] = 0
    global.jup_r_released[j] = 0
    
    ///UPOS (stick 2 x-axis on xbox 360 controller)
    global.jleft_u_active[j] = 0
    global.jright_u_active[j] = 0
    
    global.jright_u_pressed[j] = 0
    global.jright_u_released[j] = 0
    
    global.jleft_u_pressed[j] = 0
    global.jleft_u_released[j] = 0
    
    ///POV
    global.jpov_up[j] = 0
    global.jpov_down[j] = 0
    global.jpov_left[j] = 0
    global.jpov_right[j] = 0
    
    global.jpov_up_pressed[j] = 0
    global.jpov_down_pressed[j] = 0
    global.jpov_left_pressed[j] = 0
    global.jpov_right_pressed[j] = 0
    
    global.jpov_up_released[j] = 0
    global.jpov_down_released[j] = 0
    global.jpov_left_released[j] = 0
    global.jpov_right_released[j] = 0
    
    }
