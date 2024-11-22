% Project Status
status(proj1, completed).
status(proj2, completed).
status(proj3, ongoing).

% Department Heads
head_of(marketing, mike).

% Busy Department Rule
busy_department(Dept) :-
    department(Dept), % Check if Dept is a valid department
    \+ (belongs_to(Emp, Dept), \+ assigned_to(Emp, _)). % Ensure all employees in Dept are assigned to at least one project

% Efficient Employee Rule
efficient_employee(Emp) :-
    assigned_to(Emp, _), % Ensure the employee is assigned to at least one project
    forall(assigned_to(Emp, P), status(P, completed)). % Check that all assigned projects are completed