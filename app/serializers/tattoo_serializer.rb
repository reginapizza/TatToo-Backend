# frozen_string_literal: true

class TattooSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :picture,
             :description,
             :date,
             :artist_name,
             :artist_instagram,
             :location,
             :ink_brand,
             :editable
  def editable
    scope == object.user
  end
end
