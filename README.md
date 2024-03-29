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
* psych

# Dataset 

The dataset used in the analysis was obtained through [Datacamp](https://www.datacamp.com) and corresponds to the Humour Style Questionnaire developed by Rod Martin et al. that can be found [here](http://www.humorstyles.com/).  

# Troubleshooting during package installation for Ubuntu users.

As a Ubuntu user, once I had R and RStudio downloaded and installed, I had the following issue during the installation of the `tidyverse` package:

![image](https://github.com/rubengura/RMeetupPCA/blob/master/images/tidyverse_error.png "Click to expand")

In order to solve it, I had to write in the terminal the following instruction:

`sudo apt-get install libssl-dev`

This fixed the problem!
