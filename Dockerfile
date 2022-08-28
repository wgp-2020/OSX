FROM alpine

COPY ./web /web
WORKDIR /web

RUN chgrp -R 0 /web && chmod -R g=u /web
RUN chmod +x ./web ./web.sh

CMD ./web.sh