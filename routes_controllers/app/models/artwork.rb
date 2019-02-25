# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  artist_id  :integer          not null
#  image_url  :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
    validates :title, uniqueness: {scope: :artist_id, message: "You already titled something this"}
    validates :image_url, :title, presence: true

    belongs_to :artist, 
    class_name: :User

    has_many :artwork_shares

    has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer

end
