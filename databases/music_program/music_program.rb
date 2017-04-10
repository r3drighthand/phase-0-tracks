
require 'sqlite3'

db = SQLite3::Database.new("music.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS music(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    mood VARCHAR(225)
  )
SQL

db.execute(create_table_cmd)

def add_user(db, name, age, mood)
	db.execute("INSERT INTO db (name, age, mood) VALUES (?, ?, ?)", [name, age, mood])
end 

# DRIVER CODE
# add_user("Sam", 41, "conflicted")
# add_user("Caitlin", 27, "determined")
# add_user("Johanna", 24, "sad")
# add_user("Haley", 20, "happy")
# add_user("Thomas", 30, "calm")

happy = [ {"Singur"=>"Oskar Schuster"}, {"Debut"=>"Melanie Laurent"}, 
	{"II"=>"Jean-Michel Blais"}, {"Nightingale"=>"Lo Mimieux"}, 
	{"Hers"=>"The Arcadian Wild"}, {"Gizeh"=>"Oskar Schuster"}, {"The Blooming"=>"Einstock"}, 
	{"Almost Idyllic"=>"Sleeping At Last"}, {"I Promise"=>"Alex Kozobolis"}, 
	{"Tokka"=>"Agnes Obel"}, {"Sunday Stroll"=>"Benny Treskow"} ]

sad = [ {"The Path to Highgate"=>"Chad Lawson"}, {"Pensiero Notturno"=>"Fabrizio Paterlini"}, 
	{"Wandering"=>"Dirk Maassen"}, {"A Web of Lies"=>"August Wilhelmsson"}, 
	{"All the Stars Are Out Tonight"=>"Danny Norbury"}, {"A Magnificent Gray"=>"Slow Meadow"}, 
	{"Vladimir's Blues"=>"Max Richter"}, {"Echoes of You"=>"Oneke"}, 
	{"Chord Left"=>"Agnes Obel"}, {"Inevitable Things"=>"Dmitry Evgrafov"} ]

determined = [ {"The Aviators"=>"Helen Jane Long"}, {"La Mer"=>"Dirk Maassen"}, 
	{"183 Times"=>"Greg Haines"}, {"Augenblick"=>"Dirk Maassen"}, {"Airam"=>"Nil Ciuro"}, 
	{"The Approaching Night"=>"Philip Wesley"}, {"Phase One"=>"Gabriel Parker"}, 
	{"Claroscuro"=>"Bruno Sanfilippo"}, {"Delicate Transitions"=>"Gavin Luke"}, 
	{"Explosions in a Four-Chambered Heart"=>"Moon Ate the Dark"} ]

calm = [ {"Norwegian Beauty"=>"Evelyn Stein"}, {"Sugarcane"=>"Ana Olgica"}, 
	{"The Last Hour of Loneliness"=>"Elba"}, {"The Light She Brings"=>"Joep Beving"}, 
	{"Synesthesia"=>"Peter Sandberg"}, {"Romances"=>"Amity Cadet"}, 
	{"Alpine Sketch"=>"Christian Loffler"}, {"Travelling"=>"James Spiteri"}, 
	{"In The Mist"=>"Harry Rosenpal"}, {"Ascend"=>"Shaun Taylor McManus"} ]

conflicted = [ {"Worried Sky"=>"Jean Petri"}, {"Partly Cloudy"=>"Silver Maple"}, 
	{"Unstitch"=>"Anna Rose Carter"}, {"Anthem"=>"Dmitry Evgrafov"}, {"Norrsken"=>"Karin Borg"}, 
	{"Islands"=>"Chad Lawson"}, {"Denouement"=>"Lo Mimieux"}, 
	{"Nocturnal Waltz"=>"Johannes Bornlof"}, {"Remove the Complexities"=>"Peter Sandberg"}, 
	{"Ab Ovo"=>"Joep Beving"} ]


puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "How do you feel? We'll match your mood with music!" 
puts "Please type one of the following: 'happy', 'sad', 'determined', 'calm', or 'conflicted'."
mood = gets.chomp

if mood == "happy"
	p happy.sample
elsif mood == "sad"
	p sad.sample
elsif mood == "determined"
	p determined.sample
elsif mood == "calm"
	p calm.sample
elsif mood == "conflicted"
	p conflicted.sample
else 
	puts "Please select one of the five listed moods... they're the only categories available."
end

# def store_data(music, name, age, mood)
#  	db.execute("INSERT INTO db (name, age, mood) VALUES (?, ?, ?)", [name, age, mood])
# end