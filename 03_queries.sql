SELECT * FROM users;

DELETE FROM users WHERE id =100;

INSERT INTO users(firstName,lastName,age,birthday,married,email) VALUES("Oscar","Torrez",24,"1998-10-10",false,"oscar_torrez@mail.com");


#Transfer:
SELECT * FROM transfer;

INSERT INTO transfer(id,amount,date) VALUES(100,700,"2022-08-26");
DELETE FROM transfer WHERE id = 100;

UPDATE transfer SET idUser=100 WHERE id=535;

ALTER TABLE transfer ADD CONSTRAINT transfers_users_fk FOREIGN KEY (idUser) REFERENCES users(id);

# Scaping
SELECT `update` FROM ecommerce.users;