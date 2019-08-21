# frozen_string_literal: true
# Generated with `rails generate valkyrie:model NextGen`
class NextGen < Valkyrie::Resource
  include Valkyrie::Resource::AccessControls
  attribute :title, Valkyrie::Types::Set
  attribute :member_ids, Valkyrie::Types::Array
end

class MyChangeSet < Valkyrie::ChangeSet
  self.fields = [:title]
  self.fields = [:member_ids]
  validates :title, presence: true
  validates :member_ids, presence: true
end
