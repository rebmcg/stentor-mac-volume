# stentor-mac-volume
Calculate the volume of a Stentor coeruleus macronucleus from a 2D brightfield image

Get FIJI here: https://imagej.net/software/fiji/downloads
Get Affinity Designer here: https://affinity.serif.com/en-us/designer/

Create the following folders:
•	Original Images
•	Outlines
•	Binary
•	Horizontal
•	Python

Original Image to Outline
1.	Load original image into Affinity Designer
2.	Set to pixel mode
3.	Create a new pixel layer
4.	Set tool to paintbrush, set size to 4 pixels, set color to red
5.	Zoom in twice to make tracing easier
6.	Trace the nucleus outline using the brush on the new pixel layer
7.	Uncheck the background (original image) layer
8.	Make sure there are no gaps in the outline
9.	Export the outline as a .png file with transparent background
10.	Save the outline file in the Outlines folder

Outline to Binary
1.	In FIJI, load the outline_to_binary.ijm macro
2.	Set the save path to save the resulting image into your Binary Folder
3.	Use the paint bucket to fill the background of the nucleus to black
4.	Check for gaps in the outline, the goal is for all the nodes to be white on black background.
5.	Run the macro

Binary to Horizontal
1.	Load the outline image into Affinity Designer
2.	Set to Pixel Mode
3.	Select the polygonal lasso tool
4.	Use the lasso tool to select a macronuclear node
5.	Copy, delete, then paste the selection to make it into its own layer
6.	Rotate the selection so the long axis of the node is horizontal
7.	Repeat for all the nodes in the image
8.	Export the image as a .png file and save it into your Horizontal folder

Horizontal to Python
1.	In FIJI, load the horizontal_to_python.ijm macro
2.	Alter the save path to your Python Folder
3.	Load your Horizontal Image into FIJI
4.	Use the rectangle tool to encompass the entire macronucleus – this will be used by the macro to crop excess empty space from the image 
5.	Run the macro

Python Volume Analysis
1.	Open the jupyter notebook 2D_to_3D_macs_volume_calculation.ipynb
2.	Set the filepath to retrieve your image from your Python Folder
3.	Set the pixel to micrometer conversion factor
4.	Run the notebook

Repeat this procedure for each timepoint in your experiment.

