% Employees
employee(mike).
employee(mary).
employee(martha).
employee(john).
employee(josh).
employee(julia).
employee(jack).

% Departments
department(production).
department(sales).
department(marketing).
department(accounting).

% Employee to Department Relationships
belongs_to(mike, production).
belongs_to(mary, production).
belongs_to(john, sales).
belongs_to(josh, sales).
belongs_to(julia, marketing).
belongs_to(jack, marketing).

% Projects
project(proj1).
project(proj2).
project(proj3).

% Employee to Project Assignments
assigned_to(mary, proj1).
assigned_to(martha, proj1).
assigned_to(martha, proj2).
assigned_to(josh, proj2).
assigned_to(julia, proj2).
assigned_to(jack, proj3).

% Helpers for "are x and y same" type queries
same_department(Emp1, Emp2) :-
    belongs_to(Emp1, Dept),
    belongs_to(Emp2, Dept).
same_project(Emp1, Emp2) :-
    assigned_to(Emp1, Proj),
    assigned_to(Emp2, Proj).

