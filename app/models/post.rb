class Post < ActiveRecord::Base
  attr_accessible :context, :name

  validates :name, :presence => true, :uniqueness => { :scope => :context }
  validates :context, :presence => true, :length => { :minimum => 5}

  has_many :comments
end
