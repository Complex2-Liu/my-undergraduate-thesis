import graph;
size(8cm);
real labelscalefactor = 0.25; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */ 
pen dotstyle = black; /* point style */ 

draw(circle((0,0), 1), linewidth(1)); 
draw((0,0)--(1,0), dashed);
draw(0.7*dir(-50)..0.6*dir(-25)..(0.5,0), blue);
draw((0.5,0)..0.4*dir(30)..0.3*dir(60), arrow=Arrow(TeXHead), red);


dot((0.,0.));

label("$[0,\rho)$", 0.3*dir(0), S*1.5);
label("$D$", 0.5*dir(135));
label("$y_1(x)$", 0.7*dir(-45), E, blue);
label("$y_2(x)$", 0.4*dir(30), NE, red);
