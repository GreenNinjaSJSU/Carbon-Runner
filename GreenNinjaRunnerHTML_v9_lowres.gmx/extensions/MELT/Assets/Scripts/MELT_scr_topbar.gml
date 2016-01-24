w = 96

buttons = 0

scr_add_button("gui_button")
scr_add_button("gui_buttontab")
scr_add_button("gui_checkbox")
scr_add_button("gui_input")
scr_add_button("gui_text")
scr_add_button("gui_hscroll")
scr_add_button("gui_vscroll")
scr_add_button("gui_sprite")
scr_add_button("gui_background")

draw_set_alpha(1)

bx = 0
by = 0
for(i=0 ; i < buttons ; i++)
    {
    if MELT_drawButton(vx+w/2+bx,vy-32+(70+by)*dev_pos + 8,w,64-24,string_replace(btext[i] , "gui_" , ""))
        {
        placing = btext[i]
        }
    bx += w
    if bx > room_width / 2
        {
        bx = 0
        by += 64 - 24
        }
    }
    
/*
if MELT_drawButton(vx+w/2,vy-32+70*dev_pos + 8,w,64-24,"button")
    {
    placing = "gui_button"
    }
if MELT_drawButton(vx+w+w/2,vy-32+70*dev_pos + 8,w,64-24,"checkbox")
    {
    placing = "gui_checkbox"
    }
if MELT_drawButton(vx+w*2+w/2,vy-32+70*dev_pos + 8,w,64-24,"input")
    {
    placing = "gui_input"
    }
if MELT_drawButton(vx+w*3+w/2,vy-32+70*dev_pos + 8,w,64-24,"text box")
    {
    placing = "gui_textbox"
    }
