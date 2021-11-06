# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Tarea 10: Crear 5 usuarios
#s.times do |nusuario|  
 #t = User.new
# t.first_name = "Usuario #{nusuario + 1}"
# t.last_name = "apellido"
# t.email_address = "correo@gmail.com"
# t.save()
#end
1.upto(5) do |nusuario| 
   t = User.new
  t.first_name = "Usuario #{nusuario}"
  t.last_name = "apellido"
  t.email_address = "correo@gmail.com"
  t.save()
end


puts "Usuarios creados: #{User.all.count}"
puts "Tarea 10. Hecha"

#Tarea 11: Crear blog
1.upto(5) do |nblog|
 b = Blog.new
 b.name = "blog #{nblog}"
 b.description = "Description"
 b.save()
end

puts "Blogs creados: #{Blog.all.count}"
puts "Tarea 11. Hecha"

#Tarea 12: Esteblecer que los tres primeros blog pertenezcan al primer usuario.
1.upto(3) do |nblog|
 ow = Owner.new
 ow.user = User.where(first_name: "Usuario 1").first
 ow.blog = Blog.where(name: "blog #{nblog}").first
 ow.save()
end
puts User.where(first_name: "Usuario 1").first.owner.count

puts "Tarea 12. Hecha"

#tarea 13
ow = Owner.new
ow.user = User.where(first_name: "Usuario 2").first
ow.blog = Blog.where(name: "blog 4").first
ow.save()

puts User.where(first_name: "Usuario 2").first.owner.count

puts User.where(first_name: "Usuario 2").first.owner
.where(blog: Blog.where(name: "blog 4").first).count

puts "tarea 13. hecha"

#tarea 14
 ow = Owner.new
 ow.user = User.where(first_name: "Usuario 5").first
 ow.blog = Blog.where(name: "blog 5").first
 ow.save()

 puts User.where(first_name: "Usuario 5").first.owner.count

puts User.where(first_name: "Usuario 5")
  .first.owner
  .where(blog: Blog.where(name: "blog 5").first).count

  puts "tares 14, hecha"
  
  #tarea 15

  1.upto(5) do |nblog|
    ow = Owner.new
    ow.user = User.where(first_name: "Usuario 3").first
    ow.blog = Blog.where(name: "blog #{nblog}").first
    ow.save
  end

  puts User.where(first_name: "Usuario 3").first.owner.count

 puts User.where(first_name: "Usuario 3").first.owner
  .where(blog: Blog
    .where(name: [
      "Blog 1", "Blog 2", "Blog 3", "Blog 4", "Blog 5"])).count

      puts "tarea 15. hecha"
  
 #tarea 16

1.upto(3) do |npost|
  p = Post.new
  p.title = "post #{npost}"
  p.content = "Contenido"
  p.blog = Blog.where(name: "blog 2").first
  p.user = User.where(first_name: "Usuario 1").first
  p.save()
end

ue = User.where(first_name: "Usuario 1").first
be = Blog.where(name: "blog 2").first


puts "Posts: #{Post.where(user: ue, blog: be).count}"
 
puts "tarea 16, hecha"
#tarea 17

us2 = User.where(first_name: "Usuario 2").first
ulb = Blog.where(name: "blog 5").first

1.upto(5) do |npost|
 p = Post.new
 p.title = "post #{npost}"
 p.content = "Contenido"
 p.user = us2
 p.blog = ulb
 p.save
end

puts "Post: #{Post.where(blog: ulb, user: us2).count}"

puts "Tarea 17. Hecho."




