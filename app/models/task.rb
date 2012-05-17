class Task < ActiveRecord::Base
  belongs_to :created_by, class_name: 'User'
  attr_accessible :body, :subject
end
