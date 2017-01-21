class Game

	def initialize()
		draw_new_board
	end

	def draw_new_board
		array = [1,2,3,4,5,6,7,8,9]
		update_board(array)
		@player_symbol = "X"
	end

	def update_board (a)

		puts "_____________"
		puts "| #{a[0]} | #{a[1]} | #{a[2]} |"
		puts "_____________"
		puts "| #{a[3]} | #{a[4]} | #{a[5]} |"
		puts "_____________"
		puts "| #{a[6]} | #{a[7]} | #{a[8]} |"
		puts "_____________"

		puts "[#{a[0]}][#{a[1]}][#{a[2]}]"
		puts "[#{a[3]}][#{a[4]}][#{a[5]}]"
		puts "[#{a[6]}][#{a[7]}][#{a[8]}]"

	end

	def turn(player_symbol)

		square = gets.chomp.downcase("Type the number of a square on the board!")


	end

	def o_turn(square)
		puts "O's turn"

	end

	def game_won

	end

	def valid_move (square)

	end

	def play
		puts "Let's play tic-tac-toe!"
		puts "The choices are square 1-9"
		draw_new_board
		until game_won?
		puts "#{player_symbol}'s Turn!"
		turn
		end
	end

end

game = Game.new.play






