INSERT INTO department (name)
VALUES
('Sales'),
('Engineering'),
('Legal'),
('Finance');

INSERT INTO roles (title, salary, department_id)
VALUES
('Junior Engineer', 80000, 2),
('Senior Engineer',120000,2),
('CPA',75000,4),
('Finance Executive',130000,4),
('Paralegal', 60000, 3),
('Lawyer',125000,3),
('Sales Associate',80000,1);



INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUES
  ('Edward', 'Gein', NULL, 3),
  ('Michael', 'Meyers', NULL, 6),
  ('Jason', 'Voorhees', NULL, 5),
  ('Richard', 'Ramirez', 1, 1),
  ('Ted', 'Bundy', 4, 2),
  ('John', 'Gacy', 1, 4),
  ('Joe', 'Goldberg', 2, 7),
  ('Patrick', 'Bateman', 1, 4);
