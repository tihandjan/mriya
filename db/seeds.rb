11.times do |i|
    League.create(name: "U-#{i + 7}") unless League.count >= 10
end
User.create(email: 'mriya@email.com', password: 'mriyabestdream', password_confirmation: 'mriyabestdream').add_role(:admin) if User.find_by_email('mriya@email.com').blank?