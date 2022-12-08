#import image

myurl <- "https://upload.wikimedia.org/wikipedia/commons/5/5d/Penguu_%28Adelie_Penguin%29.png"

# read the png file from device
z <- tempfile()
download.file(myurl,z,mode="wb")
pic <- readPNG(z)
file.remove(z) # cleanup
g <- rasterGrob(pic, interpolate = FALSE)
