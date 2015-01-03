class Sudoku
  attr_reader :board

  def initialize(board)
    @board = board.split("")
    prepare_row_columns_boxes
  end

  def solve!

    return false unless valid?
    return @board.join if solved?

    next_empty_index = @board.index("0")

    (1..9).each do |attempt|
      @board[next_empty_index] = attempt
      solution = Sudoku.new(@board.join).solve!
      return solution if solution
    end

    return false

  end


  def valid?
    no_dups?(@rows) && no_dups?(@columns) && no_dups?(@boxes)
  end

  def solved?
    @board.count("0") == 0
  end

  private

  def prepare_row_columns_boxes
    @rows    = Array.new(9) {Array.new}
    @columns = Array.new(9) {Array.new}
    @boxes   = Array.new(9) {Array.new}

    @board.each_with_index do |value, index|
      next if value == "0"
      @rows[row_for(index)].push value
      @columns[column_for(index)].push value
      @boxes[box_for(index)].push value
    end
  end

  def row_for(index)
    (index / 9)
  end

  def column_for(index)
    (index % 9)
  end

  def box_for(index)
    (column_for(index) / 3 ) + ((row_for(index) / 3) * 3)
  end

  def no_dups?(set) 
    set.each do |subset|
      return false if subset.uniq.length != subset.length
    end
    true
  end
end

class SudokuRevised
  attr_reader :board

  def initialize(board)
    @board = board.split("")
    prepare_rows_cols_boxes
  end

  def solve!
    return false unless valid?
    return @board.join if solved?

    next_empty_index = @board.index("0")
    remaining_vals = find_remaining_vals_for(next_empty_index)

    remaining_vals.each do |attempt|
      @board[next_empty_index] = attempt
      solution = Sudoku.new(@board.join).solve!
      return solution if solution
    end

    return false
  end

  def valid?
    no_dups?(@rows) && no_dups?(@cols) && no_dups?(@boxes)
  end

  def solved?
    @board.count("0") == 0
  end

  def no_dups?(set) 
    set.each do |subset|
      return false if subset.uniq.length != subset.length
    end
    true
  end

  def prepare_rows_cols_boxes
    @rows  = Array.new(9) {Array.new}
    @cols  = Array.new(9) {Array.new}
    @boxes = Array.new(9) {Array.new}

    @board.each_with_index do |value, index|
      next if value == "0"
      @rows[row_for(index)].push value
      @cols[col_for(index)].push value
      @boxes[box_for(index)].push value
    end
  end

  def row_for(index)
    (index / 9)
  end

  def col_for(index)
    (index % 9)
  end

  def box_for(index)
    (col_for(index) / 3 ) + ((row_for(index) / 3) * 3)
  end

  def find_remaining_vals_for(index)
    default_vals = ("1".."9").to_a

    row_vals = @rows[row_for(index)]
    col_vals = @cols[col_for(index)]
    box_vals = @boxes[box_for(index)]

    row_diff = default_vals - row_vals
    col_diff = default_vals - col_vals
    box_diff = default_vals - box_vals

    [row_diff + col_diff + box_diff].flatten.uniq
  end

end


suduko = Sudoku.new('003020600900305001001806400008102900700000008006708200002609500800203009005010300')
sudoku_revised = SudokuRevised.new('003020600900305001001806400008102900700000008006708200002609500800203009005010300')

puts suduko.solve! == sudoku_revised.solve!

#=> 483921657967345821251876493548132976729564138136798245372689514814253769695417382
