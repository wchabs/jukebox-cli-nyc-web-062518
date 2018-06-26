songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commamds:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  if (song_request.to_i > 0 && song_request.to_i < songs_array.length) || songs_array.include?(song_request)
    if song_request.to_i == 0
      puts "Playing #{song_request}"
    else
      puts "Playing #{songs_array[song_request.to_i - 1]}"
    end
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  
  until user_input == "exit"
    case user_input
    when "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    when "list"
      list(songs_array)
      puts "Please enter a command:"
      user_input = gets.chomp
    when "play"
      play(songs_array)
      puts "Please enter a command:"
      user_input = gets.chomp
    else
      puts "Please enter a command:"
      user_input = gets.chomp
    end
  end
  
  exit_jukebox
  
end
