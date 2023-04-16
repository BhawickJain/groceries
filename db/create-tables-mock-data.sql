DROP TABLE IF EXISTS grocery_list;
DROP TABLE IF EXISTS user_dek;


CREATE TABLE user_dek
(
uid VARCHAR(255),
encrypted_dek VARCHAR NOT NULL,
created_ts TIMESTAMPTZ DEFAULT NOW(),
PRIMARY KEY (uid)
);

CREATE TABLE grocery_list
(
id SERIAL,
uid VARCHAR(255) REFERENCES user_dek(uid),
encrypted_grocery_item JSON NOT NULL,
created_ts TIMESTAMPTZ DEFAULT NOW(),
completed_ts TIMESTAMPTZ DEFAULT NULL,
PRIMARY KEY (id)
);

-- mock data

-- register a dek
INSERT INTO user_dek(uid, encrypted_dek)
VALUES (
  '123456',
  '{
    "ext": true,
    "key_ops": ["encrypt","decrypt"],
    "kty": "oct",
    "alg": "A256GCM",
    "k":"qDW5QUL_V3hJEDj5P2jRTJyuTM5O_Oc7eLaq_Meu03E"
  }'
);

-- add a grocery item
INSERT INTO grocery_list(uid, encrypted_grocery_item)
VALUES (
  '123456', 
  '{
    "cipher": "jfdkal;fkdfjsadf",
    "iv": "fjdkas;vfjdsakfl;dsajf;ds"
   }'
);

-- get dek for a user
SELECT * FROM user_dek as d
WHERE d.uid = '123456';

-- set a grocery item as completed
UPDATE grocery_list as gl
SET completed_ts = NOW()
WHERE gl.uid = '123456';

-- get all grocery items for a user
SELECT *
FROM grocery_list as gl
WHERE gl.uid= '123456';


-- insert a grocery item
INSERT INTO grocery_list(uid, encrypted_grocery_item)
VALUES (
  '123456', 
  '{
    "cipher": "jfdkal;fkdfjsadf",
    "iv": "fjdkas;vfjdsakfl;dsajf;ds"
   }'
);

-- delete grocery item
DELETE FROM grocery_list as gl
WHERE gl.id = 2;
