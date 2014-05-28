class Story < Struct.new(:title, :author_name, :written_on, :preview)
end

class StoriesController < ApplicationController
  def index
    @stories = [Story.new('My story', 'Joe',
                          DateTime.now, 'preview text...')]
  end
end
