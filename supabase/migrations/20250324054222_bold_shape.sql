/*
  # Create Messages Table for Chat Application

  1. New Tables
    - `messages`
      - `id` (uuid, primary key)
      - `content` (text, message content)
      - `user_id` (text, identifier for the sender)
      - `created_at` (timestamp with timezone)

  2. Security
    - Enable RLS on messages table
    - Add policies for:
      - Anyone can read messages
      - Anyone can insert messages (for demo purposes)
*/

CREATE TABLE IF NOT EXISTS messages (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    content text NOT NULL,
    user_id text NOT NULL,
    created_at timestamptz DEFAULT now()
);

ALTER TABLE messages ENABLE ROW LEVEL SECURITY;

-- Allow anyone to read messages
CREATE POLICY "Anyone can read messages"
    ON messages
    FOR SELECT
    TO public
    USING (true);

-- Allow anyone to insert messages (for demo purposes)
CREATE POLICY "Anyone can insert messages"
    ON messages
    FOR INSERT
    TO public
    WITH CHECK (true);