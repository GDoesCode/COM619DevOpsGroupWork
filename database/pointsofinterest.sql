--
-- File generated with SQLiteStudio v3.4.4 on Mon Oct 23 19:18:03 2023
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: poi_reviews
DROP TABLE IF EXISTS poi_reviews;

CREATE TABLE IF NOT EXISTS poi_reviews (
    id     INTEGER PRIMARY KEY AUTOINCREMENT,
    poi_id INTEGER,
    review TEXT
);

INSERT INTO poi_reviews (
                            id,
                            poi_id,
                            review
                        )
                        VALUES (
                            23,
                            1,
                            'test'
                        );

INSERT INTO poi_reviews (
                            id,
                            poi_id,
                            review
                        )
                        VALUES (
                            24,
                            23,
                            'test'
                        );

INSERT INTO poi_reviews (
                            id,
                            poi_id,
                            review
                        )
                        VALUES (
                            25,
                            23,
                            'test'
                        );

INSERT INTO poi_reviews (
                            id,
                            poi_id,
                            review
                        )
                        VALUES (
                            26,
                            295,
                            'test'
                        );

INSERT INTO poi_reviews (
                            id,
                            poi_id,
                            review
                        )
                        VALUES (
                            27,
                            341,
                            'test'
                        );


-- Table: poi_users
DROP TABLE IF EXISTS poi_users;

CREATE TABLE IF NOT EXISTS poi_users (
    id       INTEGER PRIMARY KEY AUTOINCREMENT,
    username STRING,
    password STRING
);

INSERT INTO poi_users (
                          id,
                          username,
                          password
                      )
                      VALUES (
                          1,
                          'tim',
                          'tim123'
                      );

INSERT INTO poi_users (
                          id,
                          username,
                          password
                      )
                      VALUES (
                          2,
                          'jane',
                          'jane123'
                      );


-- Table: pointsofinterest
DROP TABLE IF EXISTS pointsofinterest;

CREATE TABLE IF NOT EXISTS pointsofinterest (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    name            STRING,
    type            STRING,
    country         STRING,
    region          STRING,
    lon             FLOAT,
    lat             FLOAT,
    description     TEXT,
    recommendations INTEGER DEFAULT 0
);

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 1,
                                 'test',
                                 'test',
                                 'test',
                                 'test',
                                 1.0,
                                 1.0,
                                 'test',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 2,
                                 'New York',
                                 'city',
                                 'USA',
                                 'NY',
-                                74.0,
                                 40.75,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 3,
                                 'London',
                                 'city',
                                 'UK',
                                 'London',
-                                0.1,
                                 51.51,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 4,
                                 'Oxford',
                                 'city',
                                 'UK',
                                 'Oxfordshire',
-                                1.25,
                                 51.75,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 5,
                                 'Bath',
                                 'city',
                                 'UK',
                                 'Somerset',
-                                2.36,
                                 51.38,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 6,
                                 'Paris',
                                 'city',
                                 'France',
                                 'Paris',
                                 2.35,
                                 48.86,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 7,
                                 'Rome',
                                 'city',
                                 'Italy',
                                 'Rome',
                                 12.48,
                                 41.89,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 8,
                                 'San Francisco',
                                 'city',
                                 'USA',
                                 'California',
-                                122.4,
                                 37.78,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 9,
                                 'Los Angeles',
                                 'city',
                                 'USA',
                                 'California',
-                                118.2,
                                 34.05,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 10,
                                 'Paderborn',
                                 'city',
                                 'Germany',
                                 'Nordrhein_Westfalen',
                                 8.75,
                                 51.72,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 11,
                                 'Hannover',
                                 'city',
                                 'Germany',
                                 'Niedersachsen',
                                 9.74,
                                 52.38,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 12,
                                 'Koeln',
                                 'city',
                                 'Germany',
                                 'Nordrhein_Westfalen',
                                 6.96,
                                 50.94,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 13,
                                 'Freiburg',
                                 'city',
                                 'Germany',
                                 'Baden-Wuerttemberg',
                                 7.85,
                                 48.0,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 14,
                                 'Garmisch-Partenkirchen',
                                 'town',
                                 'Germany',
                                 'Bayern',
                                 11.1,
                                 47.49,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 15,
                                 'Bergisch Gladbach',
                                 'town',
                                 'Germany',
                                 'Nordrhein_Westfalen',
                                 7.13,
                                 50.99,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 16,
                                 'Petersfield',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                0.937472,
                                 51.0038,
                                 'A very interesting place',
                                 13
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 17,
                                 'Lyndhurst',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.57484,
                                 50.8728,
                                 'A very interesting place',
                                 2
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 18,
                                 'New Milton',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.65519,
                                 50.7531,
                                 'A very interesting place',
                                 3
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 19,
                                 'Southampton',
                                 'city',
                                 'UK',
                                 'Hampshire',
-                                1.4042,
                                 50.9035,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 20,
                                 'Romsey',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.49973,
                                 50.9895,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 21,
                                 'Hedge End',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.30714,
                                 50.9154,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 22,
                                 'Hythe',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.40326,
                                 50.8694,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 23,
                                 'Alton',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                0.972413,
                                 51.1456,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 24,
                                 'Portsmouth',
                                 'city',
                                 'UK',
                                 'Hampshire',
-                                1.0744,
                                 50.8065,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 25,
                                 'Ringwood',
                                 'town',
                                 'UK',
                                 'Wiltshire',
-                                1.79142,
                                 50.8469,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 26,
                                 'Fordingbridge',
                                 'town',
                                 'UK',
                                 'Wiltshire',
-                                1.79235,
                                 50.9266,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 27,
                                 'Havant',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                0.979901,
                                 50.8527,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 28,
                                 'Andover',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.47935,
                                 51.2078,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 29,
                                 'Farnborough',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.756496,
                                 51.2941,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 30,
                                 'Emsworth',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                0.937185,
                                 50.8449,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 31,
                                 'Tadley',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.13834,
                                 51.3531,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 32,
                                 'Waterlooville',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.03044,
                                 50.8803,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 33,
                                 'Odiham',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                0.939688,
                                 51.2535,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 34,
                                 'Hook',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                0.963113,
                                 51.2816,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 35,
                                 'Eastleigh',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.35282,
                                 50.9676,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 36,
                                 'South Hayling',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                0.974811,
                                 50.7864,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 37,
                                 'Fleet',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.83532,
                                 51.2749,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 38,
                                 'Gosport',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.12649,
                                 50.793,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 39,
                                 'Basingstoke',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.0862,
                                 51.2628,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 40,
                                 'Bordon',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.859336,
                                 51.1091,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 41,
                                 'Whitchurch',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.33843,
                                 51.2299,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 42,
                                 'Lymington',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.54269,
                                 50.7584,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 43,
                                 'Blackwater',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.77884,
                                 51.3306,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 44,
                                 'Totton and Eling',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.49637,
                                 50.9177,
                                 'A very interesting place',
                                 2
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 45,
                                 'Hartley Wintney',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.899714,
                                 51.3062,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 46,
                                 'Winchester',
                                 'city',
                                 'UK',
                                 'Hampshire',
-                                1.31355,
                                 51.0617,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 47,
                                 'Chandlers Ford',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.38331,
                                 50.9828,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 48,
                                 'Bishops Waltham',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.21801,
                                 50.9543,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 49,
                                 'Aldershot',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.756526,
                                 51.2519,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 50,
                                 'New Alresford',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.15854,
                                 51.0854,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 51,
                                 'Fareham',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.17925,
                                 50.854,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 52,
                                 'Ludgershall',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.62337,
                                 51.257,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 53,
                                 'Marlborough',
                                 'town',
                                 'UK',
                                 'Wiltshire',
-                                1.72895,
                                 51.421,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 54,
                                 'Wilton',
                                 'town',
                                 'UK',
                                 'Wiltshire',
-                                1.8628,
                                 51.0804,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 55,
                                 'Amesbury',
                                 'town',
                                 'UK',
                                 'Wiltshire',
-                                1.77511,
                                 51.1727,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 56,
                                 'Devizes',
                                 'town',
                                 'UK',
                                 'Wiltshire',
-                                1.99266,
                                 51.3508,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 57,
                                 'Salisbury',
                                 'city',
                                 'UK',
                                 'Wiltshire',
-                                1.79512,
                                 51.0737,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 58,
                                 'Haslemere',
                                 'town',
                                 'UK',
                                 'Sussex',
-                                0.709777,
                                 51.0876,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 59,
                                 'Woking',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.556445,
                                 51.3202,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 60,
                                 'Staines-upon-Thames',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.511044,
                                 51.434,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 61,
                                 'Farnham',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.798015,
                                 51.2143,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 62,
                                 'Godalming',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.614907,
                                 51.1858,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 63,
                                 'Camberley',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.740629,
                                 51.3394,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 64,
                                 'Egham',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.547309,
                                 51.4313,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 65,
                                 'Guildford',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.565362,
                                 51.2353,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 66,
                                 'Chertsey',
                                 'town',
                                 'UK',
                                 'Surrey',
-                                0.504125,
                                 51.3884,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 67,
                                 'Littlehampton',
                                 'town',
                                 'UK',
                                 'Sussex',
-                                0.536691,
                                 50.8122,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 68,
                                 'Petworth',
                                 'town',
                                 'UK',
                                 'Sussex',
-                                0.610109,
                                 50.9863,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 69,
                                 'Midhurst',
                                 'town',
                                 'UK',
                                 'Sussex',
-                                0.742806,
                                 50.9819,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 70,
                                 'Chichester',
                                 'city',
                                 'UK',
                                 'Sussex',
-                                0.778782,
                                 50.8367,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 71,
                                 'Selsey',
                                 'town',
                                 'UK',
                                 'Sussex',
-                                0.79229,
                                 50.7328,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 72,
                                 'Bognor Regis',
                                 'town',
                                 'UK',
                                 'Sussex',
-                                0.673072,
                                 50.7835,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 73,
                                 'Arundel',
                                 'town',
                                 'UK',
                                 'Sussex',
-                                0.55345,
                                 50.8541,
                                 'A very interesting place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 74,
                                 'Vine Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31197,
                                 50.8806,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 75,
                                 'Fox and Hounds/Lone Barn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31733,
                                 50.8829,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 76,
                                 'Jolly Sailor',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.3043,
                                 50.8818,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 77,
                                 'Millers Pond',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.36139,
                                 50.8977,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 78,
                                 'White Swan',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.36152,
                                 50.9381,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 79,
                                 'Two Brothers',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35281,
                                 50.9326,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 80,
                                 'The Royal Oak',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43167,
                                 50.8265,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 81,
                                 'The Langley Tavern',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.36811,
                                 50.8074,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 82,
                                 'The Bridge',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39856,
                                 50.8259,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 83,
                                 'Salmon Leap',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.48754,
                                 50.9244,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 84,
                                 'Cleveland Bay',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40201,
                                 50.9783,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 85,
                                 'Fleming Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.37453,
                                 50.9423,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 86,
                                 'Dog and Crook',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.32791,
                                 50.9931,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 87,
                                 'Stoneham Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.38775,
                                 50.9443,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 88,
                                 'Travellers Rest',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.3894,
                                 50.8553,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 89,
                                 'The Forest Home',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39137,
                                 50.842,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 90,
                                 'The Cottage',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.34,
                                 50.88,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 91,
                                 'The Roll Call',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.33998,
                                 50.8811,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 92,
                                 'The Swan',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.3627,
                                 50.8957,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 93,
                                 'Chamberlayne Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35289,
                                 50.9052,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 94,
                                 'The Manor',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.37386,
                                 50.9007,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 95,
                                 'Spike Islander',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35668,
                                 50.9028,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 96,
                                 'Big Cheese',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35604,
                                 50.9207,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 97,
                                 'Fox and Hounds',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35659,
                                 50.9181,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 98,
                                 'The Obelisk',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.37264,
                                 50.8943,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 99,
                                 'Hare and Hounds',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.33501,
                                 50.9197,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 100,
                                 'The Rising Sun',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.30588,
                                 50.8524,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 101,
                                 'Stones',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35324,
                                 50.9683,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 102,
                                 'Humble Plumb',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35371,
                                 50.9168,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 103,
                                 'Peartree Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.37277,
                                 50.9043,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 104,
                                 'Red Lion',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35828,
                                 50.9144,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 105,
                                 'The Earl Of Locksley',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.3596,
                                 50.904,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 106,
                                 'Gardeners Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35388,
                                 50.8915,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 107,
                                 'The Ark',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35777,
                                 50.9292,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 108,
                                 'The Cricketers',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.37452,
                                 50.9614,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 109,
                                 'The Sun Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.4854,
                                 50.9916,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 110,
                                 'The Chamberlayne Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35413,
                                 50.9661,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 111,
                                 'The Grantham Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35828,
                                 50.965,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 112,
                                 'The Bent Brief',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39656,
                                 50.9197,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 113,
                                 'The Litten Tree',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35329,
                                 50.9679,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 114,
                                 'Percy Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35407,
                                 50.9155,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 115,
                                 'Good Companion',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35932,
                                 50.9697,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 116,
                                 'Exford Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.34461,
                                 50.9175,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 117,
                                 'Ham Farm Pub',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35087,
                                 50.9838,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 118,
                                 'Ham Farm Harvester',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.3505,
                                 50.984,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 119,
                                 'Bishop Blaize',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.49231,
                                 50.9894,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 120,
                                 'Mono',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40464,
                                 50.9124,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 121,
                                 'Orange Rooms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40484,
                                 50.9123,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 122,
                                 'The Pilgrim Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.4504,
                                 50.8846,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 123,
                                 'The Anchor Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.48126,
                                 50.912,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 124,
                                 'The Winston',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.41503,
                                 50.9151,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 125,
                                 'The Blue Keys',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.41335,
                                 50.9162,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 126,
                                 'The Bellemoor',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.41625,
                                 50.9275,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 127,
                                 'Chilworth Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.41718,
                                 50.9643,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 128,
                                 'The Malvern',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42382,
                                 50.9319,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 129,
                                 'Ice House',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43739,
                                 50.9279,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 130,
                                 'Baddesley Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43738,
                                 50.9777,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 131,
                                 'The Platform Tavern',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40355,
                                 50.8964,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 132,
                                 'The Mountbatten',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.44906,
                                 50.9405,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 133,
                                 'The Hop Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.37074,
                                 50.9327,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 134,
                                 'The Queens Head',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.30504,
                                 50.9856,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 135,
                                 'The Bold Forester',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.4654,
                                 50.8749,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 136,
                                 'Anchor Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.47428,
                                 50.9218,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 137,
                                 'The Hinkler',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.33348,
                                 50.9077,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 138,
                                 'The Bullseye',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.34855,
                                 50.8986,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 139,
                                 'Foresters Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.33119,
                                 50.9807,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 140,
                                 'Longmead Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.33217,
                                 50.9765,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 141,
                                 'Bald Faced Stag',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43132,
                                 50.918,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 142,
                                 'The Old House at Home',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.49548,
                                 50.99,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 143,
                                 'William IV',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.49784,
                                 50.9903,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 144,
                                 'Wellington Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42358,
                                 50.9124,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 145,
                                 'The Freemantle',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42471,
                                 50.9134,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 146,
                                 'Englishman',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43504,
                                 50.9184,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 147,
                                 'Freemantle Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42925,
                                 50.915,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 148,
                                 'The Heath (Table Table)',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.41705,
                                 50.8512,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 149,
                                 'Bedes Lea',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.4482,
                                 50.9762,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 150,
                                 'Bricklayers Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.45476,
                                 50.924,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 151,
                                 'The Ship',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.47292,
                                 50.9211,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 152,
                                 'Rising Sun',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31836,
                                 50.9974,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 153,
                                 'Waterloo Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42695,
                                 50.9113,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 154,
                                 'Turfcutters Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.47021,
                                 50.8024,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 155,
                                 'TGI Fridays',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.41335,
                                 50.905,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 156,
                                 'Ship Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.38045,
                                 50.8938,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 157,
                                 'Frankie and Bennys',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.35175,
                                 50.967,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 158,
                                 'The Hunters',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.46954,
                                 50.9986,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 159,
                                 'Southampton Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.32057,
                                 50.9324,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 160,
                                 'Prince Consort',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35279,
                                 50.8724,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 161,
                                 'Zen',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40363,
                                 50.8994,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 162,
                                 'The Red Lion',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40365,
                                 50.899,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 163,
                                 'The Wagon Works',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35072,
                                 50.9695,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 164,
                                 'Linden Tree',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31557,
                                 50.8886,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 165,
                                 'The King Rufus',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.47839,
                                 50.9074,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 166,
                                 'The Village Bells',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.4781,
                                 50.9073,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 167,
                                 'King George',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.44435,
                                 50.9216,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 168,
                                 'Ennios',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40515,
                                 50.8968,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 169,
                                 'La Regata',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40472,
                                 50.8967,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 170,
                                 'The Manor House',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.32754,
                                 50.8891,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 171,
                                 'The Plough',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.33021,
                                 50.8893,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 172,
                                 'Grande CafÃƒÂ©',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.39696,
                                 50.8975,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 173,
                                 'La Cantina',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.39273,
                                 50.8971,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 174,
                                 'Gleneagles',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40555,
                                 50.8505,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 175,
                                 'The Fitzhugh',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.41,
                                 50.9146,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 176,
                                 'Banana Wharf',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.39084,
                                 50.8968,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 177,
                                 'The Otter',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.35408,
                                 50.9985,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 178,
                                 'The Croft (Closed)',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40056,
                                 50.861,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 179,
                                 'Sunrise Balti and Tandoori',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.3764,
                                 50.9873,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 180,
                                 'Nandos',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.35199,
                                 50.9663,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 181,
                                 'Windhover Manor',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.31755,
                                 50.8948,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 182,
                                 'The New Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.4969,
                                 50.907,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 183,
                                 'Grove Tavern',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.37777,
                                 50.8916,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 184,
                                 'Firehouse',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40343,
                                 50.9048,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 185,
                                 'Glen Bar',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40268,
                                 50.944,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 186,
                                 'Regents Park',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.44282,
                                 50.9158,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 187,
                                 'Osbourne',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.41873,
                                 50.9099,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 188,
                                 'The Cricketers',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40498,
                                 50.9129,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 189,
                                 'Key and Anchor',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42291,
                                 50.9093,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 190,
                                 'Prezzo Romsey',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.49592,
                                 50.9878,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 191,
                                 'The Olive Tree',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.49764,
                                 50.9895,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 192,
                                 'Que Pasa',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40419,
                                 50.906,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 193,
                                 'Yatess',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40471,
                                 50.9066,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 194,
                                 'Namaste Kerala',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40495,
                                 50.907,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 195,
                                 'The Stile',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42423,
                                 50.915,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 196,
                                 'The Rover',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42554,
                                 50.916,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 197,
                                 'Brass Monkey',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42916,
                                 50.9188,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 198,
                                 'Table Table',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.37371,
                                 50.9729,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 199,
                                 'La Margherita',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40469,
                                 50.8957,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 200,
                                 'The Hiltonbury Farmhouse',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39416,
                                 50.9955,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 201,
                                 'Jolly Sailor',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.33992,
                                 50.8271,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 202,
                                 'Finicki Food Company',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.41187,
                                 50.9086,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 203,
                                 'Encore',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.41074,
                                 50.9087,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 204,
                                 'Aroma',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.37968,
                                 50.8312,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 205,
                                 'El Rancho',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40366,
                                 50.8992,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 206,
                                 'The Standing Order (JD Wetherspoon)',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40377,
                                 50.9009,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 207,
                                 'Bellinis',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.3986,
                                 50.8978,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 208,
                                 'The London Hotel',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39696,
                                 50.8979,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 209,
                                 'Peking Phoenix',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.35369,
                                 50.9693,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 210,
                                 'Nashaa',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.35383,
                                 50.9693,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 211,
                                 'La Vista',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40148,
                                 50.873,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 212,
                                 'The Tavern',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.49776,
                                 50.9891,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 213,
                                 'The Tudor Rose',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.49926,
                                 50.9886,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 214,
                                 'Thai Cottage',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.38213,
                                 50.9825,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 215,
                                 'The Ketch Rigger',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31169,
                                 50.8518,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 216,
                                 'Boomerang',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.31534,
                                 50.8589,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 217,
                                 'Ye Olde Whyte Hart',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31668,
                                 50.8587,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 218,
                                 'The Riverside Bar and Restaurant',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31259,
                                 50.8713,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 219,
                                 'The Cinnamon Bay',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.31902,
                                 50.8591,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 220,
                                 'The Malt and Hops',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39846,
                                 50.8662,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 221,
                                 'The Station',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.37528,
                                 50.918,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 222,
                                 'The Welcome Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.32216,
                                 50.9645,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 223,
                                 'The New Clock Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.30655,
                                 50.9644,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 224,
                                 'Unit Nightclub',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39923,
                                 50.9104,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 225,
                                 'Capers',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.41517,
                                 50.8527,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 226,
                                 'Prezzo',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.39848,
                                 50.8983,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 227,
                                 'Saras',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.39062,
                                 50.9271,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 228,
                                 'The Victoria',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.38049,
                                 50.8949,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 229,
                                 'La Parissiene',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.49963,
                                 50.988,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 230,
                                 'Massala',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.38006,
                                 50.8965,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 231,
                                 'Pig n Whistle',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.4209,
                                 50.9122,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 232,
                                 'The Griffin',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43414,
                                 50.925,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 233,
                                 'Shooting Star',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39588,
                                 50.9165,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 234,
                                 'Giddy Bridge',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40448,
                                 50.911,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 235,
                                 'Avondale House',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40394,
                                 50.9129,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 236,
                                 'Plume of Feathers',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39688,
                                 50.9051,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 237,
                                 'The Joiners',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.39648,
                                 50.9045,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 238,
                                 'Nicks Restaurant',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.39957,
                                 50.9017,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 239,
                                 'Park Hotel (closed long-term)',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.42045,
                                 50.9114,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 240,
                                 'Jewel in the Crown',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.42655,
                                 50.9172,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 241,
                                 'Pucchinis',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.42735,
                                 50.9179,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 242,
                                 'Kachina',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.43059,
                                 50.9199,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 243,
                                 'Spice of Life (B level)',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.43428,
                                 50.933,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 244,
                                 'Shield and Dagger',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43136,
                                 50.9264,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 245,
                                 'Kings Arms',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43259,
                                 50.9231,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 246,
                                 'The Waterfront',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.38101,
                                 50.9103,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 247,
                                 'Slug and Lettuce',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40471,
                                 50.9063,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 248,
                                 'Bella Italia',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40469,
                                 50.9064,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 249,
                                 'Supreme Chinese Restaurant',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40364,
                                 50.905,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 250,
                                 'The Anglers Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.33787,
                                 50.9716,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 251,
                                 'Nandos',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40747,
                                 50.9037,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 252,
                                 'Yo! Sushi',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40778,
                                 50.9036,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 253,
                                 'Pizza Hut',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40737,
                                 50.9034,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 254,
                                 'Cafe Giardino',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40733,
                                 50.9037,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 255,
                                 'ASDA Cafe',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40777,
                                 50.906,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 256,
                                 'Mandarin Chef',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.46734,
                                 50.9977,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 257,
                                 'Fishers Pond',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.30535,
                                 50.9866,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 258,
                                 'Kutis Royal Thai Pier',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40703,
                                 50.897,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 259,
                                 'Jewels',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.35246,
                                 50.9329,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 260,
                                 'Saffron',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.3537,
                                 50.9679,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 261,
                                 'Berties',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.49607,
                                 50.9887,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 262,
                                 'Park Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.43695,
                                 50.9236,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 263,
                                 'The Swan Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.48449,
                                 50.9162,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 264,
                                 'The Galley Restaurant',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.48141,
                                 50.912,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 265,
                                 'The Roebuck',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.45103,
                                 50.8904,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 266,
                                 'White Horse',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.44774,
                                 50.8924,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 267,
                                 'The Thai Corner Restaurant',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.40016,
                                 50.8697,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 268,
                                 'Royal Bengal',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.32895,
                                 50.862,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 269,
                                 'The Bugle',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31342,
                                 50.8582,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 270,
                                 'The King and Queen',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31356,
                                 50.8586,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 271,
                                 'The Victory Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.31415,
                                 50.8588,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 272,
                                 'Rat and Parrot',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40442,
                                 50.9085,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 273,
                                 'Goblets',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.40455,
                                 50.9088,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 274,
                                 'Bitterne Balti',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.37573,
                                 50.9244,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 275,
                                 'Charlie Chans',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.39916,
                                 50.8983,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 276,
                                 'Nazs Cuisine',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.49699,
                                 50.9889,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 277,
                                 'Purbani Tandoori Restaurant and Take Away',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.4997,
                                 50.9882,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 278,
                                 'South Garden Chinese Restaurant',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.49974,
                                 50.9883,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 279,
                                 'Water Margin',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.44068,
                                 50.9794,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 280,
                                 'The Master Builder',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.34532,
                                 50.9303,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 281,
                                 'Sanjha Restaurant',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.4266,
                                 50.9168,
                                 'A very interesting place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 282,
                                 'test',
                                 'test',
                                 'test',
                                 'test',
                                 1.0,
                                 1.0,
                                 'test',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 283,
                                 'test',
                                 'test',
                                 'test',
                                 'test',
                                 1.0,
                                 1.0,
                                 'test',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 284,
                                 'Chalcroft Distribution Park',
                                 'industrial estate',
                                 'UK',
                                 'Hampshire',
-                                1.31209,
                                 50.9436,
                                 'lovely ;-)',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 285,
                                 'harbour',
                                 'point',
                                 'UK',
                                 'Southampton',
-                                1.43166,
                                 50.9058,
                                 '',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 286,
                                 'Britannia Wharf',
                                 'Point',
                                 'UK',
                                 'Southampton',
-                                1.38994,
                                 50.9047,
                                 '',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 287,
                                 'Port of Southampton',
                                 'Port',
                                 'UK',
                                 'Southampton',
-                                1.44513,
                                 50.9095,
                                 'Port',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 288,
                                 'Blackdown',
                                 'hill',
                                 'UK',
                                 'Sussex',
                                 45719.3,
                                 51.0578,
                                 'highest hill in sussex. great views',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 289,
                                 'Pikes Peak',
                                 'mountain',
                                 'USA',
                                 'Colorado',
-                                105.044,
                                 38.84,
                                 'Colorado fourteener accessible via the Barr Trail. ',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 290,
                                 'Cauterets',
                                 'town',
                                 'France',
                                 'Hautes-Pyrenees',
-                                0.112953,
                                 42.8893,
                                 'nice apparently. we will find out soon',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 291,
                                 'Dartmoor',
                                 'moor',
                                 'UK',
                                 'Devon',
-                                3.96606,
                                 50.6529,
                                 'dark and mysterious',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 292,
                                 'The Crown',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.4011,
                                 50.9319,
                                 'nice pub',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 293,
                                 'Costa Coffee',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.47879,
                                 51.208,
                                 'Quality coffee and food',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 294,
                                 'Costa Coffee',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.47879,
                                 51.208,
                                 'Quality coffee and food',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 295,
                                 'Steve''s Inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.8223,
                                 51.3194,
                                 'Cosy pub with fire place',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 296,
                                 'Costa Coffee',
                                 'restaurant',
                                 'UK',
                                 'Hampshire',
-                                1.33,
                                 51.3889,
                                 'Quality coffee and food',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 297,
                                 'Highclere',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.3677,
                                 51.3469,
                                 'Has a castle',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 298,
                                 'Small Eats',
                                 'restaurant',
                                 'UK',
                                 'berkshire',
-                                1.4062,
                                 51.3254,
                                 'Quick bites',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 299,
                                 'Kingsclere',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.2366,
                                 51.3237,
                                 'A town',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 300,
                                 'Cold Ash',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.2682,
                                 51.4249,
                                 'Town',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 301,
                                 'Newbury',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.3176,
                                 51.3992,
                                 'Great place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 302,
                                 'Thatcham',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.2668,
                                 51.4052,
                                 'Not great',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 303,
                                 'Donnington',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.3269,
                                 51.4227,
                                 'posh',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 304,
                                 'Enborne',
                                 'town',
                                 'UK',
                                 'berkshire',
-                                1.3712,
                                 51.3899,
                                 'Lots of fields',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 305,
                                 'Enborne',
                                 'town',
                                 'UK',
                                 'berkshire',
-                                1.3712,
                                 51.3899,
                                 'Lots of fields',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 306,
                                 'Hurstbourne Tarrant',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.4508,
                                 51.2769,
                                 'very small place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 307,
                                 'Midgham',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.2007,
                                 51.4062,
                                 'Has a very nice pub restaurant ',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 308,
                                 'chieveley',
                                 'pub',
                                 'UK',
                                 'berkshire',
-                                1.3326,
                                 51.4601,
                                 'test',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 309,
                                 'east meon',
                                 'town',
                                 'UK',
                                 'Hampshire',
-                                1.0,
                                 51.0,
                                 'test',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 310,
                                 'downs inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.01,
                                 51.01,
                                 'a nice pub',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 311,
                                 'downs inn',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.012,
                                 51.012,
                                 'a nice pub',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 312,
                                 'fernhurst',
                                 'town',
                                 'UK',
                                 'Sussex',
-                                0.72,
                                 51.05,
                                 'a nice village',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 313,
                                 'testpub',
                                 'pub',
                                 'UK',
                                 'Hampshire',
-                                1.02,
                                 51.02,
                                 'test',
                                 1
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 314,
                                 'Whitchurch',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.345,
                                 51.224,
                                 'small place',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 315,
                                 'Testing',
                                 'pub',
                                 'UK',
                                 'Berkshire',
-                                1.4,
                                 51.1,
                                 'Testing',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 316,
                                 'Testing',
                                 'pub',
                                 'UK',
                                 'Berkshire',
-                                1.4,
                                 51.1,
                                 'Testing',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 317,
                                 'Pacifica',
                                 'city',
                                 'Pacific State',
                                 'Pacific Ocean',
                                 181.0,
                                 0.0,
                                 'lost city',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 318,
                                 'Southdown ',
                                 'pub',
                                 'england',
                                 'sussex',
-                                0.723724,
                                 50.9432,
                                 'nice',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 319,
                                 'Speen',
                                 'town',
                                 'UK',
                                 'Berkshire',
-                                1.34829,
                                 51.4076,
                                 'Lots of road humps',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 320,
                                 'Costa',
                                 'restaurant',
                                 'UK',
                                 'Berkshire',
-                                1.31758,
                                 51.3826,
                                 'Exceptional coffee and light bites',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 321,
                                 'Pizza Hut',
                                 'restaurant',
                                 'UK',
                                 'Berkshire',
-                                1.31766,
                                 51.3848,
                                 'Pizza and salad bar',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 322,
                                 'Sainsbury''s Cafe',
                                 'restaurant',
                                 'UK',
                                 'Berkshire',
-                                1.31988,
                                 51.3992,
                                 'Cafe',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 323,
                                 'Ask',
                                 'restaurant',
                                 'UK',
                                 'Berkshire',
-                                1.32329,
                                 51.4013,
                                 'Italian food',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 324,
                                 'La Tasca',
                                 'restaurant',
                                 'UK',
                                 'Berkshire',
-                                1.3231,
                                 51.4013,
                                 'Spanish food',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 325,
                                 'Canal Bar',
                                 'pub',
                                 'UK',
                                 'Berkshire',
-                                1.32303,
                                 51.4013,
                                 'Gets really busy Friday and Saturday nights',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 326,
                                 'Subway',
                                 'restaurant',
                                 'UK',
                                 'Berkshire',
-                                1.3236,
                                 51.3997,
                                 'Get the sandwich you want',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 327,
                                 'Pacifica',
                                 'lost city',
                                 'Pacifica',
                                 'Pacifica',
                                 179.0,
                                 30.0,
                                 'lost city',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 328,
                                 'Plaistow',
                                 'city',
                                 'UK',
                                 'Sussex',
-                                0.567307,
                                 51.0657,
                                 'small isolated village. ',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 329,
                                 'Ropley',
                                 'city',
                                 'england',
                                 'hampshire',
-                                1.07803,
                                 51.0719,
                                 'not a city really. home of the watercress line',
                                 2
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 330,
                                 'Cotswold Inn',
                                 'Pob',
                                 'UK',
                                 'Cotswolds',
-                                1.70563,
                                 51.6674,
                                 'Nice',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 331,
                                 'Blackdown',
                                 'Hill',
                                 'UK',
                                 'West Sussex',
-                                0.690048,
                                 51.0581,
                                 'highest hill in sussex',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 332,
                                 'test1',
                                 'test1',
                                 'test1',
                                 'test1',
                                 1.0,
                                 1.0,
                                 NULL,
                                 NULL
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 333,
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 334,
                                 'test2',
                                 'test2',
                                 'test2',
                                 'test2',
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 335,
                                 'test2',
                                 'test2',
                                 'test2',
                                 'test2',
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 336,
                                 'test1',
                                 'test1',
                                 'test1',
                                 'test1',
                                 1.0,
                                 1.0,
                                 NULL,
                                 NULL
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 337,
                                 'Random',
                                 'Random',
                                 'Random',
                                 'Random',
                                 1.0,
                                 1.0,
                                 'Random',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 338,
                                 'as',
                                 'as',
                                 'as',
                                 'as',
-                                0.86380004882813,
                                 51.10686327415688,
                                 'as',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 339,
                                 'random',
                                 'random',
                                 'random',
                                 'random',
-                                1.101,
                                 51.01,
                                 'random',
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 340,
                                 'Bordon',
                                 'City',
                                 'UK',
                                 'hampshire',
-                                0.86380004882813,
                                 51.10643214814802,
                                 'Bordon',
                                 2
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 341,
                                 'Haslemere',
                                 'City',
                                 'UK',
                                 'hampshire',
-                                0.7745361328125,
                                 51.08476288782065,
                                 'Haslemere',
                                 2
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 342,
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL,
-                                0.802001953125,
                                 51.08821339998529,
                                 NULL,
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 343,
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL,
-                                1.32522583007813,
                                 51.22656040063367,
                                 NULL,
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 344,
                                 NULL,
                                 NULL,
                                 NULL,
                                 NULL,
-                                1.241455078125,
                                 51.17406969467605,
                                 NULL,
                                 0
                             );

INSERT INTO pointsofinterest (
                                 id,
                                 name,
                                 type,
                                 country,
                                 region,
                                 lon,
                                 lat,
                                 description,
                                 recommendations
                             )
                             VALUES (
                                 345,
                                 'test',
                                 'test',
                                 'test',
                                 'test',
-                                0.63446044921875,
                                 51.14823264964402,
                                 'test',
                                 0
                             );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
