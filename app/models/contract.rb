class Contract < ApplicationRecord
  belongs_to :clinic
  belongs_to :doctor

  has_rich_text :content

  def to_s
    self.title
  end
end
