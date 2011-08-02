class Register < ActiveRecord::Base
belongs_to :empdetails, :foreign_key =e_id; 'emp_id'

end
