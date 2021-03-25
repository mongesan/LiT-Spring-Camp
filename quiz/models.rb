ActiveRecord::Base.establish_connection

class Result < ActiveRecord::Base
end

class Rank < ActiveRecord::Base
    validates :name,
    presence: true
end
