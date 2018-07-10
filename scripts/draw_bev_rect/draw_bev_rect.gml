/// @function draw_bev_rect(x1,y1,x2,y2, color, bevel length, corner, alpha);
/// @description Draws a rectangle with beveled corners.
//corner = 1 (All corners), 2 (Top Left), 3 (Top Right), 4 (Bottom Left), 5 (Bottom Right)
//         6 (Both Top), 7 (Both Bottom), 8 (Both Left), 9 (Both Right)
var xx,yy,xx2,yy2,color,corner,b_length,alpha;  
xx = argument[0];  
yy = argument[1]; 
xx2 = argument[2];
yy2 = argument[3];
color = argument[4];
b_length = argument[5];
corner = argument[6];
alpha = argument[7];

draw_set_color(color);
draw_set_alpha(alpha);
//The idea is to draw 5 rectangles with 2 triangles each in a cross formation, then draw the bevels dependant on the corner type.
draw_primitive_begin(pr_trianglelist)
draw_vertex(xx+b_length,yy+b_length); //Center rectangle
draw_vertex(xx+b_length,yy2-b_length);
draw_vertex(xx2-b_length,yy+b_length);
draw_vertex(xx2-b_length,yy+b_length);
draw_vertex(xx2-b_length,yy2-b_length);
draw_vertex(xx+b_length,yy2-b_length);

draw_vertex(xx,yy+b_length); //Left rectangle
draw_vertex(xx,yy2-b_length);
draw_vertex(xx+b_length,yy+b_length);
draw_vertex(xx+b_length,yy+b_length);
draw_vertex(xx+b_length,yy2-b_length);
draw_vertex(xx,yy2-b_length);

draw_vertex(xx2-b_length,yy+b_length); //Right rectangle
draw_vertex(xx2-b_length,yy2-b_length);
draw_vertex(xx2,yy+b_length);
draw_vertex(xx2,yy+b_length);
draw_vertex(xx2,yy2-b_length);
draw_vertex(xx2-b_length,yy2-b_length);

draw_vertex(xx+b_length,yy); //Top rectangle
draw_vertex(xx+b_length,yy+b_length);
draw_vertex(xx2-b_length,yy);
draw_vertex(xx2-b_length,yy);
draw_vertex(xx2-b_length,yy+b_length);
draw_vertex(xx+b_length,yy+b_length);

draw_vertex(xx+b_length,yy2-b_length); //Bottom rectangle
draw_vertex(xx+b_length,yy2);
draw_vertex(xx2-b_length,yy2-b_length);
draw_vertex(xx2-b_length,yy2-b_length);
draw_vertex(xx2-b_length,yy2);
draw_vertex(xx+b_length,yy2);

if(corner == 1 || corner == 2 || corner == 6 || corner == 8){ //Top-Left Corner
	draw_vertex(xx,yy+b_length);
	draw_vertex(xx+b_length,yy+b_length);
	draw_vertex(xx+b_length,yy);
}

if(corner == 1 || corner == 3 || corner == 6 || corner == 9){ //Top-Right Corner
	draw_vertex(xx2,yy+b_length);
	draw_vertex(xx2-b_length,yy+b_length);
	draw_vertex(xx2-b_length,yy);
}

if(corner == 1 || corner == 4 || corner == 7 || corner == 8){ //Bottom-Left Corner
	draw_vertex(xx,yy2-b_length);
	draw_vertex(xx+b_length,yy2-b_length);
	draw_vertex(xx+b_length,yy2);
}

if(corner == 1 || corner == 5 || corner == 7 || corner == 9){ //Bottom-Right Corner
	draw_vertex(xx2,yy2-b_length);
	draw_vertex(xx2-b_length,yy2-b_length);
	draw_vertex(xx2-b_length,yy2);
}
if(corner == 3 || corner == 4 || corner == 5 || corner == 7 || corner == 9){	//Top-Left Square
	draw_vertex(xx,yy+b_length);
	draw_vertex(xx+b_length,yy+b_length);
	draw_vertex(xx+b_length,yy);
	draw_vertex(xx,yy);
	draw_vertex(xx,yy+b_length);
	draw_vertex(xx+b_length,yy);
}
if(corner == 2 || corner == 4 || corner == 5 || corner == 7 || corner == 8){ //Top-Right Square
	draw_vertex(xx2,yy+b_length);
	draw_vertex(xx2-b_length,yy+b_length);
	draw_vertex(xx2-b_length,yy);
	draw_vertex(xx2,yy);
	draw_vertex(xx2,yy+b_length);
	draw_vertex(xx2-b_length,yy);
}
if(corner == 2 || corner == 3 || corner == 5 || corner == 6 || corner == 9){ //Bottom-Left Square
	draw_vertex(xx,yy2-b_length);
	draw_vertex(xx+b_length,yy2-b_length);
	draw_vertex(xx+b_length,yy2);
	draw_vertex(xx,yy2);
	draw_vertex(xx,yy2-b_length);
	draw_vertex(xx+b_length,yy2);
}
if(corner == 2 || corner == 3 || corner == 4 || corner == 6 || corner == 8){ //Bottom-Right Square
	draw_vertex(xx2,yy2-b_length);
	draw_vertex(xx2-b_length,yy2-b_length);
	draw_vertex(xx2-b_length,yy2);
	draw_vertex(xx2,yy2);
	draw_vertex(xx2,yy2-b_length);
	draw_vertex(xx2-b_length,yy2);
}
draw_primitive_end();