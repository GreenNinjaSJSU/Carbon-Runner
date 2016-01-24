if !MELT_inregion(mouse_x,mouse_y,global.GUI_x[i] + global.GUI_w[i] / 2 - resize_rect_pos,
                global.GUI_y[i] + global.GUI_h[i] / 2  - resize_rect_pos, 
                global.GUI_x[i] + global.GUI_w[i] / 2 + resize_rect_w - resize_rect_pos,
                global.GUI_y[i] + global.GUI_h[i] / 2 + resize_rect_w  - resize_rect_pos, 0)
        
if MELT_inregion(mouse_x,mouse_y,global.GUI_x[i] - global.GUI_w[i] / 2,
        global.GUI_y[i] - global.GUI_h[i] / 2 , 
        global.GUI_x[i] + global.GUI_w[i] / 2 ,
        global.GUI_y[i] + global.GUI_h[i] / 2 , 0)
    {
    if mouse_check_button_pressed(1)
        {
        selected = i
        }
    if mouse_check_button_pressed(2)
        {
        if !instance_exists(MELT_obj_menu)
            {
            tstr = ""
            if global.GUI_type[i] = "gui_button"
                {
                tstr += "choose onclick script|"
                }
            if global.GUI_type[i] = "gui_checkbox"
                {
                tstr += "choose onclick script|"
                }
            if global.GUI_type[i] = "gui_text"
                {
                tstr += "choose alignment|"
                }
            waiting = MELT_scr_show_menu("change text|copy|delete|change sprite|"+tstr+"copy code to clipboard|cancel|","primaryNodeMenu")
            waiting_for = i
            }
        }
        
    if mouse_check_button_pressed(1)
        {
        moving = i
        xoff = mouse_x - global.GUI_x[i]
        yoff = mouse_y - global.GUI_y[i]
        resizing = -1
        }
    }
