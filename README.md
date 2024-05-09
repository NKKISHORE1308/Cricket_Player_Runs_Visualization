# Cricket Player Runs Visualization

This Shiny application is designed to visualize the total runs scored by cricket players. It provides a user-friendly interface to upload a CSV file containing player names and their corresponding total runs, and then generates a bar chart to display the total runs for each player.

## Installation

To run this application locally on your machine, follow these steps:

1. Ensure you have R installed on your system. You can download it from [here](https://www.r-project.org/).

2. Install the required R packages by running the following commands in your R console:

```R
if (!require("shiny")) install.packages("shiny")
if (!require("ggplot2")) install.packages("ggplot2")

3. Clone or download this repository to your local machine.
4. Open the R script cricket.R in your preferred R environment (e.g., RStudio).
5. Run the script. This will launch the Shiny application in your default web browser.
##Usage

Once the application is running, follow these steps:

1. Click on the "Choose CSV File" button to select a CSV file containing player names and their total runs. The CSV file should have columns named "Name" and "Total Runs".

2.After selecting the file, the application will automatically generate a bar chart showing the total runs by each player.

3.You can customize the appearance of the bar chart using the options provided in the sidebar.

## File Structure
cricket.R: R script containing the code for the Shiny application.

README.md: This file, providing information about the application and instructions for usage.

##Dependencies

shiny: R package for creating interactive web applications.

ggplot2: R package for data visualization using the grammar of graphics.
