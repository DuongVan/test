class Invoice < ActiveRecord::Base
 has_many :invoice_details
  accepts_nested_attributes_for :invoice_details, reject_if: :all_blank, allow_destroy: true
end
