# Add your code here
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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |lists, index|
    puts "#{index+1}. #{lists}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  inputs = gets.chomp 
  
  if (1..9).to_a.include?(inputs.to_i)
    puts "Playing #{songs[inputs.to_i - 1]}"
    elsif songs.include?(inputs)
    puts "Playing #{inputs}"
  else 
    puts "Invalid input, please try again"
  end  
end  

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = "" 
  while command  
  puts "Please enter a command:"
  command = gets.downcase.strip  
  case command 
    when 'list'
      list(songs)
      when 'play'
        list(songs)
        play(songs)
      when 'help'
        help 
      when 'exit'
        exit_jukebox
        break 
      else 
        help 
      end 
    end 
  end 
  run(songs)
