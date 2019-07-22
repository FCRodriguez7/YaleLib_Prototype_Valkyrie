module Indexers

  class CommonSchemaIndexer

    attr_reader :resource

    def initialize(resource:)
      @resource = resource
    end

    def to_solr
      return {} unless decorated_resource.try(:human_readable_type)
      {
          title_ssi: decorated_resource.title,

      }
    end

    def decorated_resource
      @decorated_resource ||= resource.decorate
    end

  end
end