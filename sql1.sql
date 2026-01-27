create table students(
student_id		serial primary key, 
name			varchar(20) not null,
email			varchar(40) unique
);
create table course(
course_id		serial primary key,
course_name		varchar(20) not null,
credits			int check(credits>0)
);
create table enroll (
enroll_id		serial primary key,
student_id		int not null,
course_id		int not null,
foreign key(student_id) references students(student_id) on delete cascade ,
foreign key(course_id) references course(course_id) on delete cascade
);
select * from students;
select * from course;
select * from enroll;