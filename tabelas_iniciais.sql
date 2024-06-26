CREATE TABLE hotels (
hotel_id SERIAL PRIMARY KEY,
name VARCHAR NOT NULL,
phone VARCHAR NOT NULL,
address VARCHAR NOT NULL,
rating INTEGER NOT NULL
);

INSERT INTO hotels (name, phone, address, rating ) VALUES ('Hilton', '(39) 98566-1222', '1st avenue, Chicago', 4);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Plaza', '(39) 98566-12278', '3rd avenue, Michigan', 3);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Roma', '(39) 98566-1256', 'Main Street, Ohio', 5);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Paris', '(39) 98566-1442', 'Main Boulevard, NY', 4);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Boulevard', '(39) 98566-1333', 'Cedar Lake street, Carbondale', 3);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Hilton 2', '(39) 98566-1222', '1st avenue, Chicago', 4);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Plaza 2', '(39) 98566-12278', '3rd avenue, Michigan', 3);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Roma 2', '(39) 98566-1256', 'Main Street, Ohio', 5);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Paris 2', '(39) 98566-1442', 'Main Boulevard, NY', 4);
INSERT INTO hotels (name, phone, address, rating ) VALUES ('Boulevard 2', '(39) 98566-1333', 'Cedar Lake street, Carbondale', 3);



CREATE TABLE rooms (
room_id SERIAL PRIMARY KEY,
type VARCHAR NOT NULL,
daily_rent DOUBLE PRECISION NOT NULL,
hotel_id INTEGER   NOT NULL,
CONSTRAINT fk_hotels FOREIGN KEY (hotel_id) REFERENCES hotels (hotel_id)
);

INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  1, 200);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  2, 300);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard',  3, 100);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  4, 150);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard',  5, 80);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  5, 200);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  4, 300);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard',  2, 100);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  3, 150);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard',  1, 80);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  1, 200);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  2, 300);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard',  3, 100);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  4, 150);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard',  5, 80);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  5, 200);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  4, 300);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard',  2, 100);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double',  3, 150);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard',  1, 80);



CREATE TABLE public.users (
    user_id uuid PRIMARY KEY NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    role character varying(255) NOT NULL
);

INSERT INTO public.users (user_id, first_name, last_name, email, password, phone, role) VALUES ('e978211e-d581-49f7-9a86-efe01a7309f8', 'Angelo 1', 'Ferreira', 'angelo1.ferreira@email.com', 'senha123', '(39) 98566-4556', 'customer');
INSERT INTO public.users (user_id, first_name, last_name, email, password, phone, role) VALUES ('5777a9d4-8d4f-48c4-86b2-aa3de5ff7a3f', 'Fabio 1', 'Ferreira', 'fabio1.ferreira@email.com', 'senha123', '(39) 98566-4556', 'customer');
INSERT INTO public.users (user_id, first_name, last_name, email, password, phone, role) VALUES ('fbcfeed3-10ce-4638-8991-ed8c85a40b5c', 'Maria 1', 'Ferreira', 'maria1.ferreira@email.com', 'senha123', '(39) 98566-4556', 'customer');



CREATE TABLE public.reservations (
    reservation_id SERIAL PRIMARY KEY,
    checkin date NOT NULL,
    checkout date NOT NULL,
    total_rent double precision NOT NULL,
    number_of_guests integer NOT NULL,
    room_id integer,
    user_id uuid,
CONSTRAINT fk_rooms FOREIGN KEY (room_id) REFERENCES rooms (room_id),
CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users (user_id)
);

INSERT INTO public.reservations (reservation_id, checkin, checkout, total_rent, number_of_guests, room_id, user_id) VALUES (1, '2020-12-05', '2020-12-07', 400, 2, 1, 'e978211e-d581-49f7-9a86-efe01a7309f8');
INSERT INTO public.reservations (reservation_id, checkin, checkout, total_rent, number_of_guests, room_id, user_id) VALUES (2, '2020-12-15', '2020-12-17', 600, 2, 2, '5777a9d4-8d4f-48c4-86b2-aa3de5ff7a3f');
INSERT INTO public.reservations (reservation_id, checkin, checkout, total_rent, number_of_guests, room_id, user_id) VALUES (3, '2020-12-25', '2020-12-27', 600, 2, 2, 'fbcfeed3-10ce-4638-8991-ed8c85a40b5c');