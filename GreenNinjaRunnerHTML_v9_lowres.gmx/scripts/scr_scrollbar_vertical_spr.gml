///scr_scrollbar_vertical_spr(spr,x,y,w,h,var,maxval,minval,scroll_sl)
//                        0   1 2 3 4  5   6     7       8        
temp_spr = argument0
temp_x = argument1
temp_y = argument2
temp_w = argument3
temp_h = argument4
temp_var = argument5
temp_max = argument6
temp_min = argument7
temp_sl = argument8

barsize = 32
a1 = .2
a2 = .4
c2 = c_black

yorig = 0

mx = window_mouse_get_x()
my = window_mouse_get_y()

range = temp_max - temp_min

y1 = temp_y - temp_h / 2 + ((temp_var - temp_min) / range * temp_h) - barsize //temp_x-(temp_w/barsize)-temp_w/2+(temp_w/barsize)+temp_var/temp_max*(temp_w-(temp_w/barsize))
x1 = temp_x - temp_w / 2 + 1
y2 = temp_y - temp_h / 2 + ((temp_var - temp_min) / range * temp_h) + barsize //temp_x+temp_w/barsize-temp_w/2+(temp_w/barsize)+temp_var/temp_max*(temp_w-(temp_w/barsize))
x2 = temp_x + temp_w / 2 - 1

//temp_x-temp_w/2
//temp_x+temp_w/2
//if inregion(mx,my,temp_x - temp_w / 2 - barsize,y1,temp_x + temp_w / 2 + barsize,y2,0)
if inregion(mx,my,x1,y1 - temp_h / 2 - barsize,x2,temp_y + temp_h / 2 + barsize,0)
//if inregion(mx,my,x1,y1,x2,y2)
    {
    if mouse_check_button_pressed(1)
        {
        scroll_sl = temp_sl
        if inregion(mx,my,x1,y1,x2,y2,0)
        yorig = my - (y1 + y2)/2
        else
        yorig = 0
        }
    }

if scroll_sl = temp_sl
    {
    /*
    execute_string(argument4+"=(mx-temp_x)
    if "+argument4+">temp_w/2-barsize "+argument4+"=temp_w/2-barsize
    if "+argument4+"<-temp_w/2+barsize "+argument4+"=-temp_w/2+barsize
    ") ///
    */
    if my < temp_y - temp_h / 2
        {
        temp_var = temp_min
        }
    else
    if my > temp_y + temp_h / 2
        {
        temp_var = temp_max
        }
    else
        {
        temp_pos = ((my - yorig - temp_y) + temp_h / 2) / temp_h * range + temp_min
        temp_var = round(temp_pos)
        }
    if temp_var < temp_min temp_var = temp_min
    if temp_var > temp_max temp_var = temp_max
    
    //temp_pos = (mx - temp_x) / temp_w
    
    //temp_var = temp_pos * 16 //(temp_pos - temp_x) / temp_w * range + temp_min
    //scrollbar_pos = 
    a1 = .4
    c2 = c_blue
    if mouse_check_button_released(1)
        {
        scroll_sl=-1
        }
    }
else 
    {
    a1=.3
    c2=c_aqua
    }

    //BACKGROUND
    draw_set_alpha(a1)
    draw_set_color(c_dkgray)
    //draw_rectangle(temp_x-temp_w/2-barsize,temp_y-temp_h/2,temp_x+temp_w/2+barsize,temp_y+temp_h/2,0)
    draw_rectangle(temp_x-temp_w/2,temp_y-temp_h/2-barsize,temp_x+temp_w/2,temp_y+temp_h/2+barsize,0)
    
    //draw_set_color(c_aqua)
    //draw_set_alpha(a2)
    //draw_rectangle(x1,y1,x2,y2,0)
    
    draw_set_alpha(1)
    //draw_sprite_stretched(spr_tab,0,x1,y1,barsize*2,temp_h)
    button(temp_spr,x1,y1,temp_w,barsize*2,"",-1,0,"")

for (i=-10;i<10;i+=4)
    {
    //draw_line((x1+x2)/2+i,temp_y-temp_h/3,(x1+x2)/2+i,temp_y+temp_h/3)
    draw_line(temp_x-temp_w/3,(y1+y2)/2+i,temp_x+temp_w/3,(y1+y2)/2+i)
    }
/*
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(temp_x,temp_y-temp_h,argument8+": "+string(round(temp_var))) //argument8+' '+string(round(((temp_var+(temp_w)/2-barsize))/(temp_w-barsize*2)*100))+'%'
*/
return temp_var
