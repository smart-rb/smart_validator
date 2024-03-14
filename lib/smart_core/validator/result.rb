# frozen_string_literal: true

class SmartCore::Validator::Result
  attr_accessor :errors
  attr_accessor :data
  attr_accessor :failed

  def self.build_from_state(input_data, errors_controller)
    res = new(
      data: input_data,
      errors: errors_controller.errors,
      failed: errors_controller.validation_fails?
    )
    res.freeze
  end

  def initialize(errors:, data:, failed:)
    self.errors = errors
    self.data = data
    self.failed = failed
  end

  def success?
    !failed
  end

  def freeze
    super.tap do
      errors.freeze
      data.freeze
    end
  end

  alias_method :failed?, :failed
  alias_method :to_h, :data
end
