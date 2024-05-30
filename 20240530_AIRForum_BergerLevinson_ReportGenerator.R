## Name of File:  20240530_AIRForum_BergerLevinson_ReportGenerator
## Purpose:       This short script will generate parameterized reports
## Author:        Courtney Berger Levinson
## Date:          May 30, 2024
  
## Modification History:
##    2024.05.30  C. Berger Levinson
##      - Sample mod history entry: Description of change 

## Other notes:
##    - Be careful setting a working drive if the project is collaborative:
##      https://swcarpentry.github.io/r-novice-inflammation/06-best-practices-R.html#be-careful-when-using-setwd

################################################################################

# 1. Clear environment 
rm(list=ls())

# 2. Load libraries
library(markdown)

# 3. Set working drive (if you're not script sharing)
setwd('C:/Users/cberglev/OneDrive - UW/AIR Forum 2024/')

# 4. Create report parameter (In this example: one report per UW campus)
campuses <- c('Seattle','Bothell','Tacoma')

# 5. Generate reports
for(i in 1:3){
  rmarkdown::render(input = 'C:/Users/cberglev/OneDrive - UW/AIR Forum 2024/20240530_AIRForum_BergerLevinson.Rmd',
                    params = list(use_campus = campuses[i]),
                    output_file=paste0(campuses[i],'.docx'))
}
