class Array
  def my_uniq
    uniqs = []
    self.each { |el| uniqs << el unless uniqs.include?(el) }

    uniqs
  end

  def two_sum
    pairs = []

    (0...size-1).each do |idx1|
      (idx1 + 1...size).each do |idx2|
        pairs << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end

    pairs
  end

  def my_transpose
    transposed = []

    self[0].each_index do |col|
      transposed_row = []
      self.each_index do |row|
        transposed_row << self[row][col]
      end
      transposed << transposed_row
    end

    transposed
  end
end
