namespace :db do
	desc "Init database with constant data"

	task :load_polls => :environment do
		require 'csv'    

		CSV.foreach("data.csv", :headers => true) do |row|
			results = [];
		  p = Poll.create(
		  	date: row[0],
		  	source: row[1], 
		  	poller: row[2],
		  	population: row[4]
		  )
		  for i in 5..17
		  	results.push(Result.create(party_id: i+9, mandates: row[i]))
		  end
		  p.results = results
		  p.save
		end
	end
end

