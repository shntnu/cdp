## ------------------------------------------------------------------------
library(magrittr)
library(cdp)

## ------------------------------------------------------------------------
mc_profiles_n30439x812$column.annotations %>% 
  dplyr::glimpse()


## ------------------------------------------------------------------------
mc_profiles_n30439x812$column.annotations %>% 
  dplyr::arrange(plate_name, plate_well) %>%
  dplyr::distinct(plate_name, plate_well) %>% 
  dplyr::count() %>%
  knitr::kable()

## ------------------------------------------------------------------------
mc_profiles_n30439x812$column.annotations %>% 
  dplyr::arrange(plate_name) %>%
  dplyr::distinct(plate_name) %>% 
  dplyr::count() %>%
  knitr::kable()

## ------------------------------------------------------------------------
mc_profiles_n30439x812$column.annotations %>% 
  dplyr::arrange(plate_name) %>%
  dplyr::group_by(plate_name) %>% 
  dplyr::tally() %>%
  knitr::kable()

## ------------------------------------------------------------------------
mc_profiles_n30439x812$column.annotations %>% 
  dplyr::arrange(BROAD_CPD_ID) %>%
  dplyr::distinct(BROAD_CPD_ID) %>% 
  dplyr::count() %>%
  knitr::kable()

## ------------------------------------------------------------------------
mc_profiles_n30439x812$column.annotations %>% 
  dplyr::arrange(BROAD_CPD_ID, pert_dose) %>%
  dplyr::distinct(BROAD_CPD_ID, pert_dose) %>% 
  dplyr::count() %>%
  knitr::kable()

## ------------------------------------------------------------------------
mc_profiles_n30439x812$column.annotations %>% 
  dplyr::arrange(plate_well) %>%
  dplyr::group_by(plate_well) %>% 
  dplyr::tally() %>% 
  dplyr::rename(plate_well_counts = n) %>% 
  dplyr::group_by(plate_well_counts) %>% 
  dplyr::tally() 

## ------------------------------------------------------------------------
mc_profiles_n30439x812$column.annotations %>% 
  dplyr::arrange(BROAD_CPD_ID, pert_dose) %>%
  dplyr::group_by(BROAD_CPD_ID, pert_dose) %>% 
  dplyr::tally() %>% 
  dplyr::rename(BROAD_CPD_ID_pert_dose_counts = n) %>% 
  dplyr::group_by(BROAD_CPD_ID_pert_dose_counts) %>% 
  dplyr::tally() 

