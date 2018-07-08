//draw_text_outlined(x, y, outline color, string color, string, thickness)  
var xx,yy,thickness,rep;  
xx = argument[0];  
yy = argument[1];  
thickness = argument[5];
rep= 0;

//Outline  
draw_set_color(argument[2]);  
for(rep=0;rep<=thickness;rep++){
draw_text(xx+rep, yy+rep, argument[4]);  
draw_text(xx-rep, yy-rep, argument[4]);  
draw_text(xx,		yy+rep, argument[4]);  
draw_text(xx+rep, yy,	  argument[4]);  
draw_text(xx,		yy-rep, argument[4]);  
draw_text(xx-rep, yy,	  argument[4]);  
draw_text(xx-rep, yy+rep, argument[4]);  
draw_text(xx+rep, yy-rep, argument[4]);  
}

//Text  
draw_set_color(argument[3]);  
draw_text(xx, yy, argument[4]);  