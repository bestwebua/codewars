/*
Easy SQL: LowerCase by Vladislav Trotsenko.

Given a demographics table in the following format:

demographics table schema

    id
    name
    birthday
    race

You need to return the same table where all letters are
lowercase in the race column.
*/

SELECT id, name, birthday, LOWER(race) AS race FROM demographics