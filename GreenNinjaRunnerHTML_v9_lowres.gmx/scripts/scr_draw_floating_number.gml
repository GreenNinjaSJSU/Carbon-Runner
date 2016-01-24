draw_set_alpha(1)
//draw_set_color(c)
//draw_text_outlined(x,y,text,c_black,c)

//if a > 0
//x1 = view_xview[0] + view_wview[0]/2 + (1 / (a/3))
//view_xview[0] - view_wview[0]/4 + view_wview[0]*(1-a)*1.5
//x1,view_yview[0]+view_hview[0]-32
draw_text_outlined(x,y,text,c_black,c)
a-=.01
if a<=0 
instance_destroy()

draw_set_alpha(1)

depth++
