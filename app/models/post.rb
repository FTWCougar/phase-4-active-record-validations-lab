class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
    validate :title_must

    def title_must
        if title.include?("Won't Believe" || "Secret" || "Guess" || "Top [number]")
    end
end
