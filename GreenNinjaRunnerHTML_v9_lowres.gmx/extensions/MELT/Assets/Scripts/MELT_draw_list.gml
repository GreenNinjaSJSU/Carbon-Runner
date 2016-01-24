
if global.GUI_devmode
if (selected == i)
    {
    draw_set_color(c_purple)
    draw_set_alpha(1)
    draw_rectangle(global.GUI_x[i] - global.GUI_w[i] / 2 - 4,
            global.GUI_y[i] - global.GUI_h[i] / 2 - 4, 
            global.GUI_x[i] + global.GUI_w[i] / 2 + 4,
            global.GUI_y[i] + global.GUI_h[i] / 2 + 4, 0)
    }
        
if global.GUI_type[i] = "gui_button"
    {
    if global.GUI_spr[i] = -1
        MELT_drawButton(global.GUI_x[i],global.GUI_y[i],global.GUI_w[i],global.GUI_h[i],global.GUI_text[i])
    else
        MELT_button_frozen(global.GUI_spr[i] , global.GUI_x[i] - global.GUI_w[i] / 2 , global.GUI_y[i] - global.GUI_h[i] / 2 , global.GUI_w[i],global.GUI_h[i] , global.GUI_text[i] , -1 , 0 , "")
    }
else
if global.GUI_type[i] = "gui_checkbox"
    {
    if global.GUI_spr[i] = -1
        {
        if MELT_checkbox_frozen(spr_checkbox , global.GUI_x[i] - global.GUI_w[i] / 2 , global.GUI_y[i] - global.GUI_h[i] / 2 , 
            global.GUI_w[i],global.GUI_h[i] , global.GUI_value[i] , global.GUI_text[i])
            global.GUI_value[i] =! global.GUI_value[i]
        }
    else
        {
        global.GUI_value[i] = MELT_checkbox_frozen(global.GUI_spr[i] , global.GUI_x[i] - global.GUI_w[i] / 2 , global.GUI_y[i] - global.GUI_h[i] / 2 , 
            global.GUI_w[i],global.GUI_h[i] , global.GUI_value[i] , global.GUI_text[i])
            global.GUI_value[i] =! global.GUI_value[i]
        }
    }
else
if global.GUI_type[i] = "gui_buttontab"
    {
    if global.GUI_spr[i] = -1
        {
        if MELT_button_tab_frozen(spr_tab,global.GUI_x[i] - global.GUI_w[i] / 2 , global.GUI_y[i] - global.GUI_h[i] / 2 , 
            global.GUI_w[i],global.GUI_h[i] ,global.GUI_text[i], -1, 0 ,"", tabval, i)
        tabval = i
        }
    else
        {
        if MELT_button_tab_frozen(global.GUI_spr[i] , global.GUI_x[i] - global.GUI_w[i] / 2 , global.GUI_y[i] - global.GUI_h[i] / 2 , 
            global.GUI_w[i],global.GUI_h[i] ,global.GUI_text[i], -1, 0 ,"", tabval, i )
        tabval = i
        }
    }
else
if global.GUI_type[i] = "gui_hscroll"
    {
    global.GUI_value[i] = MELT_scrollbar_horizontal(global.GUI_x[i], global.GUI_y[i],global.GUI_w[i], global.GUI_h[i], global.GUI_value[i] , 100,0,i,"")
    }
else
if global.GUI_type[i] = "gui_vscroll"
    {
    global.GUI_value[i] = MELT_scrollbar_vertical(global.GUI_x[i], global.GUI_y[i],global.GUI_w[i], global.GUI_h[i], global.GUI_value[i] , 100,0,i,"")
    }
else
if global.GUI_type[i] = "gui_input"
    {
    global.GUI_input_text[i] = MELT_scr_input_frozen(global.GUI_x[i], global.GUI_y[i],global.GUI_w[i],global.GUI_h[i],global.GUI_input_text[i],global.GUI_text[i],0,i)
    }
else
if global.GUI_type[i] = "gui_text"
    {
    draw_set_color(c_black)
    draw_set_alpha(1)
    draw_set_halign(global.GUI_halign[i])
    draw_set_valign(fa_top)
    
    if global.GUI_halign[i] = fa_left
    tx = global.GUI_x[i] - global.GUI_w[i] / 2 
    
    if global.GUI_halign[i] = fa_right
    tx = global.GUI_x[i] + global.GUI_w[i] / 2 
    
    if global.GUI_halign[i] = fa_center
    tx = global.GUI_x[i]
    
    draw_text(tx , global.GUI_y[i] - global.GUI_h[i] / 2, global.GUI_text[i])
    }
else
if global.GUI_type[i] = "gui_sprite"
    {
    if global.GUI_spr[i] > -1
    tspr = global.GUI_spr[i]
    else
    tspr = spr_button
    draw_sprite(tspr,0,global.GUI_x[i],global.GUI_y[i])
    
    /*
    draw_set_color(c_black)
    draw_set_alpha(1)
    draw_set_halign(global.GUI_halign[i])
    draw_set_valign(fa_top)
    
    if global.GUI_halign[i] = fa_left
    tx = global.GUI_x[i] - global.GUI_w[i] / 2 
    
    if global.GUI_halign[i] = fa_right
    tx = global.GUI_x[i] + global.GUI_w[i] / 2 
    
    if global.GUI_halign[i] = fa_center
    tx = global.GUI_x[i]
    
    draw_text(tx , global.GUI_y[i] - global.GUI_h[i] / 2, global.GUI_text[i])
    */
    }
else
    {
    draw_set_color(c_white)
    draw_rectangle(global.GUI_x[i] - global.GUI_w[i] / 2,
        global.GUI_y[i] - global.GUI_h[i] / 2 , 
        global.GUI_x[i] + global.GUI_w[i] / 2 ,
        global.GUI_y[i] + global.GUI_h[i] / 2 , 0)
    }

if global.GUI_devmode
    {
    draw_set_color(c_white)
    draw_rectangle(global.GUI_x[i] - global.GUI_w[i] / 2-1,
            global.GUI_y[i] - global.GUI_h[i] / 2-1 , 
            global.GUI_x[i] + global.GUI_w[i] / 2+1 ,
            global.GUI_y[i] + global.GUI_h[i] / 2+1 , 1)
    draw_set_color(c_black)
    draw_rectangle(global.GUI_x[i] - global.GUI_w[i] / 2,
            global.GUI_y[i] - global.GUI_h[i] / 2 , 
            global.GUI_x[i] + global.GUI_w[i] / 2 ,
            global.GUI_y[i] + global.GUI_h[i] / 2 , 1)
    if MELT_inregion(mouse_x,mouse_y,global.GUI_x[i] - global.GUI_w[i] / 2,
            global.GUI_y[i] - global.GUI_h[i] / 2 , 
            global.GUI_x[i] + global.GUI_w[i] / 2 ,
            global.GUI_y[i] + global.GUI_h[i] / 2 , 0)
        {
        draw_set_color(c_purple)
        if mouse_check_button(1)
            draw_set_alpha(.8)
        else
            draw_set_alpha(.4)
        draw_rectangle(global.GUI_x[i] - global.GUI_w[i] / 2,
                global.GUI_y[i] - global.GUI_h[i] / 2 , 
                global.GUI_x[i] + global.GUI_w[i] / 2 ,
                global.GUI_y[i] + global.GUI_h[i] / 2 , 0)
        draw_set_alpha(1)
        }
    }

