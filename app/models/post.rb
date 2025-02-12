class Post < ActiveRecord::Base
  validates_presence_of :title
  validates :content, length: { minimum: 20 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
