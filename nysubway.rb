
def line_menu
  puts `clear`

  puts "Welcome to the Subway App"
  puts
  puts "Please choose the line you are starting your journey from"
  puts "(L), (N) or (S).  Alternatively, press Q to quit"
  puts
  gets.chomp.downcase
end

@l_line = ["8th-l", "6th", "Union Square", "3rd", "1st"]
@n_line = ["Times Square", "34th", "28th-n", "23rd-n", "Union Square", "8th-n"]
@s_line = ["Grand Central", "33rd", "28th-s", "23rd-s", "Union Square", "Astor Place"]

#tube_network = {l: @l_station, n: @n_station, s: @s_station}

# def l_line_menu



# end

# def n_line_menu
# end

# def s_line_menu
# end

# def start_menu
#   puts "What stop are you getting on at?"
#   start_station = gets.chomp.downcase
#       #
# end

# def end_menu
#   puts " What stop are you getting off at?"
#   end_station = gets.chomp.downcase
# end


response = line_menu

while response != "q"
  case response
    when "l"
        puts "What stop are you getting on at? Please choose from the following:"
        puts @l_line
        puts
        start_station = gets.chomp.downcase
        puts
        puts "What stop are you getting off at? Please choose from the following"
        puts
        puts "L Line:"
        puts @l_line
        end_station = gets.chomp.downcase
        puts
        @journey_length = @l_line.index(end_station) - @l_line.index(start_station)
        puts "Your journey will take #{@journey_length.abs} stops"
        gets
    when "n"
        puts "What stop are you getting on at? Please choose from the following:"
        puts @n_line
        puts
        start_station = gets.chomp.downcase
        puts
        puts "What stop are you getting off at? Please choose from the following"
        puts
        puts "N Line:"
        puts @n_line
        end_station = gets.chomp.downcase
        puts
        @journey_length = @n_line.index(end_station) - @n_line.index(start_station)
        puts "Your journey will take #{@journey_length.abs} stops"
        gets
    when "s"
        puts "What stop are you getting on at? Please choose from the following:"
        puts @s_line
        puts
        start_station = gets.chomp.downcase
        puts
        puts "What stop are you getting off at? Please choose from the following"
        puts
        puts "S Line:"
        puts @s_line
        end_station = gets.chomp.downcase
        puts
        @journey_length = @s_line.index(end_station) - @s_line.index(start_station)
        puts "Your journey will take #{@journey_length.abs} stops"
        gets
  end

  response = line_menu
end
