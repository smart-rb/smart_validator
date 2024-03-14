# frozen_string_literal: true

require 'qonfig'
require 'forwardable'
require 'smart_core/schema'
require 'smart_core/initializer'

module SmartCore
  module Validator
    ERROR_CODE_HANDLING_TYPES = %i[one many].freeze

    require_relative 'validator/version'
    require_relative 'validator/utils'
    require_relative 'validator/errors_controller'
    require_relative 'validator/errors'
    require_relative 'validator/class_state'
    require_relative 'validator/rule'
    require_relative 'validator/rule_execution_context'
    require_relative 'validator/result'
    require_relative 'validator/contract'
  end
end
