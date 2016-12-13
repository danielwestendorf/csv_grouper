module CsvGrouper
  class Run
    def initialize(matching_type, file_path)
      @matching_type = matching_type
      @matching_class = matching_class
      @file_path = file_path
      @map = {}
    end

    def go
      csv = CSV.read(@file_path, headers: true)
      puts "uuid," << csv.headers.join(",")

      csv.each do |row|
        key = row[@matching_type].to_s

        puts "#{id_for_key(key)}," << row.to_hash.values.join(",")
      end
    end

    def id_for_key(key)
      normalized_key = @matching_class.normalize(key)
      find_or_insert_map_value(normalized_key)
    end

    def find_or_insert_map_value(key)
      unless @map[key]
        @map[key] = SecureRandom.uuid
      end

      @map[key]
    end

    def matching_class
      case @matching_type.downcase
      when /email/
        Normalizer::Email
      when /phone/
        Normalizer::Phone
      when /name/
        Normalizer::Name
      when /zip/
        Normalizer::Zip
      end
    end
  end
end
