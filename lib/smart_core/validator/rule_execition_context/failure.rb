# frozen_string_literal: true

class SmartCore::Validator::RuleExecutionContext::Failure < StandardError
  attr_reader :code

  def initialize(code)
    @code = code
    super(code)
  end
end
