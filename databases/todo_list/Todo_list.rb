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


puts "\n To Do List: \n

1: Add a task
2: Remove a task
3: Mark as completed
4: Show entire list 
5: Show finished tasks
6: Show unfinished tasks
7: Clear list"

valid_input = false
until valid_input
	puts "\nInput a number between 1 to 7, followed by the enter key to begin your list or type 'exit'"
	input = gets.chomp
	if input == "exit"
		valid_input = true
	elsif input == "1"
		puts "To do list: "
		to_do = gets.chomp
		puts "Notes: "
		notes = gets.chomp
		add_list(db, table_cmd, to_do, notes)
		puts "\nFull list: "
		print_list(db)
	elsif input == "2"
		puts "\nWhich item do you want to delete?"
		puts "\n Current list:"
		print_list(db)
		puts "\nEnter the number, followed by 'Enter' to delete the task from the list: "
		id = gets.chomp.to_i
		delete(db, delete_cmd, id)
		puts "\nNew list:"
		print_list(db)
	elsif input == "3"
		puts "\nWhich item did you complete?"
		puts "\n Current List:"
		print_list(db)
		puts "\nEnter the number, followed by 'Enter' to update the task to 'finished': "
		id = gets.chomp.to_i
		update(db, update_cmd, id)
		puts "\n New list:"
		print_list(db)
	elsif input == "4"
		puts "\n Full list:"
		print_list(db)
	elsif input == "5"
		puts "\nUnfinished tasks:"
		p_unfinished(db)
	elsif input == "6"
		puts "\nFinished tasks:"
		p_finished(db)
	elsif input == "7"
		puts "\nCleared list"
		puts "\n Full list:"
		delete_finished(db, delete_finished_cmd)
		print_list(db)	
	else
		puts "\nUSER'S INPUT INVALID."
	end
end


