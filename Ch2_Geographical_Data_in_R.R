
# Install the required packages -------------------------------------------
#Since I have all these packages already installed, I am commenting them out. But you may run the code, if required!
# install.packages("sf")
# install.packages("terra")
# install.packages("spData")
# install.packages("spDataLarge", repos = "https://nowosad.r-universe.dev")


# Load the packages -------------------------------------------------------

library(sf) #sf (or simple feature) is a way to encode the spatial vector data for R. sf package allows you to access and manipulate the data
library(terra) #this package allows you to work with raster data
library(spData) #loads geographical data
library(spDataLarge) #loads larger geographical data

#what is vector and raster?
#vector: points, lines and polygons
#divides the surface into chunks (~ pixels) and mostly used for imaging

class(world)

names(world) #check the geom column, it contains the info on coordinates of all the polygons. It is sticky

head(world)
head(world["geom"])


