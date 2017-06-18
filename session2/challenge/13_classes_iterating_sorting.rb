# I have been struggling on this one.
require 'date'

class User
  attr_accessor :username, :blogs

  def initialize(username)
    @username = username
    @blogs    = []
  end

  def add_blog(date, text)
    added_blog = Blog.new(date, self, text)
    @blogs << added_blog
    @blogs = blogs.sort_by { |blog| blog.date }.reverse
    added_blog
  end
end



class Blog
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    self.date = date
    self.user = user
    self.text = text
  end

  def summary
    text.split(" ")[0..9].join(" ")
  end

  def entry
    "#{user.username} #{date}\n#{text}"
  end

  def ==(other)
    date   == other.date &&
      user == other.user &&
      text == other.text
  end
end


# date docs are at: http://ruby-doc.org/core/classes/Date.html
# don't spend too much time worrying about them :)
