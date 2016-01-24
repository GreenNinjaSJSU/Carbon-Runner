if placing > ""
    {
    draw_rectangle(mouse_x - placing_w / 2,mouse_y - placing_h / 2 , 
        mouse_x + placing_w / 2,mouse_y + placing_h / 2 , 0)
    
    if mouse_check_button_pressed(2)
        {
        placing = ""
        }

    if mouse_check_button_pressed(1)
        {
        new = MELT_scr_gui_add(MELT_scr_snap(mouse_x,16),MELT_scr_snap(mouse_y,16),placing_w,placing_h)
        global.GUI_type[new] = placing
        placing = ""
        }
    }
