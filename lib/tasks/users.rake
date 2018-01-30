namespace :users do
  task :add, [:email_address, :name, :password] => [:environment] do |t, args|
    user = User.new
    user.email_address = args[:email_address]
    user.name = args[:name]
    user.password = args[:password]
    
    user.save
  end
end