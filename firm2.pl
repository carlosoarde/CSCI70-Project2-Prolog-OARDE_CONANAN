% Project Status
status(proj1, completed).
status(proj2, completed).
status(proj3, ongoing).

% Department Heads
head_of(marketing, mike).

% Busy Department Rule
busy_department(Dept) :-
    department(Dept),
    \+ (belongs_to(Emp, Dept), \+ assigned_to(Emp, _)).

% Efficient Employee Rule
efficient_employee(Emp) :-
    assigned_to(Emp, Proj),
    forall(assigned_to(Emp, P), status(P, completed)).
