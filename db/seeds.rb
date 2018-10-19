# --- USER SEED DATA --- #
User.destroy_all

u1 = User.create!(first_name: "Admin", last_name: "Ltx", email: 'admin@storeltx.com', password: '123456', password_confirmation: '123456', admin: true)

u2 = User.create!(first_name: "Test", last_name: "2", email: 'test2@storeltx.com', password: '123456', password_confirmation: '123456', admin: false)

u3 = User.create!(first_name: "Test", last_name: "3", email: 'test3@storeltx.com', password: '123456', password_confirmation: '123456', admin: false)

# --- LINEITMES SEED DATA -- #
LineItem.destroy_all

# 8.times do |line_item|
#   LineItem.create!(

#   )
# end

# --- CATEGORIES SEED DATA -- #
Category.destroy_all

c1 = Category.create!(name: 'Men', description: '')
c2 = Category.create!(name: 'Women', description: '')
c3 = Category.create!(name: 'KiteSurf', description: '')
c4 = Category.create!(name: 'Surf', description: '')

# --- IMAGE SEED DATA -- #
Image.destroy_all

i1 = Image.create!(name: 'image', url: 'https://via.placeholder.com/350x250')
i2 = Image.create!(name: 'image', url: 'https://via.placeholder.com/350x250')
i3 = Image.create!(name: 'image', url: 'https://via.placeholder.com/350x250')
i4 = Image.create!(name: 'image', url: 'https://via.placeholder.com/350x250')



# --- PRODUCTS SEED DATA -- #
Product.destroy_all

p1 = Product.create!(name: 'White Shirt', description: 'The Stretch Slim Shirt from Burton Menswear is a classic white dress shirt with a functional, comfortable twist. The button-through shirt is made of a cotton-rich stretch fabric and features dark grey buttons for contrast detail.', brand: 'Polo', model: 'Long-shirt', price: 20000.00, size: 'Large', colour: 'white', category_id: c2.id);

p2 = Product.create!(name: 'Asics GEL Superion 2', description: 'Asics GEL Superion 2 Mens Running Shoes.', brand: 'Asics', model: 'GEL Superion 2', price: 16900.99, size: '42', colour: 'black', category_id: c1.id);

p3 = Product.create!(name: 'Lost Puddle Fish Carbon Wrap Surfboard', description: 'The PuddleFish is an extreme little speed machine. A fast and fishy spin on the ever popular Puddle Jumper.', brand: 'RipCurl', model: 'Fish', price: 109900.00 , size: '6.0', colour: 'white', category_id: c4.id);

p4 = Product.create!(name: 'Dice', description: 'Equally at home busting out freestyle moves like Reno Romeu and surfing waves like the World Champion Matchu Lopes, the Dice is a versatile kite that is perfect for the riders who like to mix their disciplines.', brand: 'Duotone', model: 'DICE FREESTYLE / WAVE', price: 259900.00 , size: '10', colour: 'blue', category_id: 8);

# --- TAGS SEED DATA -- #

t1 = Tag.create!(name: 'Clothes', description: '');
t2 = Tag.create!(name: 'Board', description: '');
t3 = Tag.create!(name: 'Kites', description: '');
t4 = Tag.create!(name: 'Tops', description: '');

# --- TAGGingS SEED DATA -- #

tg1 = Tagging.create!(tag_id: 't1.id', product_id: 'p1.id');
tg2 = Tagging.create!(tag_id: 't2.id', product_id: 'p2.id');
tg3 = Tagging.create!(tag_id: 't3.id', product_id: 'p4.id');
tg4 = Tagging.create!(tag_id: 't4.id', product_id: 'p3.id');

#Images belongs_to Product
p1.images << i1
p2.images << i2
p3.images << i3
p4.images << i4

#Product belongs_to Category
c1.products << p2
c2.products << p1
c3.products << p4
c4.products << p3