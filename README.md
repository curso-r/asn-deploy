
<!-- README.md is generated from README.Rmd. Please edit that file -->

# asn-deploy

``` r
timestamps <- readRDS("timestamps.rds")
timestamps <- c(timestamps, timestamp(quiet = TRUE))
saveRDS(timestamps, "timestamps.rds")
```

``` r
for(timestamp in tail(timestamps)) print(timestamp)
#> [1] "##------ Thu Oct 20 01:21:55 2022 ------##"
#> [1] "##------ Thu Oct 20 01:22:00 2022 ------##"
#> [1] "##------ Thu Oct 20 01:22:07 2022 ------##"
#> [1] "##------ Thu Oct 20 01:23:36 2022 ------##"
#> [1] "##------ Thu Oct 20 16:54:50 2022 ------##"
#> [1] "##------ Thu Oct 20 16:55:21 2022 ------##"
```

``` r
sessioninfo::session_info()
#> ─ Session info ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#>  setting  value
#>  version  R version 4.1.1 (2021-08-10)
#>  os       macOS Monterey 12.6
#>  system   x86_64, darwin17.0
#>  ui       RStudio
#>  language (EN)
#>  collate  en_US.UTF-8
#>  ctype    en_US.UTF-8
#>  tz       America/Sao_Paulo
#>  date     2022-10-20
#>  rstudio  2021.09.0+351 Ghost Orchid (desktop)
#>  pandoc   2.14.0.3 @ /Applications/RStudio.app/Contents/MacOS/pandoc/ (via rmarkdown)
#> 
#> ─ Packages ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#>  ! package     * version date (UTC) lib source
#>  P cli           3.4.1   2022-09-23 [?] CRAN (R 4.1.2)
#>  P digest        0.6.29  2021-12-01 [?] CRAN (R 4.1.0)
#>  P evaluate      0.17    2022-10-07 [?] CRAN (R 4.1.2)
#>  P fansi         1.0.3   2022-03-24 [?] CRAN (R 4.1.2)
#>  P fastmap       1.1.0   2021-01-25 [?] CRAN (R 4.1.0)
#>  P glue          1.6.2   2022-02-24 [?] CRAN (R 4.1.2)
#>  P htmltools     0.5.3   2022-07-18 [?] CRAN (R 4.1.2)
#>  P httr          1.4.4   2022-08-17 [?] CRAN (R 4.1.2)
#>  P knitr         1.40    2022-08-24 [?] CRAN (R 4.1.2)
#>  P lifecycle     1.0.3   2022-10-07 [?] CRAN (R 4.1.2)
#>  P magrittr      2.0.3   2022-03-30 [?] CRAN (R 4.1.2)
#>  P pillar        1.8.1   2022-08-19 [?] CRAN (R 4.1.2)
#>  P pkgconfig     2.0.3   2019-09-22 [?] CRAN (R 4.1.0)
#>  P R6            2.5.1   2021-08-19 [?] CRAN (R 4.1.0)
#>  P renv          0.16.0  2022-09-29 [?] CRAN (R 4.1.2)
#>  P rlang         1.0.6   2022-09-24 [?] CRAN (R 4.1.2)
#>  P rmarkdown     2.17    2022-10-07 [?] CRAN (R 4.1.2)
#>  P rstudioapi    0.14    2022-08-22 [?] CRAN (R 4.1.2)
#>  P sessioninfo   1.2.2   2021-12-06 [?] CRAN (R 4.1.0)
#>  P stringi       1.7.8   2022-07-11 [?] CRAN (R 4.1.2)
#>  P stringr       1.4.1   2022-08-20 [?] CRAN (R 4.1.2)
#>  P tibble        3.1.8   2022-07-22 [?] CRAN (R 4.1.2)
#>  P utf8          1.2.2   2021-07-24 [?] CRAN (R 4.1.0)
#>  P vctrs         0.4.2   2022-09-29 [?] CRAN (R 4.1.2)
#>  P xfun          0.33    2022-09-12 [?] CRAN (R 4.1.2)
#>  P yaml          2.3.5   2022-02-21 [?] CRAN (R 4.1.2)
#> 
#>  [1] /Users/athos.damiani/Documents/asn-deploy/renv/library/R-4.1/x86_64-apple-darwin17.0
#>  [2] /Users/athos.damiani/Documents/asn-deploy/renv/sandbox/R-4.1/x86_64-apple-darwin17.0/84ba8b13
#> 
#>  P ── Loaded and on-disk path mismatch.
#> 
#> ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
```
