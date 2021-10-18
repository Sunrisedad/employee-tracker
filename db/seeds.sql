INSERT INTO department (name)
VALUES ("Engineering"),
       ("Finance"),
       ("Legal"),
       ("Sales");

INSERT INTO roles (title, department_id, salary)
VALUES ("Junior Engineer", 1, 80000),
       ("Senior Engineer", 1, 120000),
       ("CPA", 2, 75000),
       ("Finance Executive", 2, 130000),
       ("Paralegal", 3, 60000),
       ("Laywer", 3, 125000),
       ("Sales Associate", 4, 80000),
       ("Sales Manager", 4, 150000);  

INSERT INTO employee(first_name, last_name, role_id, manager_id) 
    VALUES 
       ("Edward", "Gein", 1),
       ("Michael", "Meyers", 2),
       ("Jason", "Voorhees", 4),
       ("Richard", "Ramirez", 3),
       ("Ted", "Bundy", 2),
       ("John", "Gacy", 3),
       ("Joe", "Goldberg", 1,),
       ("Patrick", "Bateman", 4);

        