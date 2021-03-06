class Book < ActiveRecord::Base
    def self.all_genres ; %w[Science-Fiction Drama Action-And-Adventure Romance Mystery Horror] ; end
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
    
    def self.similar_books(book)
        Book.where author: book.author
    end
    
end