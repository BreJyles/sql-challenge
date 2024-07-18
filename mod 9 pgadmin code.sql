DROP TABLE IF EXISTS "employees";
CREATE TABLE "departments" (
    "dept_no" varchar NOT NULL,
    "dept_name" varchar NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "employees" (
    "emp_no" int NOT NULL,
    "emp_title" varchar NOT NULL,
    "birth_date" date NOT NULL,
    "first_name" varchar NOT NULL,
    "last_name" varchar NOT NULL,
    "sex" varchar NOT NULL,
    "hire_date" date NOT NULL,
    PRIMARY KEY ("emp_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" int NOT NULL,
    "dept_no" varchar NOT NULL,
    CONSTRAINT "FK_dept_emp_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
    CONSTRAINT "FK_dept_emp_dept_no" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "salaries" (
    "emp_no" int NOT NULL,
    "salaries" int NOT NULL,
    CONSTRAINT "FK_salaries_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar NOT NULL,
    "emp_no" int NOT NULL,
    CONSTRAINT "FK_dept_manager_dept_no" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
    CONSTRAINT "FK_dept_manager_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "titles" (
    "title_id" varchar NOT NULL,
    "title" varchar NOT NULL,
    PRIMARY KEY ("title_id")
);
