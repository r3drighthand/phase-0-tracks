
require 'sqlite3'

db = SQLite3::Database.new("music.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    mood VARCHAR(225)
  )
SQL

db.execute(create_table_cmd)

