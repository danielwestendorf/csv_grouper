module CsvGrouper
  module Normalizer
    class Phone
      def self.normalize(value)
        value.parameterize(separator: "").gsub(/-/, "")
      end
    end
  end
end
