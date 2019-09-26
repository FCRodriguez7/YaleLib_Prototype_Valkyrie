class MapChangeSet < Valkyrie::ChangeSet
    self.fields = [:title]
    self.fields = [:member_ids]
    validates :title, presence: true
    validates :member_ids, presence: true
  end