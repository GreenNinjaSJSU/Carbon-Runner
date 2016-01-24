
if MELT_inregion(mouse_x,mouse_y,global.GUI_x[i] + global.GUI_w[i] / 2 - resize_rect_pos,
        global.GUI_y[i] + global.GUI_h[i] / 2  - resize_rect_pos, 
        global.GUI_x[i] + global.GUI_w[i] / 2 + resize_rect_w - resize_rect_pos,
        global.GUI_y[i] + global.GUI_h[i] / 2 + resize_rect_w  - resize_rect_pos, 0)
    {
    draw_set_color(c_white)
    
    draw_rectangle(global.GUI_x[i] + global.GUI_w[i] / 2 - resize_rect_pos,
        global.GUI_y[i] + global.GUI_h[i] / 2  - resize_rect_pos, 
        global.GUI_x[i] + global.GUI_w[i] / 2 + resize_rect_w - resize_rect_pos,
        global.GUI_y[i] + global.GUI_h[i] / 2 + resize_rect_w - resize_rect_pos, 0)
    
    draw_set_color(c_black)
    
    draw_rectangle(global.GUI_x[i] + global.GUI_w[i] / 2 - resize_rect_pos,
        global.GUI_y[i] + global.GUI_h[i] / 2 - resize_rect_pos , 
        global.GUI_x[i] + global.GUI_w[i] / 2 + resize_rect_w - resize_rect_pos ,
        global.GUI_y[i] + global.GUI_h[i] / 2 + resize_rect_w - resize_rect_pos , 1 - (resizing == i))
    
    if moving = -1
    if mouse_check_button_pressed(1)
        {
        resizing = i
        xoff = mouse_x - (global.GUI_x[i] + global.GUI_w[i] / 2)
        yoff = mouse_y - (global.GUI_y[i] + global.GUI_h[i] / 2)
        }
    }
