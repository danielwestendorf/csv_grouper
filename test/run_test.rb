require "test_helper"

class CsvGrouper::RunTest < Minitest::Test
  def setup
    @runner = CsvGrouper::Run.new("Phone", "./input1.csv")
  end

  def test_output_uuid
    assert_output(/uuid/) {
      @runner.go
    }
  end

  def test_mathing_class
    assert_equal CsvGrouper::Normalizer::Phone, @runner.matching_class
  end

  def test_id_for_key_for_matching_value
    previous_id = @runner.id_for_key("1 (555) 555 - 1234")

    assert_equal previous_id, @runner.id_for_key("1555 555 - 1234")
  end

  def test_id_for_key_for_unmatched_value
    previous_id = @runner.id_for_key("1 (555) 555 - 1233")

    refute_equal previous_id, @runner.id_for_key("1555 555 - 1234")
  end

  def test_find_or_insert_map_value_for_matching_value
    previous_id = @runner.find_or_insert_map_value("12345")

    assert_equal previous_id, @runner.find_or_insert_map_value("12345")
  end

  def test_find_or_insert_map_value_for_unmatched_value
    previous_id = @runner.find_or_insert_map_value("12345")

    refute_equal previous_id, @runner.find_or_insert_map_value("55555")
  end
end
