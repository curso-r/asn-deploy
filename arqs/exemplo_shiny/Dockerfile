FROM rocker/shiny:4.0.3

# Instalar bibliotecas para o tidyverse
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  build-essential \
  libcurl4-gnutls-dev \
  libxml2-dev \
  libssl-dev \
  r-cran-curl \
  r-cran-openssl \
  curl \
  gnupg1 \
  r-cran-xml2 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /srv/shiny-server/exemplo_shiny

WORKDIR /srv/shiny-server/exemplo_shiny

# renv
COPY --chown=shiny:shiny renv.lock renv.lock
COPY --chown=shiny:shiny .Rprofile .Rprofile
COPY --chown=shiny:shiny renv/activate.R renv/activate.R
RUN sudo -u shiny R -e 'renv::restore()'

# app
COPY --chown=shiny:shiny app.R app.R

EXPOSE 3838


