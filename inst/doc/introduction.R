## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.align = "center", 
  fig.asp = 0.7,
  fig.width = 6,
  out.width = "80%"
)

## ----setup, echo=FALSE, include=FALSE-----------------------------------------
library(ggspatial)
library(sf)
library(sfhotspot)
library(ggplot2)

## ---- echo=FALSE--------------------------------------------------------------
knitr::kable(
  memphis_robberies[1:10, ], 
  caption = "The included `memphis_robberies` dataset"
)

## -----------------------------------------------------------------------------
ggplot(memphis_robberies) + 
  annotation_map_tile(type = "cartolight", zoomin = 0, quiet = TRUE) +
  geom_sf(alpha = 0.1) + 
  theme_minimal()

## -----------------------------------------------------------------------------
point_counts <- hotspot_count(memphis_robberies)

point_counts

## -----------------------------------------------------------------------------
ggplot() +
  annotation_map_tile(type = "cartolight", zoomin = 0, quiet = TRUE) +
  geom_sf(
    mapping = aes(fill = n),
    data = point_counts,
    alpha = 0.75,
    colour = NA
  ) +
  scale_fill_distiller(direction = 1)

## ---- echo=FALSE, include=FALSE-----------------------------------------------
robbery_kde <- memphis_robberies |> 
  st_transform("EPSG:2843") |> 
  hotspot_kde()

## ----echo=FALSE---------------------------------------------------------------
robbery_kde

## -----------------------------------------------------------------------------
ggplot() +
  annotation_map_tile(type = "cartolight", zoomin = 0, quiet = TRUE) +
  geom_sf(
    mapping = aes(fill = kde),
    data = robbery_kde,
    alpha = 0.75,
    colour = NA
  ) +
  scale_fill_distiller(direction = 1)

