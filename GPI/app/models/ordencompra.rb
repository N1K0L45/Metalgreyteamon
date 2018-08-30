class Ordencompra < ApplicationRecord
	has_many :materials, dependent: :destroy
	accepts_nested_attributes_for :materials, allow_destroy: true, reject_if: lambda {|attributes| attributes['material'].blank?}
end
