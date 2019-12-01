class Board
    attr_accessor :cells
    #has an attribute to store the cells of the board
    def reset!
        @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end
    
    def display
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end
      #can reset the state of the cells in the board 

    def reset!
        self.cells = Array.new(9, " ")
    end
    def initialize
        self.cells = Array.new(9," ")
    end
    def position
    @cells 
    end

    def position(user_input)
        self.cells[user_input.to_i-1]
      end
      def full?
        self.cells.all? {|cell| cell == "X" || cell == "O"}
      end
    
      def turn_count
        self.cells.count("X") + self.cells.count("O")
      end


  def taken?(position) #check board position
    self.cells[position.to_i-1] == "X" || #board position -1 because of test using range 1-9 (user input numbers)
    self.cells[position.to_i-1] == "O"
  end

  def valid_move?(position)
    !taken?(position) && position.to_i >0 && position.to_i <=9
  end

  def update(position, player)
      self.cells[position.to_i-1] = player.token
  end
    end