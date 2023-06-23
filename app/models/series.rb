class Series < ApplicationRecord
    validates :nombre, presence: true
    validates :sinapsis, presence: true
    validates :director, presence:true
end
