class User
  attr_accessor :email, :age
  @@all_user = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_user << self
  end

  def self.all
    @@all_user
  end

  def self.find_by_email(email_to_search)
    @@all_user.each do |user|
      puts user.email == email_to_search ? user.age : 'No match'
    end
  end
end
