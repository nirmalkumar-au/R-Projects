Report on murders
================
Nirmal Kumar
2020-04-21

## R Markdown

Report of murders based on FBI data

Used the following libraries

``` r
library(tidyverse)
```

    ## Warning: package 'tidyverse' was built under R version 3.6.3

    ## Warning: package 'ggplot2' was built under R version 3.6.3

    ## Warning: package 'tibble' was built under R version 3.6.3

    ## Warning: package 'tidyr' was built under R version 3.6.3

    ## Warning: package 'readr' was built under R version 3.6.3

    ## Warning: package 'purrr' was built under R version 3.6.3

    ## Warning: package 'dplyr' was built under R version 3.6.3

    ## Warning: package 'stringr' was built under R version 3.6.3

    ## Warning: package 'forcats' was built under R version 3.6.3

and loading the wrangled data

``` r
load("rda/murders.rda")
```

## murder rate by state

![](reports_files/figure-gfm/murder_rate_by_state-1.png)<!-- -->
