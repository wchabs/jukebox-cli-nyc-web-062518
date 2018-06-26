#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/home/wchabs/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/home/wchabs/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/home/wchabs/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/home/wchabs/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '/home/wchabs/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '/home/wchabs/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commamds:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  
  key_songs_array = []
  
  my_songs.each do |song, path|
    key_songs_array << song
  end
  
  key_songs_array.each do |song|
    puts song
  end
  
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  puts "Please enter a song name:"
  song_request = gets.chomp
  
  if my_songs.keys.include?(song_request)
    system 'open my_songs[song_request]'
  else
    puts "Invalid choice"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
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
      list(my_songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    when "play"
      play(my_songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    else
      puts "Please enter a command:"
      user_input = gets.chomp
    end
  end
  
  exit_jukebox
  
end

system("start './home/wchabs/jukebox-cli-nyc-web-062518/audio/Emerald-Park/01.mp3'")