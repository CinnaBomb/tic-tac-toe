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
		#FIX THIS!
		winning_array = [
			[0, 1, 2],
			[3, 4, 5],
			[6, 7, 8],
			[0, 3, 6],
			[1, 4, 7],
			[2, 5, 8],
			[0, 4, 8],
			[2, 4, 6] ]
			#return [0,3,6].all?{|index| @a[index]==@player_symbol}
			return winning_array.any?{|set| set.all?{|index| @a[index]==@player_symbol} }
			#false


=begin
			winning_array.each do |set|
				if set.all? {|index| @a[index]==@player_symbol}
					true
				end
			end
			false
=end

	end

	def game_over
		puts "#{@player_symbol} won!"
		exit
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
		loop do 
			turn
			if game_won? == true
				game_over
			end
			switch
		end
	end

end

game = Game.new.play






