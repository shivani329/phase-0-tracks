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


table_cmd = <<-SQL
	INSERT INTO todolist (to_do, notes, quit) VALUES (?,?, 0)
SQL

delete_cmd = <<-SQL
	DELETE FROM todolist WHERE id = ?
SQL

delete_finished_cmd = <<-SQL
	DELETE FROM todolist WHERE quit = 1
SQL

update_cmd = <<-SQL
	UPDATE todolist SET quit = 1 WHERE id = ?
SQL

drop_cmd = <<-SQL
	DROP TABLE todolist
SQL

