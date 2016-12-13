module CsvGrouper
  module Normalizer
    class Zip
      def self.normalize(value)
        value.parameterize.split("-").first
      end
    end
  end
end
