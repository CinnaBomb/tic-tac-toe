class Game

	def initialize
		@player_symbol = "X"
	end

	def new_board
		@a = [1,2,3,4,5,6,7,8,9]
	end

	def update_board 
		puts "_____________"
		puts "| #{@a[0]} | #{@a[1]} | #{@a[2]} |"
		puts "_____________"
		puts "| #{@a[3]} | #{@a[4]} | #{@a[5]} |"
		puts "_____________"
		puts "| #{@a[6]} | #{@a[7]} | #{@a[8]} |"
		puts "_____________"

		#Alternate View
		#puts "[#{@a[0]}][#{@a[1]}][#{@a[2]}]"
		#puts "[#{@a[3]}][#{@a[4]}][#{@a[5]}]"
		#puts "[#{@a[6]}][#{@a[7]}][#{@a[8]}]"
	end

	def turn
		puts "#{@player_symbol}'s Turn!"
		loop do
			puts "Type the number of a square on the board!"
			@square = gets.downcase.chomp
			break if @square == "q" || valid_move
		end
		if @square == "q"
			puts "Thanks for playing!"
			exit
		end
		i = @square.to_i-1
		@a[i] = @player_symbol
		update_board
	end

	def switch
		if @player_symbol == "X"
			@player_symbol = "O"
		else
			@player_symbol = "X"
		end
	end

	def game_won?
		winning_array = [
			[1, 2, 3],
			[4, 5, 6],
			[7, 8, 9],
			[1, 4, 7],
			[2, 5, 8],
			[3, 6, 9],
			[1, 5, 9],
			[3, 5, 7] ]
			puts winning_array.any?{|set| @a.include?(set)}.inspect
		winning_array.any?{|set| @a.include?(set)}
	end

	def game_over
		puts "#{@player_symbol} won!"
	end

	def valid_move 
		@square = @square.to_i
		return true if @a.include?(@square)
	end

	def play
		puts "Let's play tic-tac-toe!"
		puts "The choices are square 1-9"
		new_board
		update_board
		until game_won?
			turn
			switch
		end
	end

end

game = Game.new.play






