import contour; import graph;
size(9cm);
real xmin = -1.25, xmax = 1.25, ymin = -1.25, ymax = 1.25; 
pen cqcqcq = rgb(0.7529411764705882,0.7529411764705882,0.7529411764705882); 
 
/* draw grid of horizontal/vertical lines */
pen gridstyle = linewidth(0.7) + cqcqcq; real gridx = 0.5, gridy = 0.5; /* grid intervals */
for(real i = ceil(xmin/gridx)*gridx; i <= floor(xmax/gridx)*gridx; i += gridx)
 draw((i,ymin)--(i,ymax), gridstyle);
for(real i = ceil(ymin/gridy)*gridy; i <= floor(ymax/gridy)*gridy; i += gridy)
 draw((xmin,i)--(xmax,i), gridstyle);
 /* end grid */ 

Label laxis; laxis.p = fontsize(10); 
yaxis(ymin, ymax, EndArrow(6), above = true);
xaxis(xmin, xmax, EndArrow(6), above = true);


real implicitf1 (real x, real y) { return 1.0*y^2-1.0*x^2 + x^3; } 
draw(contour(implicitf1, (xmin,ymin), (xmax,ymax), new real[]{0}, 500), linewidth(1)); 
draw((-1,-1)--(1,1), linewidth(1)+dashed+blue);
draw((-1,1)--(1,-1), linewidth(1)+dashed+blue);
 /* dots and labels */
dot((0,0));
label("$p$", dir(180)*0.1);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle); 
 /* end of picture */
