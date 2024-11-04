-- Drop tables if they exist to avoid conflicts
DROP TABLE IF EXISTS classroom_coloring;
DROP TABLE IF EXISTS classroom;
DROP TABLE IF EXISTS coloring;

-- Create Coloring table
CREATE TABLE coloring (
    id INTEGER PRIMARY KEY,
    color TEXT NOT NULL,
    type TEXT NOT NULL,
    length INTEGER NOT NULL
);

-- Create Classroom table
CREATE TABLE classroom (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

-- Create ClassroomColoring table with foreign keys
CREATE TABLE classroom_coloring (
    classroom_id INTEGER,
    coloring_id INTEGER,
    PRIMARY KEY (classroom_id, coloring_id),
    FOREIGN KEY (classroom_id) REFERENCES classroom(id) ON DELETE CASCADE,
    FOREIGN KEY (coloring_id) REFERENCES coloring(id) ON DELETE CASCADE
);

-- Insert sample data into coloring table
INSERT INTO coloring (id, color, type, length) VALUES (1, 'Red', 'Marker', 15);
INSERT INTO coloring (id, color, type, length) VALUES (2, 'Red', 'Crayon', 8);
INSERT INTO coloring (id, color, type, length) VALUES (3, 'Red', 'Pencil', 10);

INSERT INTO coloring (id, color, type, length) VALUES (4, 'Blue', 'Marker', 12);
INSERT INTO coloring (id, color, type, length) VALUES (5, 'Blue', 'Marker', 11);
INSERT INTO coloring (id, color, type, length) VALUES (6, 'Blue', 'Crayon', 9);

INSERT INTO coloring (id, color, type, length) VALUES (7, 'Green', 'Pencil', 10);
INSERT INTO coloring (id, color, type, length) VALUES (8, 'Green', 'Marker', 14);
INSERT INTO coloring (id, color, type, length) VALUES (9, 'Green', 'Crayon', 13);

INSERT INTO coloring (id, color, type, length) VALUES (10, 'Yellow', 'Marker', 16);
INSERT INTO coloring (id, color, type, length) VALUES (11, 'Yellow', 'Crayon', 8);
INSERT INTO coloring (id, color, type, length) VALUES (12, 'Yellow', 'Pencil', 7);

INSERT INTO coloring (id, color, type, length) VALUES (13, 'Black', 'Crayon', 11);
INSERT INTO coloring (id, color, type, length) VALUES (14, 'Black', 'Marker', 15);
INSERT INTO coloring (id, color, type, length) VALUES (15, 'Black', 'Crayon', 9);

INSERT INTO coloring (id, color, type, length) VALUES (16, 'Purple', 'Pencil', 12);
INSERT INTO coloring (id, color, type, length) VALUES (17, 'Purple', 'Marker', 14);
INSERT INTO coloring (id, color, type, length) VALUES (18, 'Purple', 'Crayon', 10);

INSERT INTO coloring (id, color, type, length) VALUES (19, 'Orange', 'Marker', 15);
INSERT INTO coloring (id, color, type, length) VALUES (20, 'Orange', 'Pencil', 9);
INSERT INTO coloring (id, color, type, length) VALUES (21, 'Orange', 'Crayon', 8);

INSERT INTO coloring (id, color, type, length) VALUES (22, 'Green', 'Crayon', 11);
INSERT INTO coloring (id, color, type, length) VALUES (23, 'Blue', 'Marker', 15);
INSERT INTO coloring (id, color, type, length) VALUES (24, 'Red', 'Crayon', 9);

INSERT INTO coloring (id, color, type, length) VALUES (25, 'Red', 'Pencil', 12);
INSERT INTO coloring (id, color, type, length) VALUES (26, 'Red', 'Marker', 14);
INSERT INTO coloring (id, color, type, length) VALUES (27, 'Red', 'Crayon', 10);

INSERT INTO coloring (id, color, type, length) VALUES (28, 'Orange', 'Marker', 15);
INSERT INTO coloring (id, color, type, length) VALUES (29, 'Yellow', 'Pencil', 9);
INSERT INTO coloring (id, color, type, length) VALUES (30, 'Black', 'Crayon', 8);



-- Insert sample data into classroom table
INSERT INTO classroom (id, name) VALUES (1, 'Art Room');
INSERT INTO classroom (id, name) VALUES (2, 'Science Lab');
INSERT INTO classroom (id, name) VALUES (3, 'Math Room');
INSERT INTO classroom (id, name) VALUES (4, 'History Room');
INSERT INTO classroom (id, name) VALUES (5, 'Geography Room');


-- Insert sample data into classroom_coloring table
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 1);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 2);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 3);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (2, 4);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (2, 5);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (2, 6);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (3, 7);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (3, 8);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (3, 9);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (4, 10);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (4, 11);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (4, 12);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (5, 13);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (5, 14);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (5, 15);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 16);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 17);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 18);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 19);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (2, 20);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (2, 21);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 22);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (3, 23);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (4, 24);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (3, 25);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (1, 26);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (2, 27);

INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (5, 28);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (4, 29);
INSERT INTO classroom_coloring (classroom_id, coloring_id) VALUES (5, 30);
