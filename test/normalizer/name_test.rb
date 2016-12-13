require "test_helper"

class CsvGrouper::Normalizer::NameTest < Minitest::Test
  def setup
    @result = CsvGrouper::Normalizer::Name.normalize("O'Grady")
  end

  def test_normalize
    assert_equal "o-grady", @result
  end
end
