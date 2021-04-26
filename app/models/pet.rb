class Pet < ApplicationRecord
    belongs_to :user, optional: true
    validates :name, presence: true



private

  def is_title_case
    if name.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:name, "Name must be in title case")
    end
  end

  def make_title_case
    self.name = self.name.titlecase
  end

end
