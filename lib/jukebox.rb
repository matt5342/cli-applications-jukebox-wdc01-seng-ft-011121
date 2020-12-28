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

def play(songs)
  yes = 0
  index = 0
  puts "Please enter a song name or number:"
  input = gets.strip
  
  songs.each do |song|
    if input == song
      puts "Playing #{song}"
      yes = 1
      break
    end
    if input.length > 1
      if songs[input.to_i] == songs[(index.to_s + 1)]
        puts "Playing #{song}"
        yes = 1
        break
      end
    end
    index += 1
  end  
    if yes == 0
      puts "Invalid input, please try again"
    end
end

def list(songs)
  num = 1
  songs.each do |song|
    puts "#{num}. #{song}"
    num += 1
  end
end

def exit_jukebox
end
