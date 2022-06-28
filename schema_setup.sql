CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE channels (
  id SERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE messages (
  id BIGSERIAL PRIMARY KEY,
  channel_id INT NOT NULL REFERENCES channels (id),
  message TEXT NOT NULL
);

CREATE TABLE channel_users_mappings (
  id SERIAL PRIMARY KEY,
  channel_id INT REFERENCES channels (id),
  user_id INT REFERENCES users (id)
);

CREATE TABLE messages_initial_data (
  channel_id INT,
  message TEXT
);
