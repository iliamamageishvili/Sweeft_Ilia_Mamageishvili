# Sweeft_Ilia_Mamageishvili
sql პროგრამის გასაშვებად საჭიროა ბრძანება
SELECT t.name, t.lname FROM teacher t INNER JOIN teaches on teaches.teacherID = t.ID INNER JOIN pupil p on p.school_year = teaches.school_year WHERE p.name = 'Giorgi';
