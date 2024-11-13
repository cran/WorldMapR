## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, warning = FALSE---------------------------------------------------
library(WorldMapR)

## -----------------------------------------------------------------------------
head(WorldMapR::testdata1)
dim(testdata1)

head(testdata1b)
dim(testdata1b)

head(testdata1c)
dim(testdata1c)

## ---- fig.width=7, fig.height=5, fig.retina=3---------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100))

## ---- eval=FALSE--------------------------------------------------------------
#  worldplot(data = testdata1,
#            ColName = "IntVal",
#            CountryName = "name",
#            CountryNameType = "name",
#            rangeVal = c(0,100))

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100),
          latitude = c(-40,40), longitude = c(-17,50))

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100),
          latitude = c(-40,40), longitude = c(-17,50),
          annote = TRUE)

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100),
          latitude = c(-40,40), longitude = c(-17,50),
          annote = TRUE,
          palette_option = "A")

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplotCat(data = testdata1b,
             ColName = "VCat",
             CountryName = "Cshort",
             CountryNameType = "isoa2",
             annote = FALSE)

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------

colours <- c("#C3E2EA", "#58C0D0", "#256C91")

worldplotCat(data = testdata1c,
             ColName = "ValCat",
             CountryName = "iso_a2",
             CountryNameType = "isoa2",
             palette_option = colours ,
             Categories = c("Low", "Average", "High"),
             legendTitle = "CAT",
             latitude = c(30,72), longitude = c(-15,40),
             annote = TRUE)

## ----fig.width=7, fig.height=5, fig.retina=3, eval=F--------------------------
#  worldplotCat(data = testdata1c,
#               ColName = "ValCat",
#               CountryName = "iso_a2",
#               CountryNameType = "isoa2",
#               palette_option = c("#C3E2EA", "#58C0D0", "#256C91"),
#               Categories = c("Low", "Average", "High"),
#               legendTitle = "CAT",
#               latitude = c(5450000, 1000000), longitude = c(2500000, 6900000),
#               crs = 3035, annote = TRUE,
#               na.as.category = F)

## ---- eval=FALSE--------------------------------------------------------------
#  figure1 <- worldplot(data = testdata1,
#                       ColName = "IntVal",
#                       CountryName = "name",
#                       CountryNameType = "name",
#                       rangeVal = c(0,100))
#  
#  tiff(filename =  paste(tempdir(), "\\figure.tiff"))
#  
#  figure1
#  
#  dev.off()
#  

