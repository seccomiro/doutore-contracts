class Contract < ApplicationRecord
  belongs_to :clinic
  belongs_to :doctor
  has_rich_text :content

  validates :title, presence: true
  validates :clinic, presence: true
  validates_associated :clinic
  validates :doctor, presence: true
  validates_associated :doctor

  def to_s
    self.title
  end
end
