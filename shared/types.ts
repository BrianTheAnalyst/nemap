export interface Dataset {
  id: string;
  name: string;
  description: string;
  createdAt: Date;
  updatedAt: Date;
}

export interface DataRecord {
  id: string;
  datasetId: string;
  data: Record<string, unknown>;
  createdAt: Date;
}
