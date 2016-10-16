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

def add_list(db, table_cmd, to_do, notes)
	db.execute(table_cmd, [to_do, notes])
end

def delete(db, delete_cmd, id)
	db.execute(delete_cmd, id)
end

def update(db, update_cmd, id)
	db.execute(update_cmd, id)
end

def delete_finished(db, delete_finished_cmd)
	db.execute(delete_finished_cmd)
end

def print_list(db)
	list = db.execute("SELECT * FROM todolist")
	list.each do |todo|
		puts todo["id"].to_s + ": " + todo["to_do"]
		puts "Detail: " + todo["notes"]
		if todo["quit"] == 1
			puts "Status: Completed"
		elsif todo["quit"] == 0
			puts "Status: Incomplete"
		end	
	end
end

def p_unfinished(db)
	list = db.execute("SELECT * FROM todolist WHERE NOT quit")
	list.each do |todo|
		puts todo["id"].to_s + ": " + todo["to_do"]
		puts "Detail: " + todo["notes"]
	end
end

def p_finished(db)
	list = db.execute("SELECT * FROM todolist WHERE quit")
	list.each do |todo|
		puts todo["id"].to_s + ": " + todo["to_do"]
		puts "Detail: " + todo["notes"]
	end
end

db.execute(create_table_cmd)


