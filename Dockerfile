FROM freqtradeorg/freqtrade:develop

USER root
RUN apt-get install gettext-base

USER ftuser
RUN pip install --user honcho psycopg2
COPY run.sh /freqtrade/run.sh
COPY Procfile /freqtrade/Procfile
COPY user_data /freqtrade/user_data

ENTRYPOINT ["./run.sh"]
