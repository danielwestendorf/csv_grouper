require "test_helper"

class CsvGrouper::Normalizer::EmailTest < Minitest::Test
  def setup
    @result = CsvGrouper::Normalizer::Email.normalize("fancy-thing@bob.com")
  end

  def test_normalize
    assert_equal "fancy-thing@bob-com", @result
  end
end
