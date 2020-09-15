class Category < ApplicationRecord
    validates :name, presence: true
    has_many :posts, dependent: :destroy #:nullify

    before_save :create_slug
    def create_slug
        self.slug = self.name.tr(" ", "-")
    end

end
