class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :scores
  has_many :scores
  class ScoreSerializer < ActiveModel::Serializer
    attributes :id, :points
  end
end
