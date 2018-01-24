class Book < ActiveRecord::Base
    def self.all_genres ; %W[Science-fiction Drama Action-and-Adventure Romance Mystery Horror] ; end
    validates :title, :presence => true
    validates :publish_date, :presence => true
    validate :published_1930_or_later
    validates :genre, :inclusion => {:in => Book.all_genres},
        :unless => :grandfathered?
        
    def published_1930_or_later
        errors.add(:publish_date, 'must be 1930 ot later') if
            publish_date && publish_date < Date.parse('1 Jan 1930')
    end
    
    @@grandfathered_date = Date.parse('1 Nov 1968')
    
    def grandfathered?
        publish_date && publish_date < @@grandfathered_date
    end
    
end