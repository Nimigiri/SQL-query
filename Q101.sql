SELECT Name, Age,
  CASE
    WHEN Age >= 18 THEN 'adult'
    ELSE 'teen'
  END AS Status
FROM InputTable;
