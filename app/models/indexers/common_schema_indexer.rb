module Indexers

  class CommonSchemaIndexer

    attr_reader :resource

    def initialize(resource:)
      @resource = resource
    end

    def to_solr
      return {} unless decorated_resource.try(:title)
      {
          title_ssi: decorated_resource.title,
      }
      return {} unless decorated_resource.try(:creator)
      {
          creator_ssi: decorated_resource.creator,
      }
      return {} unless decorated_resource.try(:member_ids)
      {
          member_ids_ssi: decorated_resource.member_ids,
      }
    end

    def decorated_resource
      @decorated_resource ||= resource.decorate
    end

  end
end