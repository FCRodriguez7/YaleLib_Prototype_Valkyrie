namespace :playground do
  desc "TODO"
  task create_examples: :environment do
    pg_adapter = Valkyrie::MetadataAdapter.find(:postgres) #could be a solr adapter if :solr is used instead of :postgres
    titles = ["Catch22", "Hare and the Tortuous", "Percy", "FrakenStein","EXAMPLEINF"]
    titles.each_with_index  { |title, index|
      book = Book.new("title" => title, "creator" => "Person#{index}")
      pg_adapter.persister.save(resource: book)
    }

    puts "Created 5 example objects"
    puts "Use 'rake stack_migration:pg_to_solr' to export those objects to SOLR."
  end

end
