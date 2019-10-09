install.packages("here")


gapminder_csv <- read_csv('.\gapminder_sum.csv')
View(gapminder_csv)
# / in a Mac is \ on Windows. 

read-csv('.test/tes/te/t/gapminder_sum.csv)

#Another way using here 
# This one is platform agnostic.
write_csv(here::here("test", "tes", "te", "t", "gapminder_sum.cs"))
#This one is  platform agnostic because it doesn't have the / or \. 
     
         
         
data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

                      
download.file(url = data_url, destfile = paste('./datasets/',file_name)) 
         
         
                 
#read_csv can directly improt URLs but read_excel requires you to first download it. 
download.file(url = data_url,
                destfile = here::here("test","greatestGivers.xls"))

# Recommendation: Use "basename"

file.rename(
  download.file(url = data_url))

library(readxl)