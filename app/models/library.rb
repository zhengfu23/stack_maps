# waffles-muggles
#
# CS 5150 Navigation in Library Stacks.
#
# OpenAPI spec version: 1.0.0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
#

class Library < ApplicationRecord
  has_many :floors
  validates :name, presence: true, uniqueness: true, length: { in: 1..255 }
  validates :latitude, allow_nil: true, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :longitude, allow_nil: true, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
end