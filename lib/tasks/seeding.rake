desc "copy data to seed file"
  task :copy_data => :environment do
    patron_type_names = ["Phone Calls", "Walk Ups", "Switchboard Back-up"]
    request_category_names = ["Classes/Academic Info.","Computer Assistance","Directions (Building)","Directions (On Campus)","Directions (External)", "Directory Search/Info.","Events or Event Info.","Flyer Approval","Hours of Operation","Lost & Found","Radio for Assistance","Reerral to Dept./Svc.","Supplies Request"]
    start_timespan = Time.new(2015,04,01,07,00,00)
    end_timespan = start_timespan.advance(minutes: 30)
    end_time = start_timespan.advance(hours: 17)

    File.open 'db/seeds.rb', 'w' do |f| 
      patron_type_names.each do |p|
        puts PatronType.create(:name => p)
      end

      request_category_names.each do |r|
        puts RequestCategory.create(:name => r)
      end

      loop do
        puts Timespan.create(:starttime => start_timespan,
                    :endtime => end_timespan,
                    :name => "#{start_timespan.to_s(:twelve_hour_clock)} - #{end_timespan.to_s(:twelve_hour_clock)}"
                   )
        start_timespan = start_timespan.advance(minutes: 30)
        end_timespan = end_timespan.advance(minutes: 30)
        break if start_timespan > end_time 
      end
    
    end 
  end

