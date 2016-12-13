require "test_helper"

class CsvGrouper::Normalizer::PhoneTest < Minitest::Test
  def setup
    @result = CsvGrouper::Normalizer::Phone.normalize("(555) 123-4567")
  end

  def test_normalize
    assert_equal "5551234567", @result
  end
end
