import contour; import graph;
size(9cm);
real xmin = -7, xmax = 7, ymin = -7, ymax = 7; 
pen cqcqcq = rgb(0.7529411764705882,0.7529411764705882,0.7529411764705882); 
 
/* draw grid of horizontal/vertical lines */
pen gridstyle = linewidth(0.7) + cqcqcq; real gridx = 2., gridy = 2.; /* grid intervals */
for(real i = ceil(xmin/gridx)*gridx; i <= floor(xmax/gridx)*gridx; i += gridx)
 draw((i,ymin)--(i,ymax), gridstyle);
for(real i = ceil(ymin/gridy)*gridy; i <= floor(ymax/gridy)*gridy; i += gridy)
 draw((xmin,i)--(xmax,i), gridstyle);
 /* end grid */ 

Label laxis; laxis.p = fontsize(10); 
yaxis(ymin, ymax, EndArrow(6), above = true);
xaxis(xmin, xmax, EndArrow(6), above = true);


real implicitf1 (real x, real y) { return 1.0*y^2-1.0*x^3; } 
draw(contour(implicitf1, (xmin,ymin), (xmax,ymax), new real[]{0}, 500), linewidth(1)); 
draw((-6,0)--(6,0), linewidth(1.5)+red);
 /* dots and labels */
dot((0,0));
label("$p$", SW*0.5);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle); 
 /* end of picture */
