class Profile < ActiveRecord::Base
   attr_accessible :name

   SYSTEM_ADMIN_PROFILE = 1
   STORE_ADMIN_PROFILE  = 2
   STORE_SELLER_PROFILE = 3

end
