# main.R Documentations ________----------------
# This script runs all R files necessary to reproduce graphs and statistics from MyProjectName


# install.R --------------------
  # INFO:
  #       This will help you run through the packages required for installation
  # INPUT: 
  #       NONE
  
  # OUTPUT:
  #       NONE
  source("scripts/install.R")

# analysis.R ---------
  # INFO:
  #       Example of code run through an r script rather than an Rmd
  # INPUT: 
  #       NONE
  
  # OUTPUT:
  #       NONE

# manuscript.Rmd ---------
# INFO:
#       Generates figures and summary tables for inclusion in the manuscript.
#       Focuses on final visualizations and cleaned outputs for reporting.
# INPUT: 
#       - Cleaned analysis outputs from prior modules (e.g., scores, models)
#       - Summary statistics and table-ready data frames
# OUTPUT:
#       - ggplot(...) + ... (Final publication-ready figures)
#       - gtsummary::tbl_summary(...) or flextable::... (Formatted tables for export)
rmarkdown::render("manuscript.Rmd")


# Module05.Rmd ---------
# INFO:
#       Processes behavioral data from multiple modules to compute summary statistics,
#       perform correlation analyses, and generate various ggplot visualizations.
# INPUT: 
#       - df05: Raw data from Module 05
#       - df05a, df05b, df05c: Subsets or transformations of df05
#       - df05_summarized, df05_cor: Processed summary statistics and correlation matrices
# OUTPUT:
#       - mtrresave("Module05_summary.rds", df05_summarized)
#       - mtrresave("Module05_correlation.rds", df05_cor)
#       - ggplot(df05...) + ... (various plots saved via ggsave or internally in mtrresave)
rmarkdown::render("Module05.Rmd")


# Module06.Rmd ---------
# INFO:
#       Conducts principal component analysis (PCA) and generates PCA biplots
#       based on behavioral data and module scores. Also examines associations
#       between PCA components and external variables.
# INPUT: 
#       - df06: Cleaned dataset containing behavioral variables
#       - pca_data: Matrix or data frame input for PCA
#       - df06_scores: Component scores derived from PCA
#       - df06_loadings: PCA variable loadings
# OUTPUT:
#       - mtrresave("Module06_scores.rds", df06_scores)
#       - mtrresave("Module06_loadings.rds", df06_loadings)
#       - ggplot(df06...) + ... (PCA biplots and correlation plots)
rmarkdown::render("Module06.Rmd")


# Module07.Rmd ---------
# INFO:
#       Fits linear models to test associations between PCA components and outcomes
#       (e.g., symptom scores), including visualization of regression results.
# INPUT: 
#       - df07: Analysis dataset with outcome and predictor variables
#       - model_results: Results from fitted linear models (e.g., lm or lmer objects)
# OUTPUT:
#       - mtrresave("Module07_model_results.rds", model_results)
#       - ggplot(df07...) + ... (Regression result plots)
rmarkdown::render("Module07.Rmd")


# Module08.Rmd ---------
# INFO:
#       Runs exploratory analyses and model comparisons across demographic subgroups
#       (e.g., age or sex) and visualizes any moderation effects.
# INPUT: 
#       - df08: Cleaned and merged dataset including demographic variables
#       - subgroup_models: Results from models run in demographic subgroups
# OUTPUT:
#       - mtrresave("Module08_subgroup_models.rds", subgroup_models)
#       - ggplot(df08...) + ... (Plots showing moderation or subgroup effects)
rmarkdown::render("Module08.Rmd")





