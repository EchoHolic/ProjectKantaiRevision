/// @function draw_ring(x, y, radius, thickness, maxsegments, segments, startangle, totalangle, direction, color)
//adapted from @theupgradezone's tutorial; my trigometry is shit.
//direction = 1 (Anti-clockwise), -1 (Clockwise)
var anglechange,i,ax,ay,bx,by,cx,cy,dx,dy;
anglechange = (argument7/argument4)*(pi/180)
i = argument6*(pi/180)

ax = argument0+(cos(i)*argument2)
ay = argument1-(sin(i)*argument2)

bx = argument0+(cos(i)*(argument2+argument3))
by = argument1-(sin(i)*(argument2+argument3))

draw_set_color(argument9);
draw_primitive_begin(pr_trianglelist);
repeat(argument5) {
i += argument8 * anglechange

cx = argument0+(cos(i)*argument2)
cy = argument1-(sin(i)*argument2)

dx = argument0+(cos(i)*(argument2+argument3))
dy = argument1-(sin(i)*(argument2+argument3))


draw_vertex(ax,ay);
draw_vertex(bx,by);
draw_vertex(dx,dy);

draw_vertex(ax,ay);
draw_vertex(cx,cy);
draw_vertex(dx,dy);


ax = cx
ay = cy

bx = dx
by = dy
}
draw_primitive_end();