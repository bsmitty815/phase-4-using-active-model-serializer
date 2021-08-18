class MovieSerializer < ActiveModel::Serializer
  # To customize our JSON, we simply provide the list of attributes that we want to be included
  attributes :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director, :summary

  #setting up a custom method. add this method name to the attributes
  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end
end
