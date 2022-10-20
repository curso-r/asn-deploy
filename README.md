
<!-- README.md is generated from README.Rmd. Please edit that file -->

# asn-deploy

``` r
timestamps <- readRDS("timestamps.rds")
timestamps <- c(timestamps, timestamp(quiet = TRUE))
saveRDS(timestamps, "timestamps.rds")
```

``` r
for(timestamp in tail(timestamps)) print(timestamp)
#> [1] "##------ Thu Oct 20 01:22:00 2022 ------##"
#> [1] "##------ Thu Oct 20 01:22:07 2022 ------##"
#> [1] "##------ Thu Oct 20 01:23:36 2022 ------##"
#> [1] "##------ Thu Oct 20 16:54:50 2022 ------##"
#> [1] "##------ Thu Oct 20 16:55:21 2022 ------##"
#> [1] "##------ Thu Oct 20 20:45:29 2022 ------##"
```

``` r
sessioninfo::session_info()
#> ─ Session info ───────────────────────────────────────────────────────────────
#>  setting  value
#>  version  R version 4.2.1 (2022-06-23)
#>  os       Ubuntu 20.04.5 LTS
#>  system   x86_64, linux-gnu
#>  ui       X11
#>  language (EN)
#>  collate  C.UTF-8
#>  ctype    C.UTF-8
#>  tz       UTC
#>  date     2022-10-20
#>  pandoc   2.14.2 @ /usr/bin/ (via rmarkdown)
#> 
#> ─ Packages ───────────────────────────────────────────────────────────────────
#>  ! package     * version date (UTC) lib source
#>  P cli           3.4.1   2022-09-23 [?] CRAN (R 4.2.1)
#>  P digest        0.6.30  2022-10-18 [?] CRAN (R 4.2.1)
#>  P evaluate      0.17    2022-10-07 [?] CRAN (R 4.2.1)
#>  P fastmap       1.1.0   2021-01-25 [?] CRAN (R 4.2.1)
#>  P htmltools     0.5.3   2022-07-18 [?] CRAN (R 4.2.1)
#>  P knitr         1.40    2022-08-24 [?] CRAN (R 4.2.1)
#>  P magrittr      2.0.3   2022-03-30 [?] CRAN (R 4.2.1)
#>    renv          0.16.0  2022-09-29 [1] CRAN (R 4.2.1)
#>  P rlang         1.0.6   2022-09-24 [?] CRAN (R 4.2.1)
#>  P rmarkdown     2.17    2022-10-07 [?] CRAN (R 4.2.1)
#>  P sessioninfo   1.2.2   2021-12-06 [?] CRAN (R 4.2.1)
#>  P stringi       1.7.8   2022-07-11 [?] CRAN (R 4.2.1)
#>  P stringr       1.4.1   2022-08-20 [?] CRAN (R 4.2.1)
#>  P xfun          0.34    2022-10-18 [?] CRAN (R 4.2.1)
#>  P yaml          2.3.6   2022-10-18 [?] CRAN (R 4.2.1)
#> 
#>  [1] /home/runner/work/asn-deploy/asn-deploy/renv/library/R-4.2/x86_64-pc-linux-gnu
#>  [2] /home/runner/work/asn-deploy/asn-deploy/renv/sandbox/R-4.2/x86_64-pc-linux-gnu/6e5b3dc8
#> 
#>  P ── Loaded and on-disk path mismatch.
#> 
#> ──────────────────────────────────────────────────────────────────────────────
```
