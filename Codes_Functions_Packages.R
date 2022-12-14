
#packages

library(sf)
library(tmap) 
library(tmaptools)
library(RSQLite)
library(tidyverse)
library(dplyr)
library(maptools)
library(RColorBrewer)
library(classInt)
library(sp)
library(rgeos)
library(tmap)
library(tmaptools)
library(janitor)
library(rgdal)
library(geojsonio)
library(here)
library(spatstat)
library(maptools)
library(geojson)
library(stringr)

#to see the type of data


Datatypelist <- Data.frame %>%
  summarise_all(class)

# to transform a column that has mixed character and numeric, you can add a new collumns just with a numeric version

data.frame <- data.frame %>%
  mutate(code=(as.numeric(name_of_column)))

#acessing a specific row and collumn

data.frame[c(2,4,6)]

dplyr(select(interval))

dplyr and filter()



#combine data

c(2.3.6) means combine(2.3.6)


# find a parttern of a sting

filter(str_detect(column,what_you_want))


#grouping parttern

group_by()
summarise_all()


#conditions

case when is a condition 

for example,   mutate(case_when(bla_bla_bla))


#when you don`t know how to write a function

?name_of_the_function


#Create code column to join files(Joe):
test <- WashingtonGeoJSON %>%
  arrange(., COUNTY) %>%
  mutate(countycode = row_number())
test2 <- countyav %>%
  arrange(., county) %>%
  mutate(countycode = row_number())
test3 <- test %>%
  left_join(test2, by = "countycode")


WashingtonGeoJSON is my shapefile, 'countyav' is my school data


#if I have some problem with some string that i dont undertant, i can use this function. it will list all unique data, so I can check if have some problem

unique(csv_science$County)



PRATICAL 3
------------------------------------------------------
#wk3

#getwd()
#
#
#library(tidyverse)
#library(dplyr)


#csv <- read_csv('flytipping.csv')


##### SOME KEY WORDS
- Ellipsoid (or spheroid) = size of shape of the Earth (3d)
- Datum = contains the point relationship (where the origin (0,0) of the map is) between a Cartesian coordinates (flat surface) and Earth’s surface. They can be local or geocentric (see below). They set the origin, the scale and orientation of the Coordiante Reference System (CRS).
- Local datum = changes the Ellipsoid to align with a certain location on the surface (e.g. BNG that uses the OSGB36 datum). A local datum is anything that isn’t the centre of the Earth.
- Geocentric datum = the centre is equal to the Earth’s centre of gravity (e.g. WGS84).
- Geodetic datum = global datum (see above for datum meaning) for representing features (e.g. points and polygons) on earth
- Geodesy (from which we get Geodetic) = measuring Earth’s shape and features (e.g. gravity field).
- Coordinate reference system (CRS) = Formula that defines how the 2D map (e.g. on your screen or a paper map) relates to the 3D Earth. Sometimes called a spatial Reference System (SRS). It also stores the datum information.












#ZONE ESTATITICS, ZONE IS A POLYGON

# DIR_INFO MEAND DIRECTORY INFORMATION


##3.5.3

#library(tidyverse)
#listfiles<-dir_info("prac3_data/") %>%
# filter(str_detect(path, ".tif")) %>%  ## PATH IS THE COLUMNS
#dplyr::select(path)%>%
#pull()


### RASTER DATA DOSES NOT WORKS WITH TIDYDIVERSE, BECAUSE OF THAT WE USE A NEW PACKAGE : TIDYTERRA, WHCH IS TUDYVERDE FOR RASTA DATA


# access the january layer
#worldclimtemp[[1]]  ### i need to put to brackets ]]]


## the main thing is extrat data into a new data and make spacial



## the key here "extrac" means 


#Aucitytemp2 <- AUcitytemp %>% 
#as_tibble()%>% 
#add_column(Site = site, .before = "Jan") ### the place before january month

###3.6


#Austemp <- Ausoutline %>%
# now crop our temp data to the extent
#crop(worldclimtemp,.)

# plot the output
#plot(Austemp)



###crop take the raster to extent to autralia




#exactAus <- Austemp %>%
#mask(.,Ausoutline, na.rm=TRUE)   ###remove any values


### just return my mask to the exact area and cut out the exact area of australia

# so you have a map for each month




###gg plot is the gammmar of graphics, works em 3 ways. in this case the data set

#library(ggplot2)
# set up the basic histogram
#gghist <- ggplot(exactAusdf,   ## ggplot means ggplot2 too 
#aes(x=Mar)) + ##what you want to plot
geom_histogram(color="black", ### give me a histogram in ggplot, say the colour and fill
               fill="white")+
  labs(title="Ggplot2 histogram of Australian March temperatures", ### labels
       x="Temperature", ### labels
       y="Frequency")   ### labels
# add a vertical line to the hisogram showing mean tempearture
gghist + geom_vline(aes(xintercept=mean(Mar, 
                                        na.rm=TRUE)),  ### gghist is the objects + add a vertical line ( geom_vline)
                    color="blue", 
                    linetype="dashed", 
                    size=1)+
  theme(plot.title = element_text(hjust = 0.5))  # this is to add the vertical line in blue



QUESTIONS 

Question: Are the points clustered or are they random?
  
 questions:  Are these points distributed in a random way or is there some sort of pattern (uniform or clustered)? 
  
  
  
CONFORMING SPATIAL RANDOMNESS

If our p-value is > 0.05 then this indicates that we have CSR and there is no pattern in our points.

If it is < 0.05, this indicates that we do have clustering in our points.

Here our p-value = 0.2594, implying complete spatial randomness


-------------------------------------------------
  
  
SCOPE


data
limitations
assumptions
analysis
some litterature
CRS
NA VALUES



#load the packages




RYPPLEY'K


WHY








TO CLUSTER


WE CAN CHOOSE THE CITY CENTER 
I CAN CHOOSE THE BOROUGH THAT I SEE WITH MORE POINTS


'





