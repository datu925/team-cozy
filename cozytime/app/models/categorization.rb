class Categorization < ActiveRecord::Base
  belong_to :movie
  belong_to :genre
end
