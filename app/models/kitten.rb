class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true, inclusion: 0..30
  validates :cuteness, presence: true, inclusion: 1..10
  validates :softness, presence: true, inclusion: 1..10

  def as_json(options={})
      super(:only => [:id, :name, :age, :cuteness, :softness])
    end
end
