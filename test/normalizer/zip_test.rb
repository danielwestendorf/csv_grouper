require "test_helper"

class CsvGrouper::Normalizer::ZipTest < Minitest::Test
  def setup
    @result = CsvGrouper::Normalizer::Zip.normalize("12345-3930-393")
  end

  def test_normalize
    assert_equal "12345", @result
  end
end
