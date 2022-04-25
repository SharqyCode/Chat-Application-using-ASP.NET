CREATE TABLE tblImages
(
	Id int primary key identity,
	Name nvarchar (259),
	Size int, 
	ImageData varbinary (max)
) 
