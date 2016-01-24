code_str = ""
for(i=0 ; i < global.GUIs ; i++)
    {
    if !global.GUI_deleted[i] = 1
        {       
        MELT_export_code()
        
        MELT_item_right_click_options()
    
        if global.GUI_devmode
        {
        resize_rect_w = 24 //needed for onhover script
        resize_rect_pos = resize_rect_w / 2
        
        MELT_item_onhover()
        
        //RESIZING ITEMS
        if resizing = i
            {
            global.GUI_w[i] = MELT_scr_snap( abs(((mouse_x - xoff) - global.GUI_x[i]) * 2) , 16)
            global.GUI_h[i] = MELT_scr_snap( abs(((mouse_y - yoff) - global.GUI_y[i]) * 2) , 16)
            if mouse_check_button_released(1)
                resizing = -1
            
            draw_set_color(c_black)
            draw_text(global.GUI_x[i] - global.GUI_w[i] / 2 , global.GUI_y[i] - global.GUI_h[i] / 2 -24 , 
                string(global.GUI_w[i])+"x"+string(global.GUI_h[i]))
            }
        
        //MOVING ITEMS
        if moving = i
            {
            draw_set_alpha(.5)
            draw_set_color(c_purple)
            draw_line_width(room_width / 2 , 0 , room_width / 2 , room_height , 2)
            draw_line_width(0, room_height / 2 , room_width , room_height / 2, 2)
            draw_set_alpha(1)
            
            if MELT_scr_snap(global.GUI_x[i] , 16) = room_width / 2
                {
                draw_set_color(c_orange)
                draw_line_width(room_width / 2, 0 , room_width / 2, room_height , 4)
                }
            if MELT_scr_snap(global.GUI_y[i] , 16) = room_height / 2
                {
                draw_set_color(c_orange)
                draw_line_width(0, room_height / 2 , room_width , room_height / 2, 4)
                }
            
            global.GUI_x[i] = MELT_adjust( MELT_scr_snap(mouse_x - xoff , 16) , global.GUI_x[i])
            global.GUI_y[i] = MELT_adjust( MELT_scr_snap(mouse_y - yoff , 16) , global.GUI_y[i])
            if mouse_check_button_released(1)
                moving = -1
            }
        }
        
        MELT_draw_list()
        
        //RESIZING RETANGLE
        MELT_item_resize_rectangle()
        
        }
    }
    
