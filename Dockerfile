FROM debian:testing

RUN apt-get update && apt-get -y install --no-install-recommends \
  pdfsandwich \
  && rm -rf /var/lib/apt/lists/*

CMD pdfsandwich /pdfs/*.pdf
