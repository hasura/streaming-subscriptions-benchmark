POSTGRES_STR='<YOUR POSTGRES CONNECTION STRING>'

while true; do
    psql $POSTGRES_STR < insert_messages.sql;
    sleep 1;
done
