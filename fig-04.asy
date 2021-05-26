import graph;
size(6cm);
real xmin = -0.25, xmax = 0.25, ymin = -0.25, ymax = 0.25; 
pen cqcqcq = rgb(0.7529411764705882,0.7529411764705882,0.7529411764705882); 
 
/* draw grid of horizontal/vertical lines */
pen gridstyle = linewidth(0.7) + cqcqcq; real gridx = 0.125, gridy = 0.125; /* grid intervals */
for(real i = ceil(xmin/gridx)*gridx; i <= floor(xmax/gridx)*gridx; i += gridx)
 draw((i,ymin)--(i,ymax), gridstyle);
for(real i = ceil(ymin/gridy)*gridy; i <= floor(ymax/gridy)*gridy; i += gridy)
 draw((xmin,i)--(xmax,i), gridstyle);
 /* end grid */ 

Label laxis; laxis.p = fontsize(10); 
yaxis(ymin, ymax, EndArrow(6), above = true);
xaxis(xmin, xmax, EndArrow(6), above = true);


real f1 (real x) {return x*(1-x)^(1/2);} 
real f2 (real x) {return -x*(1-x)^(1/2);} 
draw(graph(f1,xmin,xmax), linewidth(1) + rgb(0,163,108)); 
draw(graph(f2,xmin,xmax), linewidth(1) + rgb(65,105,225)); 
 /* dots and labels */
dot((0,0));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle); 
 /* end of picture */
