# waffles-muggles
#
# CS 5150 Navigation in Library Stacks.
#
# OpenAPI spec version: 1.0.0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
#

class Stack < ApplicationRecord
  validates :cx, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :cy, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :lx, numericality: { only_integer: true, greater_than: 0 }
  validates :ly, numericality: { only_integer: true, greater_than: 0 }
  validates :rotation, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 360 }
  validates :start_class, presence: true, length: { in: 1..3 }, format: { with: /[A-Z]+\z/, message: 'only allows UPPER letters' }
  validates :start_subclass, allow_nil: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :start_subclass2, allow_nil: true, length: { in: 1..3 }, format: { with: /[A-Z]+\z/, message: 'only allows UPPER letters' }
  validates :end_class, presence: true, length: { in: 1..3 }, format: { with: /[A-Z]+\z/, message: 'only allows UPPER letters' }
  validates :end_subclass, allow_nil: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :end_subclass2, allow_nil: true, length: { in: 1..3 }, format: { with: /[A-Z]+\z/, message: 'only allows UPPER letters' }
  validates :oversize, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 3 }
end