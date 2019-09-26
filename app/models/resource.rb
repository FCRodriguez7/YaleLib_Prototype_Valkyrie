# frozen_string_literal: true
# Generated with `rails generate valkyrie:model Resource`
class Resource < Valkyrie::Resource
  include Valkyrie::Resource::AccessControls
  attribute :title, Valkyrie::Types::Set
  attribute :member_ids, Valkyrie::Types::Array
end
