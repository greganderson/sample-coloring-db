# Sample Coloring DB

This is a sample database for a coloring app. It includes tables for classrooms, colors, and colorings.

## Tables

### Classrooms

Contains information about the classrooms in the school.

| Column | Type    | Description                         |
| ------ | ------- | ----------------------------------- |
| id     | int     | Unique identifier for the classroom |
| name   | varchar | Name of the classroom               |

### Coloring

Contains information about the coloring objects (pencils, markers, crayons) in the school.

| Column | Type    | Description                                               |
| ------ | ------- | --------------------------------------------------------- |
| id     | int     | Unique identifier for the coloring object                 |
| color  | varchar | Color of the coloring object                              |
| type   | varchar | Type of the coloring object (e.g. pencil, marker, crayon) |
| length | int     | Length of the coloring object                             |

### Classroom Coloring

Linking table between classroom and coloring.

| Column       | Type | Description                 |
| ------------ | ---- | --------------------------- |
| classroom_id | int  | Foreign key to classroom.id |
| coloring_id  | int  | Foreign key to coloring.id  |
