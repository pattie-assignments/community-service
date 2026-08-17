CREATE TABLE stock_sync_checkpoint (
    sync_target     VARCHAR(50) PRIMARY KEY,
    last_synced_at  TIMESTAMP NOT NULL,
    updated_at      TIMESTAMP NOT NULL
);
