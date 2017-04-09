# PSEUDO

# Music selector that suggests modern classical music based on user's mood.
# There will be a table (hash display?) that will hold data on songs 
# and their respective composers. 

require 'sqlite3'
db = SQLite3::Database.new("music.db")
# db.results_as_hash = true

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



create_table_cmd  = <<-SQL
	CREATE TABLE IF NOT EXISTS music(
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