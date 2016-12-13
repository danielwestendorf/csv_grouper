require "csv_grouper/version"

require "active_support"
require "active_support/core_ext/string/inflections"
require "csv"

require "csv_grouper/normalizer/name"
require "csv_grouper/normalizer/zip"
require "csv_grouper/normalizer/phone"
require "csv_grouper/normalizer/email"

require "csv_grouper/run"

module CsvGrouper
end
