extends Node

# Constants
var level_count

# Persistent Player Data
var level_solved
var level_playing

func _ready():
	level_solved = 1
	level_playing = 1
	
	level_count = len(list_files_in_directory("res://levels"))
	
func list_files_in_directory(path):
    var files = []
    var dir = Directory.new()
    dir.open(path)
    dir.list_dir_begin()

    while true:
        var file = dir.get_next()
        if file == "":
            break
        elif not file.begins_with("."):
            files.append(file)

    dir.list_dir_end()

    return files
