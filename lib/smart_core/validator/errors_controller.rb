# frozen_string_literal: true

module SmartCore::Validator::ErrorsController
  require_relative 'errors_controller/base'
  require_relative 'errors_controller/error_per_attribute'
  require_relative 'errors_controller/many_errors_per_attribute'

  extend self

  ALLOWED_MANAGING_TYPES = {
    error_per_attribute: 'ErrorPerAttribute',
    many_errors_per_attribute: 'ManyErrorsPerAttribute'
  }.freeze

  def resolve_from(managing_type)
    unless ALLOWED_MANAGING_TYPES.key?(managing_type)
      raise ArgumentError, "invalid handling type. allowed is: #{ALLOWED_MANAGING_TYPES.keys}"
    end

    name = ALLOWED_MANAGING_TYPES[managing_type]
    ::SmartCore::Validator::ErrorsController.const_get(name).new
  end
end
