class Blog < ApplicationRecord
  enum status: [:draft, :published]
  extend FriendlyId
  friendly_id :title, use: :slugged
end
