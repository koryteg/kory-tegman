atom_feed :language => 'en-US' do |feed|
  feed.title @title
  feed.updated @updated

  @blog.each do |blog|
    next if blog.updated_at.blank?

    feed.entry( blog ) do |entry|
     
      entry.title blog.title
      entry.content blog.content, :type => 'html'

      # the strftime is needed to work with Google Reader.
      entry.updated(blog.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ")) 

      
        
      
    end
  end
end