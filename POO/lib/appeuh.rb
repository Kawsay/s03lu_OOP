require 'pry'

class User
  attr_writer :mastercard
  attr_reader :birthday
  attr_accessor :email

  @@user_count = 0

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count += 1
    puts "Wilkomen user_n°#{@@user_count}"
  end
  
  def self.count
    return @@user_count # Methode de class : User.count
  end

  def greet
    puts 'Bj, Monde !'
  end

  def say_hello_to_someone(name)
    puts "Yo #{name} !"
  end

  def show_itself
    print "L'instance : #{self}\n"
  end

  def update_email(email)
    @user_email = email
  end

  def read_email
    puts @user_email
    return @user_email
  end

  def read_mastercard
    puts @mastercard
    return @mastercard
  end

  def update_birthday(birthday)
    puts "updating birthday to #{birthday}"
    @birthday = birthday
  end

  def access_check_email(email)
    puts check_email(email)
  end

  private

  def check_email(email_to_check)
    print "Verifying email ... "
    return email_to_check.is_a?(String)
  end
end

julie = User.new('aze')
# paul = User.new('aze')

julie.email = "azeaze"
julie.access_check_email("aze")



# puts User.count
# paul = User.new

# julie.mastercard = "42 42"
# julie.mastercard  => error (attr_writter)
# julie.birthday = '12/12/11'  => error (attr_reader)
# julie.update_birthday('12/12/12')
# puts julie.birthday
# julie.email = "attr_acc"
# puts julie.email