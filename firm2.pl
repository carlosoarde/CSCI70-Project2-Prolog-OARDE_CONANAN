% Project Status
status(proj1, completed).
status(proj2, completed).
status(proj3, ongoing).

% Department Heads
head_of(marketing, mike).


% Busy Department Rule
% Busy if there is no employee in the department who is not assigned to any project;
% this is logically equivalent to all of employees being assigned to projects.
busy_department(Dept) :-
    department(Dept),
    \+ (
        belongs_to(Emp, Dept),
        \+ assigned_to(Emp, _) 
    ).

% Efficient Employee Rule
% efficient if they are assigned to at least one project and none of their assigned
% projects are not completed; this is logically equivalent to having all their
% assigned projects be completed.
efficient_employee(Emp) :-
    assigned_to(Emp, _),
    \+ (
        assigned_to(Emp, Proj),
        status(Proj, ongoing)
    ).