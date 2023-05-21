run("8-bit");
run("Invert");
run("Gaussian Blur...", "sigma=2");
setAutoThreshold("Default");
//run("Threshold...");
//setThreshold(0, 90);
setOption("BlackBackground", true);
run("Convert to Mask");
name=getInfo("image.filename")
saveAs("PNG", "/Users/rebeccamcgillivary/Desktop/Stentor Mac Cycle Analysis/201029_macCycle_9/Binary/"+name+"");
close();