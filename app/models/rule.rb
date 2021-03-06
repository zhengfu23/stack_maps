# waffles-muggles
#
# CS 5150 Navigation in Library Stacks.
#
# OpenAPI spec version: 1.0.0
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git
#

class Rule < ApplicationRecord
  validates :call_number, presence: true, length: { in: 1..255 }
  validates :rule_type, presence: true
end
