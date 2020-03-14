class Contract < ApplicationRecord
  belongs_to :clinic
  belongs_to :doctor

  def to_s
    self.title
  end
end
