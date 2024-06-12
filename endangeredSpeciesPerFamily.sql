SELECT f.fName, COUNT(f.fName) as familyCount
FROM species s JOIN genus g ON s.gName = g.gName JOIN family f ON g.fName = f.fName
WHERE category = "CR" OR category = "EN" OR category = "VU"
GROUP BY f.fName;