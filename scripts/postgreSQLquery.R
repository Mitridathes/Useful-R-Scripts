## Example with dvdrental database from postrgreSQL Tutorial: http://www.postgresqltutorial.com/
## The database must be downloaded from the website and loaded into the postgreSQL database server


## Open connection with database:
con <- dbConnect(PostgreSQL(), user = "user", password = "password",
                 dbname="dvdrental")
## Send query
query <- dbSendQuery(con,
                  "SELECT customer_id, email, first_name FROM customer")
out <- fetch(query)
## Close connection
dbClearResult(query)
dbDisconnect(con)
