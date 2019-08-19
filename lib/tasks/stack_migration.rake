namespace :stack_migration do
  desc "TODO"
  task solr_to_pg: :environment do
    solr = Valkyrie::MetadataAdapter.find(:solr)
    postgres = Valkyrie::MetadataAdapter.find(:postgres)

    solr.query_service.find_all.each do |resource|
        postgres.persister.save(resource: resource)
    end
  end

  desc "TODO"
  task pg_to_solr: :environment do
    solr = Valkyrie::MetadataAdapter.find(:solr)
    postgres = Valkyrie::MetadataAdapter.find(:postgres)

    postgres.query_service.find_all.each do |resource|
       solr.persister.save(resource: resource)
    end 
  end
end
