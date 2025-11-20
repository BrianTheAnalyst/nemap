/*
  # Create datasets and data_records tables

  1. New Tables
    - `datasets`
      - `id` (uuid, primary key)
      - `name` (text, unique)
      - `description` (text)
      - `created_at` (timestamp)
      - `updated_at` (timestamp)
    
    - `data_records`
      - `id` (uuid, primary key)
      - `dataset_id` (uuid, foreign key to datasets)
      - `data` (jsonb, contains record data)
      - `created_at` (timestamp)

  2. Security
    - Enable RLS on both tables
    - Add policies to allow public read access
*/

CREATE TABLE IF NOT EXISTS datasets (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text UNIQUE NOT NULL,
  description text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS data_records (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  dataset_id uuid NOT NULL REFERENCES datasets(id) ON DELETE CASCADE,
  data jsonb NOT NULL DEFAULT '{}',
  created_at timestamptz DEFAULT now()
);

ALTER TABLE datasets ENABLE ROW LEVEL SECURITY;
ALTER TABLE data_records ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Datasets are readable by everyone"
  ON datasets FOR SELECT
  USING (true);

CREATE POLICY "Data records are readable by everyone"
  ON data_records FOR SELECT
  USING (true);

CREATE INDEX IF NOT EXISTS idx_data_records_dataset_id ON data_records(dataset_id);
