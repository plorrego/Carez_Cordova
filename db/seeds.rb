# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

admin = User.create(
  email: "admin@user.cl",
  password: "abc12345"
)
admin.add_role :admin

teachers = []
(1..5).each do |n|
  teacher = User.create(
    email: "teacher#{n}@user.cl",
    password: "abc12345"
    )
  teacher.add_role :teacher
  teachers << teacher
end

students = []
(1..20).each do |n|
  student = User.create(
    email: "student#{n}@user.cl",
    password: "abc12345"
  )
  student.add_role :student
  students << student
end

secretaries = []
(1..2).each do |n|
  secretary = User.create(
    email: "secretary#{n}@user.cl",
    password: "abc12345"
  )
  secretary.add_role :secretary
  secretaries << secretary
end

parents = []
(1..20).each do |n|
  parent = User.create(
    email: "parent#{n}@user.cl",
    password: "abc12345"
  )
  parent.add_role :parent
  parents << parent
end

groups = []
(0..4).each do |n|
  group = Group.create(
    user_id: teachers[n].id
  )
  groups << group
end

student_groups = []
groups.each do |g|
  (1..7).each do |n|
    student_group = StudentGroup.create(
      group_id: g.id,
      user_id: students.sample(1)[0].id
    )
    student_groups << student_group
  end
end

(1..5).each do |i|
  lectures = []
  (0..4).each do |n|
    lecture = Lecture.create(
      group_id: groups[n].id,
      user_id: groups[n].user_id
    )
    lectures << lecture
  end
end

questions = []
(1..100).each do |n|
  question = Question.create()
  questions << question
end

papers = []
(1..10).each do |n|
  paper = Paper.create(
    user_id: admin.id
    )
  papers << paper
end

question_papers = []
papers.each do |p|
  (1..20).each do |n|
    question_paper = QuestionPaper.create(
      paper_id: p.id,
      question_id: questions.sample(1)[0].id
    )
    question_papers << question_paper
  end
end












