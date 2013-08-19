class Party < ActiveRecord::Base
	belongs_to :main_company , :foreign_key => 'main_company_id' , :class_name => 'companies'
	belongs_to :secondary_company , :foreign_key => 'secondary_company_id' , :class_name => 'companies'
	belongs_to :connector , :foreign_key => 'connector' , :class_name => 'people'
	belongs_to :biller , :foreign_key => 'biller' , :class_name => 'people'

end
