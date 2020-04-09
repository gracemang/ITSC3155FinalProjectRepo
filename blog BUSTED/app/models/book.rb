class Book < ApplicationRecord
    validates :isbnnumber, presence: true, length: {minimum: 5}
    validates :isbn, presence: true, length: {minimum: 5}
end
