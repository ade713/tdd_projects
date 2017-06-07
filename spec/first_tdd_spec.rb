require 'first_tdd'
require 'rspec'
describe Array do
  describe '#my_uniq' do
    it "removes duplicates" do
      expect([1, 2, 'a', 2, 3, 'a'].my_uniq).to eq([1, 2, 'a', 3])
    end

    it "returns an array" do
      expect([4, 5, 4, 9].my_uniq.is_a? Array).to be true
    end

    it "doesn't call built-in Array#uniq" do
      expect([4, 5, 4, 9]).not_to receive(:uniq)
    end
  end

  describe '#two_sum' do
    let (:arr) { [-1, 0, 2, -2, 1] }
    it "returns pair indices that sum to zero" do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "returns empty array if no pairs found" do
      expect([1, 2, 3, 4, 5].two_sum).to eq([])
    end

    it "returns ordered pairs" do
      expect([1, -1, 3, -3, 5].two_sum).to eq([1, -1, 3, -3, 5].two_sum.sort)
    end

  describe "#my_transpose" do
    let (:arr) { [[1, 2, 3], [4, 5, 6], [7, 8, 9]]}
    let (:transposed) { [[1, 4, 7], [2, 5, 8], [3, 6, 9]]}
    it "corretly tranposes the array" do
      expect(arr.my_transpose).to eq(transposed)
    end

    it "tranposes non-square 2-D arrays" do
      expect([[1, 2, 3,], [4, 5, 6]].my_transpose).to eq([[1, 4], [2, 5], [3, 6]])
    end

    it "doesn't call built-in Array#transpose" do
      expect(arr).not_to receive(:transpose)
    end
  end
end



end
