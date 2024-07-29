class Seo
attr_accessor :title, :description, :keywords

def initialize title = 'title',description = 'description', keywords = 'keywords'
@title = title
@description = description
@keywords =  keywords
end

end

class News   < Seo
 
end

class About  < Seo
end

n = News.new

p n.title
