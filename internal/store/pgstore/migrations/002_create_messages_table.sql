-- Write your migrate up statements here
CREATE TABLE IF NOT EXISTS messages (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  room_id UUID NOT NULL,
  message TEXT NOT NULL,
  reaction_count BIGINT NOT NULL DEFAULT 0,
  answered BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  FOREIGN KEY (room_id) REFERENCES rooms (id) ON DELETE CASCADE
);

---- create above / drop below ----
DROP TABLE IF EXISTS messages;
