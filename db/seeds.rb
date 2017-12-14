# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

admin = User.create(
  email: 'admin@user.cl',
  password: 'abc12345'
)
admin.add_role :admin

teacher = User.create(
  email: 'teacher@user.cl',
  password: 'abc12345'
)
teacher.add_role :teacher

student = User.create(
  email: 'student@user.cl',
  password: 'abc12345'
)
student.add_role :student

secretary = User.create(
  email: 'secretary@user.cl',
  password: 'abc12345'
)
secretary.add_role :secretary

parent = User.create(
  email: 'parent@user.cl',
  password: 'abc12345'
)
parent.add_role :parent
