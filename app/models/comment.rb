class Comment < ActiveRecord::Base
  belong_to :task
end
