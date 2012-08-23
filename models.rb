DataMapper.setup(:default, ENV['DATABASE_URL'] || 'mysql://root:@localhost/runemadsen2012')

class Post
  
  include DataMapper::Resource
  
  has_tags_on :tags
  
  property :id, Serial
  property :title, String    
  property :body, Text      
  property :created_at, DateTime
  property :route, String, :length => 255
  
  def time_since_now
    diff = Time.diff(created_at.to_time, Time.now)
    diff = remove_zero_values(diff)
    
    if diff[:year]
      diff[:year] += 1 if(!diff[:month].nil? && diff[:month] == 12)
      return pluralized_sentence("year", diff[:year])
    elsif diff[:month]
      return pluralized_sentence("month", diff[:month])
    elsif diff[:day]
      return pluralized_sentence("day", diff[:day])
    elsif diff[:hour]
      return pluralized_sentence("hour", diff[:hour])
    elsif diff[:minute]
      return pluralized_sentence("minute", diff[:minute])
    elsif diff[:second]
      return pluralized_sentence("second", diff[:second])
    else
      return "Error in time conversion"
    end
  end
  
  private
  
  def pluralized_sentence(word, count)
    "#{count} " + Time.pluralize(word, count) + " ago"
  end
  
  def remove_zero_values(hash)
    hash.each do |key, value|
      hash.delete(key) if value == 0
    end
  end
  
end


class Project
  include DataMapper::Resource
  
  property :id,                 Serial    
  property :title,              String, :length => 255    
  property :short_description,  Text
  property :long_description,   Text    
  property :image,              String, :length => 255  
  property :freeform,            Text
  
  property :published,          Boolean, :default => true
  property :ordering,           Integer, :default => 99
  property :route,              String, :length => 255
  property :created_at,         DateTime
end
  
DataMapper.finalize