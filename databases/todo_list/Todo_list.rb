require 'sqlite3'

# create a database to store the list of things to do 
db = SQLite3::Database.new("todolist.db")
db.results_as_hash = true

# create a table in the database 
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS todolist (
	id INTEGER PRIMARY KEY,
	to_do VARCHAR(255),
	notes VARCHAR(255),
	quit BOOLEAN
	)
SQL

