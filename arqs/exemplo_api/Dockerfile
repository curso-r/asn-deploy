FROM rstudio/plumber

COPY exemplo_api.R /
COPY run_api.R /

EXPOSE 8000

CMD ["Rscript", "run_api.R"]
