class Vote < ActiveRecord::Base
  belong_to :voters
  belong_to :candidates
end
