module CsvGrouper
  module Normalizer
    class Email
      def self.normalize(value)
        value.split("@").collect(&:parameterize).join("@")
      end
    end
  end
end
