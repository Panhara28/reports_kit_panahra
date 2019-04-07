require 'rails/all'

require 'reports_kit_panhara/normalized_params'
require 'reports_kit_panhara/base_controller'
require 'reports_kit_panhara/cache'
require 'reports_kit_panhara/configuration'
require 'reports_kit_panhara/engine'
require 'reports_kit_panhara/entity'
require 'reports_kit_panhara/filters_controller'
require 'reports_kit_panhara/form_builder'
require 'reports_kit_panhara/helper'
require 'reports_kit_panhara/model'
require 'reports_kit_panhara/model_configuration'
require 'reports_kit_panhara/order'
require 'reports_kit_panhara/relative_time'
require 'reports_kit_panhara/report_builder'
require 'reports_kit_panhara/reports_controller'
require 'reports_kit_panhara/utils'
require 'reports_kit_panhara/value'
require 'reports_kit_panhara/version'

require 'reports_kit_panhara/reports/adapters/mysql'
require 'reports_kit_panhara/reports/adapters/postgresql'

require 'reports_kit_panhara/reports/data/add_table_aggregations'
require 'reports_kit_panhara/reports/data/aggregate_composite'
require 'reports_kit_panhara/reports/data/aggregate_one_dimension'
require 'reports_kit_panhara/reports/data/aggregate_two_dimensions'
require 'reports_kit_panhara/reports/data/chart_data_for_data_method'
require 'reports_kit_panhara/reports/data/chart_options'
require 'reports_kit_panhara/reports/data/format_one_dimension'
require 'reports_kit_panhara/reports/data/format_table'
require 'reports_kit_panhara/reports/data/format_two_dimensions'
require 'reports_kit_panhara/reports/data/generate'
require 'reports_kit_panhara/reports/data/generate_for_properties'
require 'reports_kit_panhara/reports/data/normalize_properties'
require 'reports_kit_panhara/reports/data/populate_one_dimension'
require 'reports_kit_panhara/reports/data/populate_two_dimensions'
require 'reports_kit_panhara/reports/data/utils'

require 'reports_kit_panhara/reports/filter_types/base'
require 'reports_kit_panhara/reports/filter_types/boolean'
require 'reports_kit_panhara/reports/filter_types/datetime'
require 'reports_kit_panhara/reports/filter_types/number'
require 'reports_kit_panhara/reports/filter_types/records'
require 'reports_kit_panhara/reports/filter_types/string'

require 'reports_kit_panhara/reports/abstract_series'
require 'reports_kit_panhara/reports/composite_series'
require 'reports_kit_panhara/reports/contextual_filter'
require 'reports_kit_panhara/reports/dimension'
require 'reports_kit_panhara/reports/dimension_with_series'
require 'reports_kit_panhara/reports/filter'
require 'reports_kit_panhara/reports/filter_with_series'
require 'reports_kit_panhara/reports/generate_autocomplete_results'
require 'reports_kit_panhara/reports/generate_autocomplete_method_results'
require 'reports_kit_panhara/reports/inferrable_configuration'
require 'reports_kit_panhara/reports/model_settings'
require 'reports_kit_panhara/reports/properties'
require 'reports_kit_panhara/reports/properties_to_filter'
require 'reports_kit_panhara/reports/series'

module ReportsKit
  def self.configure
    yield(configuration)
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.parse_date_range(string)
    ReportsKit::Reports::Data::Utils.parse_date_range(string)
  end

  def self.format_date_range(string)
    ReportsKit::Reports::Data::Utils.format_date_range(string)
  end
end
