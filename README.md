# RMeetupPCA
Project containing the presentation, the analysis and the files used on the R Meetup Event performed on 26th of Septemeber 2019.

# Installation

The necessary software for running all the analysis is the following:

* R: The version used for the project was 3.6.1, but any version above 3.0.1+ should work.
* RStudio: The version used for the project was 1.2.1335, but any 1.X version should be fine.

Packages used:

* Tidyverse
* FactoMineR
* factoextra
* ggcorrplot


# Troubleshooting during package installation for Ubuntu users.

Depending on your operative system you may experience some troubles installing the required packages. If you face the following error: 

`ERROR: configuration failed for package ‘curl’`

You must execute in the terminal the following instruction:

`sudo apt install libcurl4-openssl-dev`

