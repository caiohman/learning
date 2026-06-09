create table if not exists station (
    id decimal(3),
    city varchar(21),
    state varchar(2),
    lat_n decimal(8,6),
    long_w decimal(9,6)
);

create table if not exists students (
    id decimal(3),
    name varchar(40),
    marks decimal(3)
);

create table if not exists employee (
    employee_id decimal(5),
    name varchar(40),
    months decimal(5),
    salary decimal(5)
);

create table if not exists triangles (
    A integer,
    B integer,
    C integer
);