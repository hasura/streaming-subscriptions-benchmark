INSERT INTO channels (name) SELECT CONCAT ('channel-', CAST ( g.n as TEXT)) FROM generate_series (1,100) g(n);

INSERT INTO users (name) SELECT CONCAT ('user-', CAST ( g.n as TEXT)) FROM generate_series (1,1000000) g(n);

-- INSERT every user in 10 random channels
INSERT INTO channel_users_mappings (user_id, channel_id)
SELECT a.n, floor(random() * 100) + 1
  FROM generate_series (1, 1000000) as a(n), generate_series (1, 10);

-- INSERT 10k messages into the messages_initial_data table
INSERT INTO messages_initial_data
SELECT FLOOR (random () * 10) + 1, CONCAT('message - ', CAST(g.n as TEXT))
FROM generate_series (1, 10000) as g(n);
