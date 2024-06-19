CREATE TABLE hotels (
    hotel_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    phone VARCHAR NOT NULL,
    address VARCHAR NOT NULL,
    rating INTEGER NOT NULL
);

CREATE TABLE rooms (
    room_id SERIAL PRIMARY KEY,
    type VARCHAR NOT NULL,
    daily_rent DOUBLE PRECISION NOT NULL,
    hotel_id INTEGER NOT NULL,
    CONSTRAINT fk_hotels FOREIGN KEY (hotel_id) REFERENCES hotels (hotel_id)
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

INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 1, 200);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 2, 300);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard', 3, 100);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 4, 150);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard', 5, 80);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 5, 200);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 4, 300);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard', 2, 100);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 3, 150);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard', 1, 80);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 1, 200);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 2, 300);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard', 3, 100);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('Double', 4, 150);
INSERT INTO rooms (type, hotel_id, daily_rent) VALUES ('standard', 5, 80);