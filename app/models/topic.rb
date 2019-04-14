class Topic < ApplicationRecord
    validates_presence_of :title, :dependent => :destroy

    has_many :blogs
end
