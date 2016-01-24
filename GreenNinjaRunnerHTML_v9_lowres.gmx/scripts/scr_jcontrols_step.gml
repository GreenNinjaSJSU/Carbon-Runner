///STEP EVENT

for(j=0 ; j < global.js ; j+=1)
    {
    global.jbuttons[j] = joystick_buttons(j+1)
    for(i=0 ; i<global.jbuttons[j]+1 ; i+=1)
        {
        global.jpressed[j,i] = 0
        global.jreleased[j,i] = 0
        //global.jactive[j,i] = 0
        
        if joystick_check_button(j+1,i)
            {
            if global.jactive[j,i]
                {
                global.jpressed[j,i] = 0
                }
            else
                {
                global.jpressed[j,i] = 1
                }
            }
        else
            {
            if global.jactive[j,i]
                {
                global.jreleased[j,i] = 1
                }
            else
                {
                global.jreleased[j,i] = 0
                }
            }
        global.jactive[j,i] = joystick_check_button(j+1,i)
        
        }
    global.jaxes[j] = joystick_axes(j+1)
    
    //XPOS PRESSED LEFT
    
    if joystick_xpos(j+1) < -.5
        {
        if global.jleft_active[j]
            {
            global.jleft_pressed[j] = 0
            }
        else
            {
            global.jleft_pressed[j] = 1
            }
        }
    else
        {
        global.jleft_pressed[j] = 0
        if global.jleft_active[j]
            {
            global.jleft_released[j] = 1
            }
        else
            {
            global.jleft_released[j] = 0
            }
        }
    
    //XPOS PRESSED RIGHT
    
    if joystick_xpos(j+1) > .5
        {
        if global.jright_active[j]
            {
            global.jright_pressed[j] = 0
            }
        else
            {
            global.jright_pressed[j] = 1
            }
        }
    else
        {
        global.jright_pressed[j] = 0
        if global.jright_active[j]
            {
            global.jright_released[j] = 1
            }
        else
            {
            global.jright_released[j] = 0
            }
        }
    
    //YPOS PRESSED UP
        
    if joystick_ypos(j+1) < -.5
        {
        if global.jup_active[j]
            {
            global.jup_pressed[j] = 0
            }
        else
            {
            global.jup_pressed[j] = 1
            }
        }
    else
        {
        global.jup_pressed[j] = 0
        if global.jup_active[j]
            {
            global.jup_released[j] = 1
            }
        else
            {
            global.jup_released[j] = 0
            }
        }
    
    //YPOS PRESSED DOWN
        
    if joystick_ypos(j+1) > .5
        {
        if global.jdown_active[j]
            {
            global.jdown_pressed[j] = 0
            }
        else
            {
            global.jdown_pressed[j] = 1
            }
        }
    else
        {
        global.jdown_pressed[j] = 0
        if global.jdown_active[j]
            {
            global.jdown_released[j] = 1
            }
        else
            {
            global.jdown_released[j] = 0
            }
        }
    
    //ZPOS LEFT PRESSED
        
    if joystick_zpos(j+1) < -.5
        {
        if global.jleft_z_active[j]
            {
            global.jleft_z_pressed[j] = 0
            }
        else
            {
            global.jleft_z_pressed[j] = 1
            }
        }
    else
        {
        if global.jleft_z_active[j]
            {
            global.jleft_z_released[j] = 1
            }
        else
            {
            global.jleft_z_released[j] = 0
            }
        }
    
    //ZPOS RIGHT PRESSED
        
    if joystick_zpos(j+1) > .5
        {
        if global.jright_z_active[j]
            {
            global.jright_z_pressed[j] = 0
            }
        else
            {
            global.jright_z_pressed[j] = 1
            }
        }
    else
        {
        if global.jright_z_active[j]
            {
            global.jright_z_released[j] = 1
            }
        else
            {
            global.jright_z_released[j] = 0
            }
        }
    
    //RPOS UP PRESSED
        
    if joystick_rpos(j+1) < -.5
        {
        if global.jup_r_active[j]
            {
            global.jup_r_pressed[j] = 0
            }
        else
            {
            global.jup_r_pressed[j] = 1
            }
        }
    else
        {
        if global.jup_r_active[j]
            {
            global.jup_r_released[j] = 1
            }
        else
            {
            global.jup_r_released[j] = 0
            }
        }
    
    //RPOS DOWN PRESSED
        
    if joystick_rpos(j+1) > .5
        {
        if global.jdown_r_active[j]
            {
            global.jdown_r_pressed[j] = 0
            }
        else
            {
            global.jdown_r_pressed[j] = 1
            }
        }
    else
        {
        if global.jdown_r_active[j]
            {
            global.jdown_r_released[j] = 1
            }
        else
            {
            global.jdown_r_released[j] = 0
            }
        }
    
    //UPOS LEFT PRESSED
        
    if joystick_upos(j+1) < -.5
        {
        if global.jleft_u_active[j]
            {
            global.jleft_u_pressed[j] = 0
            }
        else
            {
            global.jleft_u_pressed[j] = 1
            }
        }
    else
        {
        if global.jleft_u_active[j]
            {
            global.jleft_u_released[j] = 1
            }
        else
            {
            global.jleft_u_released[j] = 0
            }
        }
    
    //UPOS RIGHT PRESSED
        
    if joystick_upos(j+1) > .5
        {
        if global.jright_u_active[j]
            {
            global.jright_u_pressed[j] = 0
            }
        else
            {
            global.jright_u_pressed[j] = 1
            }
        }
    else
        {
        if global.jright_u_active[j]
            {
            global.jright_u_released[j] = 1
            }
        else
            {
            global.jright_u_released[j] = 0
            }
        }
    
    //if joystick_xpos(j+1) < -.5
        global.jleft_active[j] = joystick_xpos(j+1) < -.5
    //if joystick_xpos(j+1) > .5
        global.jright_active[j] = joystick_xpos(j+1) > .5
    //if joystick_ypos(j+1) < -.5
        global.jup_active[j] = joystick_ypos(j+1) < -.5
    //if joystick_ypos(j+1) > .5
        global.jdown_active[j] = joystick_ypos(j+1) > .5
        
        global.jleft_z_active[j] = joystick_zpos(j+1) < -.5
        global.jright_z_active[j] = joystick_zpos(j+1) > .5
        
        global.jup_r_active[j] = joystick_rpos(j+1) < -.5
        global.jdown_r_active[j] = joystick_rpos(j+1) > .5
        
        global.jleft_u_active[j] = joystick_upos(j+1) < -.5
        global.jright_u_active[j] = joystick_upos(j+1) > .5
        
    //POV LEFT PRESSED
    
    if joystick_pov(j+1) = 270
        {
        if global.jpov_left[j]
            {
            global.jpov_left_pressed[j] = 0
            }
        else
            {
            global.jpov_left_pressed[j] = 1
            }
        }
    else
        {
        global.jpov_left_pressed[j] = 0
        if global.jpov_left[j]
            {
            global.jpov_left_released[j] = 1
            }
        else
            {
            global.jpov_left_released[j] = 0
            }
        }
    
    //POV RIGHT PRESSED
    
    if joystick_pov(j+1) = 90
        {
        if global.jpov_right[j]
            {
            global.jpov_right_pressed[j] = 0
            }
        else
            {
            global.jpov_right_pressed[j] = 1
            }
        }
    else
        {
        global.jpov_right_pressed[j] = 0
        if global.jpov_right[j]
            {
            global.jpov_right_released[j] = 1
            }
        else
            {
            global.jpov_right_released[j] = 0
            }
        }
    
    //POV UP PRESSED
    
    if joystick_pov(j+1) = 0
        {
        if global.jpov_up[j]
            {
            global.jpov_up_pressed[j] = 0
            }
        else
            {
            global.jpov_up_pressed[j] = 1
            }
        }
    else
        {
        global.jpov_up_pressed[j] = 0
        if global.jpov_up[j]
            {
            global.jpov_up_released[j] = 1
            }
        else
            {
            global.jpov_up_released[j] = 0
            }
        }
    
    //POV DOWN PRESSED
    
    if joystick_pov(j+1) = 0
        {
        if global.jpov_down[j]
            {
            global.jpov_down_pressed[j] = 0
            }
        else
            {
            global.jpov_down_pressed[j] = 1
            }
        }
    else
        {
        global.jpov_down_pressed[j] = 0
        if global.jpov_down[j]
            {
            global.jpov_down_released[j] = 1
            }
        else
            {
            global.jpov_down_released[j] = 0
            }
        }
    
    ///POV
    /*
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
    */
    
    }
    
    
    
