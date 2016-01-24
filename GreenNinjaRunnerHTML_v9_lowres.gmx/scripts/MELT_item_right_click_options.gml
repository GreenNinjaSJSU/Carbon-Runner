    
        if waiting_for = i
        {
        if waiting.object_index = MELT_obj_menu
            {
            if waiting.answer > ""
                {
                if waiting.subject = "chooseAlignment"
                    {
                    switch waiting.answer
                        {
                        case "Left":
                            with waiting instance_destroy()
                            global.GUI_halign[i] = fa_left
                        break;
                        
                        case "Right":
                            with waiting instance_destroy()
                            global.GUI_halign[i] = fa_right
                        break;
                        
                        case "Center":
                            with waiting instance_destroy()
                            global.GUI_halign[i] = fa_center
                        break;
                        }
                    with waiting instance_destroy()
                    exit
                    }
                if waiting.subject = "chooseSpriteNodeMenu"
                    {
                    for(j=0 ; j < 300 ; j++)
                        {
                        if sprite_exists(j)
                        if sprite_get_name(j) = waiting.answer
                            {
                            global.GUI_spr[i] = j
                            exit
                            }
                        }
                    with waiting instance_destroy()
                    }
                if waiting.subject = "chooseScriptNodeMenu"
                    {
                    for(j=0 ; j < 300 ; j++)
                        {
                        if script_exists(j)
                        if script_get_name(j) = waiting.answer
                            {
                            global.GUI_script[i] = j
                            with waiting instance_destroy()
                            exit
                            }
                        }
                    }
                if waiting.subject = "primaryNodeMenu"
                switch waiting.answer
                    {
                        
                        case "change text":
                            with waiting instance_destroy()
                            waiting = MELT_scr_show_input("Enter Button Text")
                        break;
                        
                        case "copy":
                            new = MELT_scr_gui_add(mouse_x,mouse_y,global.GUI_w[i],global.GUI_h[i])
                            global.GUI_text[new] = global.GUI_text[i]
                            global.GUI_type[new] = global.GUI_type[i]
                            global.GUI_x[new] = global.GUI_x[i] + global.GUI_w[i] / 2
                            global.GUI_y[new] = global.GUI_y[i] + global.GUI_h[i] / 2
                            global.GUI_spr[new] = global.GUI_spr[i]
                            with waiting instance_destroy()
                        break;
                        
                        case "delete":
                            global.GUI_deleted[i] = 1
                            deleted[num_deleted] = i
                            num_deleted++
                            with waiting instance_destroy()
                        break;
                        
                        case "choose onclick script":
                            tstr = ""
                            for(j=0 ; j < 300 ; j++)
                                {
                                if script_exists(j)
                                    {
                                    tstr += script_get_name(j)+"|"
                                    }
                                }
                            with waiting instance_destroy()
                            waiting = MELT_scr_show_menu(tstr+"cancel","chooseScriptNodeMenu")
                        break;
                        
                        case "change sprite":
                            tstr = ""
                            for(j=0 ; j < 300 ; j++)
                                {
                                if sprite_exists(j)
                                    {
                                    tstr += sprite_get_name(j)+"|"
                                    }
                                }
                            with waiting instance_destroy()
                            waiting = MELT_scr_show_menu(tstr+"cancel","chooseSpriteNodeMenu")
                        break;
                        
                        case "copy code to clipboard":
                            ///button(spr,x,y,w,h,text,bpic,subimg,name)
                            tstr = "button("+sprite_get_name(global.GUI_spr[i])+","+string(global.GUI_x[i] - global.GUI_w[i] / 2)
                                +","+string(global.GUI_y[i] - global.GUI_h[i] / 2)+","+
                                string(global.GUI_w[i])+","+string(global.GUI_h[i])+",'"+global.GUI_text[i]+"',-1,0,'')"
                            clipboard_set_text(tstr)
                            with waiting instance_destroy()
                        break;
                        
                        case "choose alignment":
                            with waiting instance_destroy()
                            tstr = "Left|Center|Right|"
                            waiting = MELT_scr_show_menu(tstr+"cancel","chooseAlignment")
                        break;
                        
                        case "cancel":
                            with waiting instance_destroy()
                        break;
                    }
                }
            }
        else
        if waiting.object_index = MELT_obj_input
            {
            if waiting.answer > ""
                {
                global.GUI_text[i] = waiting.answer
                with waiting instance_destroy()
                }
            }
        }
    
