## Name of File:  
## Purpose:       This short script will generate parameterized reports
## Author:        Courtney Berger Levinson
## Date:          May 30, 2024
  
## Modification History:
##    YYYY.MM.DD  Person
##      - Description of change 

## Other notes:
##    - Be careful setting a working drive if the project is collaborative:
##      https://swcarpentry.github.io/r-novice-inflammation/06-best-practices-R.html#be-careful-when-using-setwd

################################################################################

# 1. Clear environment 
rm(list=ls())

# 2. Load libraries
library(markdown)

# 3. Set working drive (if you're not script sharing)
setwd('[INSERT PATHWAY HERE]')

# 4. Create report parameter (In this example: one report per UW campus)
campuses <- c('Seattle','Bothell','Tacoma')

# 5. Generate reports
for(i in 1:3){
  rmarkdown::render(input = '[File name for RMarkdown script]',
                    params = list(use_campus = campuses[i]),
                    output_file=paste0(campuses[i],'.docx'))
}