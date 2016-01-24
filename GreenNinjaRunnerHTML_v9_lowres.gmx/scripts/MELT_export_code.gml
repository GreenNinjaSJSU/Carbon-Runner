
        //if get_code
            //{
            if global.GUI_type[i] = "gui_button"
            {
            if global.GUI_spr[i] = -1
                {
                code_str += 
                "MELT_drawButton("+string(global.GUI_x[i])+","+string(global.GUI_y[i])+","
                    +string(global.GUI_w[i])+","+string(global.GUI_h[i])+",'"+string(global.GUI_text[i])+"')
"
                }
            else
                {
                code_str +=
                "MELT_button("+string(global.GUI_spr[i])+" , "+string(global.GUI_x[i] - global.GUI_w[i] / 2)+" , 
                    "+string(global.GUI_y[i] - global.GUI_h[i] / 2)+" , "+string(global.GUI_w[i])+","+string(global.GUI_h[i]) 
                    +", '"+string(global.GUI_text[i]) +"', -1 , 0 , '')
"
                }
            }
        else
        if global.GUI_type[i] = "gui_checkbox"
            {
            if global.GUI_spr[i] = -1
                {
                code_str += 
                "checkbox_val = MELT_checkbox(spr_checkbox , "+string(global.GUI_x[i] - global.GUI_w[i] / 2)+" ,"
                     +string(global.GUI_y[i] - global.GUI_h[i] / 2) +","
                    +string(global.GUI_w[i])+","+string(global.GUI_h[i])+" , checkbox_val ," + string(global.GUI_text[i]) + ")
"
                }
            else
                {
                code_str += 
                "checkbox_val = MELT_checkbox("+string(global.GUI_spr[i])+" , "+string(global.GUI_x[i] - global.GUI_w[i] / 2)+" ,"
                     +string(global.GUI_y[i] - global.GUI_h[i] / 2) +","
                    +string(global.GUI_w[i])+","+string(global.GUI_h[i])+" , checkbox_val ," + string(global.GUI_text[i]) + ")
"
                }
            }
        else
        if global.GUI_type[i] = "gui_buttontab"
            {
            if global.GUI_spr[i] = -1
                {
                code_str += 
                "if MELT_button_tab_frozen(spr_tab,"+string(global.GUI_x[i] - global.GUI_w[i] / 2)+" , "+string(global.GUI_y[i] - global.GUI_h[i] / 2)+" , "+
                    string(global.GUI_w[i])+","+string(global.GUI_h[i])+" ,"+string(global.GUI_text[i])+"," +string(-1)+", 0 ,'', tabval, "
                    +string(i)+" ) tabval = i
"
                }
            else
                {
                code_str += 
                "if MELT_button_tab_frozen("+string(global.GUI_spr[i])+" , "+string(global.GUI_x[i] - global.GUI_w[i] / 2)
                    +" , "+string(global.GUI_y[i] - global.GUI_h[i] / 2 ) +","+
                    string(global.GUI_w[i])+","+string(global.GUI_h[i])+","+string(global.GUI_text[i])+", -1, 0 ,'', tabval,"+string(i)+") tabval = i
"
                }
            }
        else
        if global.GUI_type[i] = "gui_text"
            {
            code_str += 
            "draw_set_color(c_black) "+
            "draw_set_alpha(1) "+
            "draw_set_halign(fa_left) "+
            "draw_set_valign(fa_top) "+
            "draw_text("+string(global.GUI_x[i] - global.GUI_w[i] / 2)+" , "+string(global.GUI_y[i] - global.GUI_h[i] / 2)+",'"+string( global.GUI_text[i])+"')"
            }
        else
        if global.GUI_type[i] = "gui_input"
            {
            code_str += 
            "input_string_var = MELT_scr_input("+string(global.GUI_x[i])+","+string(global.GUI_y[i])+","+string(global.GUI_w[i])+","+
                string(global.GUI_h[i])+",input_string_var,"+string(global.GUI_text[i])+",0,"+string(i)+")
"
            }
        else
        if global.GUI_type[i] = "gui_text"
            {
            code_str += 
            "MELT_scr_input("+string(global.GUI_x[i])+","+string(global.GUI_y[i])+","+string(global.GUI_w[i])+","+string(global.GUI_h[i])+",'"+
            global.GUI_input_text[i]+"','"+global.GUI_text[i]+",0,i)"
            }
        else
        if global.GUI_type[i] = "gui_sprite"
            {
            code_str += "draw_sprite("+sprite_get_name(global.GUI_spr[i])+",0,"+string(global.GUI_x[i])+","+string(global.GUI_y[i])+")
"
            }
        else
            {
            draw_set_color(c_white)
            draw_rectangle(global.GUI_x[i] - global.GUI_w[i] / 2,
                global.GUI_y[i] - global.GUI_h[i] / 2 , 
                global.GUI_x[i] + global.GUI_w[i] / 2 ,
                global.GUI_y[i] + global.GUI_h[i] / 2 , 0)
            }
        //code_str += ""
        
        //}   
 
