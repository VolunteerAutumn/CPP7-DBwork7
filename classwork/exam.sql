create database UniversityDB
use UniversityDB

create table Faculties(
Id int not null primary key identity(1,1),
Name nvarchar(50) not null check(Name<>' ')
)

create table Students(
Id int not null primary key identity(1,1),
FullName nvarchar(50) not null check(FullName<>' '),
FacultyId int foreign key references Faculties(Id),
Year int not null check(Year <= 5 and Year >= 1),
GPA decimal(3,2) not null
)

create table Courses(
Id int not null primary key identity(1,1),
Name nvarchar(50) not null check(Name<>' '),
Credits int check (Credits > 0)
)

create table Enrollments (
    Id int primary key identity(1,1),
    StudentId int not null,
    CourseId int not null,
    Grade decimal(5,2) check (Grade >= 0 and Grade <= 100),
    foreign key (StudentId) references Students(Id),
    foreign key (CourseId) references Courses(Id)
)

insert into Faculties (Name) values ('Informatics');
insert into Faculties (Name) values ('Engineering');
insert into Faculties (Name) values ('Medicine');
insert into Faculties (Name) values ('Law');
insert into Faculties (Name) values ('Art');
insert into Faculties (Name) values ('Science');
insert into Faculties (Name) values ('Education');
insert into Faculties (Name) values ('Architecture');
insert into Faculties (Name) values ('Music');
insert into Faculties (Name) values ('Economics');
insert into Faculties (Name) values ('History');

insert into Students (FullName, FacultyId, Year, GPA) values ('Carmen Allsop', 4, 4, 1.64);
insert into Students (FullName, FacultyId, Year, GPA) values ('Gaby Enrique', 3, 1, 3.89);
insert into Students (FullName, FacultyId, Year, GPA) values ('Cleo Mirralls', 2, 2, 2.91);
insert into Students (FullName, FacultyId, Year, GPA) values ('Micky Haruard', 3, 2, 1.07);
insert into Students (FullName, FacultyId, Year, GPA) values ('Shir Denys', 7, 5, 1.38);
insert into Students (FullName, FacultyId, Year, GPA) values ('Renaud Bushell', 3, 5, 2.44);
insert into Students (FullName, FacultyId, Year, GPA) values ('Pamelina Mico', 6, 3, 2.62);
insert into Students (FullName, FacultyId, Year, GPA) values ('Lacee Pavluk', 3, 1, 4.51);
insert into Students (FullName, FacultyId, Year, GPA) values ('Kaleena Lorenzini', 9, 3, 2.39);
insert into Students (FullName, FacultyId, Year, GPA) values ('Adara Cordobes', 9, 3, 4.71);
insert into Students (FullName, FacultyId, Year, GPA) values ('Lyell Prydie', 4, 1, 4.32);
insert into Students (FullName, FacultyId, Year, GPA) values ('Phillipp Erskine', 10, 4, 1.99);
insert into Students (FullName, FacultyId, Year, GPA) values ('Coop Boothman', 8, 2, 3.18);
insert into Students (FullName, FacultyId, Year, GPA) values ('Meagan Tipperton', 4, 5, 2.95);
insert into Students (FullName, FacultyId, Year, GPA) values ('Bear Minero', 7, 3, 1.29);
insert into Students (FullName, FacultyId, Year, GPA) values ('Otes Geke', 1, 5, 1.42);
insert into Students (FullName, FacultyId, Year, GPA) values ('Forrest Barnshaw', 8, 1, 2.68);
insert into Students (FullName, FacultyId, Year, GPA) values ('Keefer Dymott', 4, 1, 1.55);
insert into Students (FullName, FacultyId, Year, GPA) values ('Lewes Fierro', 1, 2, 1.71);
insert into Students (FullName, FacultyId, Year, GPA) values ('Valentijn Lathee', 9, 4, 1.44);
insert into Students (FullName, FacultyId, Year, GPA) values ('Brandie Rault', 6, 5, 2.68);
insert into Students (FullName, FacultyId, Year, GPA) values ('Sherry Destouche', 2, 5, 3.79);
insert into Students (FullName, FacultyId, Year, GPA) values ('Leonard Cavendish', 3, 5, 1.12);
insert into Students (FullName, FacultyId, Year, GPA) values ('Donaugh Jime', 5, 3, 1.33);
insert into Students (FullName, FacultyId, Year, GPA) values ('Clyve Mounce', 10, 2, 4.66);
insert into Students (FullName, FacultyId, Year, GPA) values ('Ursala Mayfield', 3, 3, 4.44);
insert into Students (FullName, FacultyId, Year, GPA) values ('Langston Rous', 1, 1, 3.25);
insert into Students (FullName, FacultyId, Year, GPA) values ('Letisha MacHarg', 7, 2, 1.45);
insert into Students (FullName, FacultyId, Year, GPA) values ('Hannie Mashal', 10, 1, 4.09);
insert into Students (FullName, FacultyId, Year, GPA) values ('Kyrstin Whiskin', 3, 4, 3.14);
insert into Students (FullName, FacultyId, Year, GPA) values ('Erik Kirke', 9, 5, 2.35);
insert into Students (FullName, FacultyId, Year, GPA) values ('Berton Bissex', 2, 3, 3.01);
insert into Students (FullName, FacultyId, Year, GPA) values ('Deloria Doumerque', 4, 2, 2.17);
insert into Students (FullName, FacultyId, Year, GPA) values ('Minnaminnie Measham', 9, 1, 1.49);
insert into Students (FullName, FacultyId, Year, GPA) values ('Gavra Rudderham', 4, 1, 2.78);
insert into Students (FullName, FacultyId, Year, GPA) values ('Meir Westall', 7, 4, 2.41);
insert into Students (FullName, FacultyId, Year, GPA) values ('Dolph Kendrew', 6, 2, 4.52);
insert into Students (FullName, FacultyId, Year, GPA) values ('Chaunce Derrett', 4, 5, 2.93);
insert into Students (FullName, FacultyId, Year, GPA) values ('Herrick Gever', 10, 4, 3.27);
insert into Students (FullName, FacultyId, Year, GPA) values ('Ynez Hablet', 9, 5, 2.27);
insert into Students (FullName, FacultyId, Year, GPA) values ('Clovis L''Homme', 2, 5, 3.98);
insert into Students (FullName, FacultyId, Year, GPA) values ('Dianemarie Skittrell', 10, 2, 1.78);
insert into Students (FullName, FacultyId, Year, GPA) values ('Rozelle Evert', 10, 2, 2.23);
insert into Students (FullName, FacultyId, Year, GPA) values ('Brenn Shailer', 6, 4, 1.77);
insert into Students (FullName, FacultyId, Year, GPA) values ('Chas Heggison', 10, 3, 4.24);
insert into Students (FullName, FacultyId, Year, GPA) values ('Donavon Ekkel', 2, 2, 1.28);
insert into Students (FullName, FacultyId, Year, GPA) values ('Devlen Rosenstock', 2, 3, 3.8);
insert into Students (FullName, FacultyId, Year, GPA) values ('Archambault Poppy', 4, 2, 2.57);
insert into Students (FullName, FacultyId, Year, GPA) values ('Bobbie Bachanski', 6, 4, 1.6);
insert into Students (FullName, FacultyId, Year, GPA) values ('Patrizia Desborough', 4, 3, 2.29);
insert into Students (FullName, FacultyId, Year, GPA) values ('Marla Skerman', 7, 3, 2.92);
insert into Students (FullName, FacultyId, Year, GPA) values ('Aymer Drakes', 10, 5, 5.0);
insert into Students (FullName, FacultyId, Year, GPA) values ('Ursula Tzarkov', 1, 4, 2.18);
insert into Students (FullName, FacultyId, Year, GPA) values ('Marc Patel', 2, 2, 2.65);
insert into Students (FullName, FacultyId, Year, GPA) values ('Adorne Heminsley', 2, 5, 2.81);
insert into Students (FullName, FacultyId, Year, GPA) values ('Chase Lanmeid', 8, 2, 4.06);
insert into Students (FullName, FacultyId, Year, GPA) values ('Cami Kerans', 10, 1, 1.52);
insert into Students (FullName, FacultyId, Year, GPA) values ('Boy Scarlin', 2, 3, 3.4);
insert into Students (FullName, FacultyId, Year, GPA) values ('Emelen Moan', 2, 4, 4.27);
insert into Students (FullName, FacultyId, Year, GPA) values ('Manfred Blaby', 10, 2, 2.49);
insert into Students (FullName, FacultyId, Year, GPA) values ('Jule De Matteis', 8, 5, 4.16);
insert into Students (FullName, FacultyId, Year, GPA) values ('Iggie Kinleyside', 6, 3, 1.76);
insert into Students (FullName, FacultyId, Year, GPA) values ('Ron Hendrick', 5, 5, 1.37);
insert into Students (FullName, FacultyId, Year, GPA) values ('Beltran Creek', 5, 5, 4.67);
insert into Students (FullName, FacultyId, Year, GPA) values ('Adelaida Witten', 6, 2, 1.58);
insert into Students (FullName, FacultyId, Year, GPA) values ('Walden Bonifazio', 3, 2, 3.84);
insert into Students (FullName, FacultyId, Year, GPA) values ('Merl Bavester', 4, 1, 3.41);
insert into Students (FullName, FacultyId, Year, GPA) values ('Koralle Fraser', 7, 2, 1.61);
insert into Students (FullName, FacultyId, Year, GPA) values ('Cindee Masseo', 6, 5, 2.78);
insert into Students (FullName, FacultyId, Year, GPA) values ('Costanza Baythorp', 1, 5, 2.89);
insert into Students (FullName, FacultyId, Year, GPA) values ('Neiro Galawastik', 1, 1, 5.0);

insert into Courses (Name, Credits) values ('Introduction to Psychology', 37851);
insert into Courses (Name, Credits) values ('Advanced Calculus', 45356);
insert into Courses (Name, Credits) values ('History of Art', 45227);
insert into Courses (Name, Credits) values ('Computer Programming 101', 21553);
insert into Courses (Name, Credits) values ('Creative Writing Workshop', 20562);
insert into Courses (Name, Credits) values ('Environmental Science', 48690);
insert into Courses (Name, Credits) values ('Public Speaking', 32493);
insert into Courses (Name, Credits) values ('Introduction to Economics', 25093);
insert into Courses (Name, Credits) values ('Music Theory', 40378);
insert into Courses (Name, Credits) values ('Physical Education', 26646);

insert into Enrollments (StudentId, CourseId, Grade) values (25, 3, 89.06);
insert into Enrollments (StudentId, CourseId, Grade) values (45, 4, 94.23);
insert into Enrollments (StudentId, CourseId, Grade) values (37, 1, 82.62);
insert into Enrollments (StudentId, CourseId, Grade) values (58, 10, 21.2);
insert into Enrollments (StudentId, CourseId, Grade) values (51, 9, 80.92);
insert into Enrollments (StudentId, CourseId, Grade) values (43, 9, 10.98);
insert into Enrollments (StudentId, CourseId, Grade) values (49, 9, 71.0);
insert into Enrollments (StudentId, CourseId, Grade) values (19, 1, 49.3);
insert into Enrollments (StudentId, CourseId, Grade) values (23, 4, 52.46);
insert into Enrollments (StudentId, CourseId, Grade) values (14, 5, 62.5);
insert into Enrollments (StudentId, CourseId, Grade) values (48, 8, 44.22);
insert into Enrollments (StudentId, CourseId, Grade) values (67, 4, 68.47);
insert into Enrollments (StudentId, CourseId, Grade) values (42, 5, 29.77);
insert into Enrollments (StudentId, CourseId, Grade) values (57, 9, 89.77);
insert into Enrollments (StudentId, CourseId, Grade) values (11, 1, 46.24);
insert into Enrollments (StudentId, CourseId, Grade) values (38, 3, 12.31);
insert into Enrollments (StudentId, CourseId, Grade) values (15, 9, 25.1);
insert into Enrollments (StudentId, CourseId, Grade) values (64, 2, 59.71);
insert into Enrollments (StudentId, CourseId, Grade) values (61, 1, 35.88);
insert into Enrollments (StudentId, CourseId, Grade) values (24, 6, 78.98);
insert into Enrollments (StudentId, CourseId, Grade) values (46, 5, 80.07);
insert into Enrollments (StudentId, CourseId, Grade) values (52, 6, 9.58);
insert into Enrollments (StudentId, CourseId, Grade) values (2, 1, 76.52);
insert into Enrollments (StudentId, CourseId, Grade) values (31, 2, 45.84);
insert into Enrollments (StudentId, CourseId, Grade) values (70, 2, 20.65);
insert into Enrollments (StudentId, CourseId, Grade) values (10, 9, 48.57);
insert into Enrollments (StudentId, CourseId, Grade) values (53, 4, 73.15);
insert into Enrollments (StudentId, CourseId, Grade) values (30, 3, 87.88);
insert into Enrollments (StudentId, CourseId, Grade) values (22, 3, 80.2);
insert into Enrollments (StudentId, CourseId, Grade) values (53, 3, 6.75);
insert into Enrollments (StudentId, CourseId, Grade) values (5, 5, 51.27);
insert into Enrollments (StudentId, CourseId, Grade) values (44, 3, 84.49);
insert into Enrollments (StudentId, CourseId, Grade) values (4, 6, 48.76);
insert into Enrollments (StudentId, CourseId, Grade) values (20, 9, 4.48);
insert into Enrollments (StudentId, CourseId, Grade) values (31, 2, 18.13);
insert into Enrollments (StudentId, CourseId, Grade) values (36, 9, 69.97);
insert into Enrollments (StudentId, CourseId, Grade) values (4, 5, 97.26);
insert into Enrollments (StudentId, CourseId, Grade) values (33, 1, 11.84);
insert into Enrollments (StudentId, CourseId, Grade) values (49, 4, 19.06);
insert into Enrollments (StudentId, CourseId, Grade) values (43, 2, 17.03);
insert into Enrollments (StudentId, CourseId, Grade) values (25, 10, 69.58);
insert into Enrollments (StudentId, CourseId, Grade) values (40, 8, 62.55);
insert into Enrollments (StudentId, CourseId, Grade) values (22, 8, 7.43);
insert into Enrollments (StudentId, CourseId, Grade) values (38, 3, 82.09);
insert into Enrollments (StudentId, CourseId, Grade) values (21, 5, 68.17);
insert into Enrollments (StudentId, CourseId, Grade) values (48, 7, 20.52);
insert into Enrollments (StudentId, CourseId, Grade) values (46, 4, 34.36);
insert into Enrollments (StudentId, CourseId, Grade) values (46, 9, 69.88);
insert into Enrollments (StudentId, CourseId, Grade) values (18, 7, 20.95);
insert into Enrollments (StudentId, CourseId, Grade) values (12, 3, 7.39);

select 
	FullName as [Student's Name],
	f.Name as [Faculty]
from Students s
join Faculties f on s.FacultyId = f.Id

select
	s.FullName as [Student's Name]
from Students s
where s.GPA > 4

select
    c.Name as [Course Name]
from Courses c
join Enrollments e on e.CourseId = c.Id
join Students s on e.StudentId = s.Id
group by c.Name
having count(s.Id) > 2;

select 
    c.Name as [Course Name],
    avg(e.Grade) as [Average Grade]
from Courses c
join Enrollments e on e.CourseId = c.Id
group by c.Name;

select 
    s.FullName
from Students s
left join Enrollments e on s.Id = e.StudentId
where e.Id is null;

select
	f.Name
from Faculties f
join Students s on s.FacultyId = f.Id
group by f.Name
having count(s.Id) > 1

update s
set s.GPA = s.GPA * 1.05
from Students s
join Faculties f on s.FacultyId = f.Id
where f.Name = 'Informatics';

delete from Students
where GPA < 60;

insert into Students (FullName, FacultyId, Year, GPA) values ('Iroha Shirogane', 11, 4, 5.0)

select
	s.FullName as [Student's Name],
	count(c.Id) as [Amount of courses]
from Students s
join Enrollments e on e.StudentId = s.Id
join Courses c on c.Id = e.CourseId
group by s.FullName
