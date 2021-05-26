import graph;
size(6cm);
real labelscalefactor = 0.25; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */ 
pen dotstyle = black; /* point style */ 


 /* draw figures */
draw(circle((0,0), 1), linewidth(1)); 
draw(dir(45)--dir(-135), linewidth(1.)); 
draw(dir(135)--dir(-45), linewidth(1.));
draw(dir(0)--dir(180), linewidth(1.)); 
draw(dir(90)--dir(270), linewidth(1.));

 /* dots and labels */
dot((0.,0.));
dot(dir(0));
dot(dir(45));
dot(dir(90));
dot(dir(135));
dot(dir(180));
dot(dir(-45));
dot(dir(-90));
dot(dir(-135));
label("$1$", 0.5*dir(22.5));
label("$2$", 0.5*dir(22.5+45));
label("$3$", 0.5*dir(22.5+45*2));
label("$4$", 0.5*dir(22.5+45*3));
label("$5$", 0.5*dir(22.5+45*4));
label("$6$", 0.5*dir(22.5+45*5));
label("$7$", 0.5*dir(22.5+45*6));
label("$8$", 0.5*dir(22.5+45*7)); 
 /* end of picture */
