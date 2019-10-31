class Student < ApplicationRecord
	validates :stuname, uniqueness: { scope: :section }
	SECTIONS =["firstclass","second calss","third class","fouth class","fifth class","sixth class","seventh class","eighth class","nineth class","tength class"]
                   
end
