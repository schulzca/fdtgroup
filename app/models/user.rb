class User < ActiveRecord::Base

  before_save {self.email = email.downcase}
  before_save {self.username = username.downcase}
  before_save :set_digest


  validates :username, :presence => true, :length => {:minimum => 6}, :uniqueness => {:case_sensitive => false}
  validates :email, :presence => true, :uniqueness => {:case_sensitive => false}

  attr_accessible :first_name, :last_name, :company_name,
                  :company_address, :email, :username, :password, :password_confirmation

  def set_digest
    result = true
    if !self.password_digest
      if(self.password != self.password_confirmation or
        self.password.length < 6)
        result = false
      else
        self.password_digest = self.password.crypt("saltForFDTGroup")
        self.password = nil
        self.password_confirmation = nil
      end
    end
    result
  end

  def authenticate(password)
    self.password_digest == password.crypt("salfForFDTGroup") 
  end
  
  def password= value
    @password = value
  end

  def password
    @password
  end

  def password_confirmation= value
    @password_confirmation = value
  end

  def password_confirmation
    @password_confirmation
  end

end
