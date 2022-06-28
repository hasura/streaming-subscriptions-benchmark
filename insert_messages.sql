INSERT INTO messages (channel_id, message)
SELECT channel_id, message FROM messages_initial_data;
