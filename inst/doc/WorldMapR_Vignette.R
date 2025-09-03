## ----include = FALSE----------------------------------------------------------
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

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100))

## ----eval=FALSE---------------------------------------------------------------
# worldplot(data = testdata1,
#           ColName = "IntVal",
#           CountryName = "name",
#           CountryNameType = "name",
#           rangeVal = c(0,100))

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100),
          latitude = c(-40,40), longitude = c(-17,53))

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100),
          latitude = c(-40,40), longitude = c(-17,53),
          annote = TRUE)

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100),
          latitude = c(-40,40), longitude = c(-17,53),
          annote = TRUE,
          palette_option = "A")

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100),
          latitude = c(-40,40), longitude = c(-17,53),
          annote = TRUE,
          palette_option = c("#00A600", "#63C600", "#E6E600", "#E9BD3A", "#ECB176", "#EFC2B3"))

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplotCat(data = testdata1b,
             ColName = "VCat",
             CountryName = "Cshort")

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplotCat(data = testdata1c,
             ColName = "ValCat",
             CountryName = "iso_a2",
             CountryNameType = "isoa2",
             palette_option = c("#C3E2EA", "#58C0D0", "#256C91"),
             Categories = c("Low", "Average", "High"),
             legendTitle = "CAT",
             latitude = c(30,72), longitude = c(-15,42),
             annote = TRUE)

## ----fig.width=7, fig.height=5, fig.retina=3, eval=TRUE-----------------------
worldplotCat(data = testdata1c,
             ColName = "ValCat",
             CountryName = "iso_a2",
             CountryNameType = "isoa2",
             palette_option = c("#C3E2EA", "#58C0D0", "#256C91"),
             Categories = c("Low", "Average", "High"),
             legendTitle = "CAT",
             annote = TRUE,  na.as.category = F,
             crs = 3035,
             latitude = c(30, 66), longitude = c(-13, 55.5),
             transform_limits = TRUE)

## ----fig.width=7, fig.height=5, fig.retina=3----------------------------------
worldplot(data = testdata1,
          ColName = "IntVal",
          CountryName = "countrycode",
          rangeVal = c(0,100),
          crs = 3857,
          longitude = c(-180, 180), latitude = c(-85, 85))

## ----eval=FALSE---------------------------------------------------------------
# figure1 <- worldplot(data = testdata1,
#                      ColName = "IntVal",
#                      CountryName = "name",
#                      CountryNameType = "name",
#                      rangeVal = c(0,100))
# 
# tiff(filename =  paste(tempdir(), "/figure.tiff"))
# 
# figure1
# 
# dev.off()
# 

## ----eval=FALSE---------------------------------------------------------------
# # create the map
# empty_editable_map(lon = c(-15, 40), lat = c(20, 65), crs = 4326)
# 
# # save it
# export::graph2ppt(file ="editable_map15.pptx", width = 7, height = 4)

