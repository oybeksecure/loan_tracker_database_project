drop table if exists users;

create table users(
    user_id varchar(8) not null,
    username varchar(50) not null,
    email varchar(100)  not null,
    password varchar(255) check (len(password)>=8),
    primary key (user_id)
);

create table loan_types(
    loan_type_id varchar(5) not null,
    type_name varchar(50) not null ,
    primary key(loan_type_id)
);
select *from loan_types;

create table loan_status(
    status_id varchar(5) not null,
    status_name varchar(50) not null ,
    primary key(status_id)
);
select *from loan_status;

create table people(
    person_id varchar(10) not null,
    user_id varchar(8) not null,
    name varchar(100) not null UNIQUE,
    phone  varchar(20) not null,
    primary key (person_id),
    foreign key (user_id) references users(user_id)
);
select * from people;

create table loans (
    loan_id varchar(8) not null,
    lender_id varchar(10) not null,
    borrower_id varchar(10) not null,
    l_amount decimal(15,2) not null,
    issue_date date not null,
    deadline_date date not null, 
    loan_type_id varchar(5) not null,
    status_id varchar(5) not null,
    primary key(loan_id),
    foreign key(lender_id)references people(person_id) on delete no action on update no action,
    foreign key(borrower_id)references people(person_id) on delete no action on update no action,
    foreign key(loan_type_id)references loan_types(loan_type_id),
    foreign key(status_id)references loan_status(status_id)
);
select *from  loans;

create table payment_methods(
    method_id varchar(5) not null,
    method_name varchar(50) not null ,
    primary key(method_id)
);
select *from payment_methods;

create table currencies(
    currency_id varchar(5) not null,
    currency_code varchar(10) not null unique,
    currency_name varchar(10) not null,
    primary key (currency_id)
);
select *from currencies;

create table collateral (
    collateral_id varchar(12) not null,
    loan_id varchar(8) not null,
    asset_name varchar(100) not null,
    estimated_value decimal(15,2) not null,
    description varchar(255) not null,
    primary key(collateral_id),
    foreign key (loan_id) references loans(loan_id)
);
select *from collateral;

create table payments(
    payment_id varchar(10) not null,
    loan_id varchar(8) not null,
    p_amount decimal(15,2) not null,
    payment_date date not null,
    method_id varchar(5) not null,
    primary key(payment_id),
    foreign key (loan_id) references loans(loan_id),
    foreign key (method_id) references payment_methods(method_id)
);

select *from payments;

create table transactions(
    transactions_id varchar(5) not null,
    loan_id varchar(8) not null,
    payment_id varchar(10) not null,
    type varchar(50) not null,
    t_amount decimal(15,2) not null,
    primary key(transactions_id),
    foreign key (loan_id) references loans(loan_id),
    foreign key (payment_id) references payments(payment_id)
);
select *from transactions;

create table reminders(
    reminder_id varchar(5) not null,
    loan_id varchar(8) not null,
    remind_date date not null,
    message varchar(255) not null,
    status varchar(50) not null,
    primary key(reminder_id),
    foreign key (loan_id) references loans(loan_id)
);
select *from reminders;

create table notes(
    note_id varchar(5) not null,
    loan_id varchar(8) not null,
    text varchar(255) not null,
    primary key(note_id),
    foreign key (loan_id) references loans(loan_id)
);
select *from notes;

create table activity_logs(
    log_id varchar(5) not null,
    user_id varchar(8) not null,
    action varchar(255) not null,
    primary key(log_id),
    foreign key(user_id)references users(user_id)
);
select *from activity_logs;