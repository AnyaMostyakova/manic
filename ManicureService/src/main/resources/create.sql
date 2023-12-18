CREATE SEQUENCE client_seq;
CREATE SEQUENCE service_seq;
CREATE SEQUENCE visits_seq;

CREATE TABLE client (
                        id BIGINT PRIMARY KEY DEFAULT nextval('client_seq'),
                        name VARCHAR (255),
                        phonenumber VARCHAR (255),
                        password VARCHAR(255),
                        CONSTRAINT unique_user UNIQUE (name)
);

CREATE TABLE service (
                         id BIGINT PRIMARY KEY DEFAULT nextval('service_seq'),
                         name VARCHAR(255),
                         price DOUBLE PRECISION
);

CREATE TABLE visits (
                        id BIGINT PRIMARY KEY DEFAULT nextval('visits_seq'),
                        service_id BIGINT,
                        client_id BIGINT,
                        purchasedate DATE,
                        CONSTRAINT service_fk FOREIGN KEY (service_id) REFERENCES service(id),
                        CONSTRAINT client_fk FOREIGN KEY (client_id) REFERENCES client(id)
);

INSERT INTO service (name,price) VALUES
                                     ('Japanese manicure' , '1200'),
                                     ('European manicure' , '1200'),
                                     ('Hardware manicure' , '1500'),
                                     ('Edged manicure' , '1500'),
                                     ('Combined manicure' , '1500'),
                                     ('Monochrome gel polish manicure' ,'2000'),
                                     ('Monochrome shea-varnish manicure' , '2000'),
                                     ('Plain gel polish+design' ,'2500'),
                                     ('Plain shea-varnish coating +design' , '2500'),
                                     ('Hardware men''s manicure' , '1500'),
                                     ('European men''s manicure' , '2000'),
                                     ('Classic men''s manicure' , '2000');

INSERT INTO client (name, phonenumber, password)
VALUES ('Admin', '+79534862110', '1234');

