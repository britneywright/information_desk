desc "copy data to seed file"
  task :copy_data => :environment do
    RequestCategory.all.each do |g|
      puts "RequestCategory.create(#{g.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    PatronType.all.each do |g|
      puts "PatronType.create(#{g.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Timespan.all.each do |g|
      puts "Timespan.create(#{g.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
