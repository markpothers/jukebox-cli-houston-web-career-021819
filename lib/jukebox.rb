require"pry"

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

#def say_hello(name)
#  "Hi #{name}!"
#end
#puts "Enter your name:"
#users_name = gets.chomp
#puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays the help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits the program"
end

def list(array)
  array.each_with_index do |item, index|
    puts "#{index+1}. #{item}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  choice = gets.chomp
    name_options = []
    number_options = []
    array.each_with_index do |item, index|
      name_options << item #.split(" - ")[-1]
      number_options << index
    end
    if name_options.include?(choice) == false && choice.to_i == 0
      puts "Invalid input, please try again"
    elsif name_options.include?(choice) == true
      puts "Playing #{choice}"
    elsif number_options.include?(choice.to_i)
      puts "Playing #{name_options[choice.to_i-1]}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
puts "Please enter a command:"
command = gets.chomp
      until command == "exit"
          if command == "help"
            help
            puts "Please enter a command:"
            command = gets.chomp
          elsif command == "list"
            list(songs)
            puts "Please enter a command:"
            command = gets.chomp
          elsif command == "play"
            command = "exit"
            play(songs)
          end
        exit_jukebox
      end
      exit_jukebox
end
