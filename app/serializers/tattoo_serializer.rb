# frozen_string_literal: true

class TattooSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :picture,
             :description,
             :day,
             :artist_name,
             :artist_instagram,
             :location,
             :ink_brand,
             :user_id,
             :editable
  def editable
    scope == object.user
  end
end
