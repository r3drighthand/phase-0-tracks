# PSEUDO

# Music selector that suggests modern classical music based on user's mood.
# There will be a table (hash display?) that will hold data on songs 
# and their respective composers. 

require 'sqlite3'
db = SQLite3::Database.new("musicology.db")
# db.results_as_hash = true



create_table_cmd  = <<-SQL
	CREATE TABLE IF NOT EXISTS musicology(
		id INTEGER PRIMARY KEY,
		song VARCHAR(225),
		composer VARCHAR(225)
	)
SQL 

# Be able to add song/composer key/value pairs?
# Ordered according to mood?
# Alternatively, use arrays/hashes outside of db; use db 
# to log user's mood, data of entry, and weather conditions.
# Could use .sample for external array... what is hash equivalent?