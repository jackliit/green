class Person < ActiveRecord::Base
	belongs_to :company , :foreign_key => 'company_id' , :class_name => 'company'
	
	has_many :be_connector , :foreign_key => 'connector' , :class_name => 'parties'
	has_many :be_biller , :foreign_key => 'biller' , :class_name => 'parties'
end
