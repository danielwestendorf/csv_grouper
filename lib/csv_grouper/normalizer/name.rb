module CsvGrouper
  module Normalizer
    class Name
      def self.normalize(value)
        value.parameterize
      end
    end
  end
end
