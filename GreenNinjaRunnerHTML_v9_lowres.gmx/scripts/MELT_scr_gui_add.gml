///scr_gui_add(x,y,w,h)

global.GUI_x[global.GUIs] = argument0
global.GUI_y[global.GUIs] = argument1
global.GUI_w[global.GUIs] = argument2
global.GUI_h[global.GUIs] = argument3
global.GUI_type[global.GUIs] = ""
global.GUI_text[global.GUIs] = "default text"
global.GUI_input_text[global.GUIs] = ""
global.GUI_deleted[global.GUIs] = 0
global.GUI_spr[global.GUIs] = -1
global.GUI_script[global.GUIs] = -1

global.GUI_value[global.GUIs] = 0
global.GUI_string[global.GUIs] = ""

global.GUI_halign[global.GUIs] = fa_center

global.GUIs++
return global.GUIs-1;
