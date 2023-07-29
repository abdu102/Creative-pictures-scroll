create TABLE users (
    id Serial,
    username varchar(20) not null,
    age int not null
);
INSERT into users (username, age) values 
('Alisher', 20),
('Botir', 32);

create TABLE cars (
    id Serial,
    model varchar(20) not null,
    user_id int 
);

INSERT into cars (model, user_id) values 
('MAN', 2),
('MERS', 1);


SELECT model, json_build_object(u.username, u.age) user from cars c left join users u on c.user_id = u.id;

