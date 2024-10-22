# frozen_string_literal: true

module SmartCore::Validator::Utils
  extend self

  def deeply_symbolize_freeze(hash)
    hash.dup.freeze.transform_keys(&:to_sym).transform_values do |value|
      next value.dup.freeze unless value.is_a?(Hash)

      deeply_symbolize_freeze(value)
    end
  end
end
