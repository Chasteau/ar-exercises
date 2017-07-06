class ApparelValidator < ActiveModel::Validator
  def validate(record)
    unless (record.mens_apparel == true or record.womens_apparel == true)
      record.errors.add(:mens_apparel, "Store must have apparel for men or women!")
    end
  end
end


class Store < ActiveRecord::Base
  has_many :employees

  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  # BONUS: Stores must carry at least one of the men's or women's apparel
  # (hint: use a custom validation method - don't use a Validator class)

  validates :name,
            length: { minimum: 3 }



  validates :annual_revenue,
            presence: true,
            numericality: { only_integer: true },
            length: { minimum: 0}

  validates_with ApparelValidator

end
