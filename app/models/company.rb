class Company < ActiveRecord::Base
	has_many : be_main_company , :foreign_key => 'main_company_id' , :class_name => 'parties'
	has_many : be_secondary_company , :foreign_key => 'secondary_company_id' , :class_name => 'parties'
	has_many : people
end
