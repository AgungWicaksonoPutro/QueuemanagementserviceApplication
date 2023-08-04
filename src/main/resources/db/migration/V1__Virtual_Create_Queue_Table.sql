-- db/migration/V1__Virtual_Create_Queue_Table.sql
CREATE TABLE virtual_queue (
    id VARCHAR(100) PRIMARY KEY,
    customer_id VARCHAR(100),
    train_id VARCHAR(100),
    class_id VARCHAR(100),
    queue_status VARCHAR(20),
    booking_date TIMESTAMP,
    estimated_waiting_time INTEGER,
    priority_number INTEGER,
    booking_reference VARCHAR(20),
    created_by VARCHAR(100),
    created_at TIMESTAMP,
    updated_by VARCHAR(100),
    updated_at TIMESTAMP
);

COMMENT ON COLUMN virtual_queue.id IS 'Primary key - Identifikasi unik untuk setiap entri antrian';
COMMENT ON COLUMN virtual_queue.customer_id IS 'Foreign key - Merujuk ke kolom customer_id di tabel customers';
COMMENT ON COLUMN virtual_queue.train_id IS 'Foreign key - Merujuk ke kolom train_id di tabel trains';
COMMENT ON COLUMN virtual_queue.class_id IS 'Foreign key - Merujuk ke kolom class_id di tabel train_classes';
COMMENT ON COLUMN virtual_queue.queue_status IS 'Status entri antrian (mis. Menunggu, Tertentu, Dibatalkan, dll.)';
COMMENT ON COLUMN virtual_queue.booking_date IS 'Tanggal dan waktu saat pelanggan bergabung dengan antrian virtual';
COMMENT ON COLUMN virtual_queue.estimated_waiting_time IS 'Perkiraan waktu tunggu untuk pelanggan dalam hitungan menit';
COMMENT ON COLUMN virtual_queue.priority_number IS 'Nomor prioritas yang diberikan kepada pelanggan dalam antrian';
COMMENT ON COLUMN virtual_queue.booking_reference IS 'Kode referensi unik untuk pemesanan yang telah dikonfirmasi (NULL untuk entri yang tertunda)';
COMMENT ON COLUMN virtual_queue.created_by IS 'Pengguna yang membuat entri antrian';
COMMENT ON COLUMN virtual_queue.created_at IS 'Timestamp untuk kapan entri antrian dibuat';
COMMENT ON COLUMN virtual_queue.updated_by IS 'Pengguna yang terakhir kali memperbarui entri antrian';
COMMENT ON COLUMN virtual_queue.updated_at IS 'Timestamp untuk kapan entri antrian terakhir diperbarui';

-- Tambahkan indeks pada kolom yang sering digunakan untuk pencarian cepat
CREATE INDEX idx_customer_id ON virtual_queue (customer_id);
CREATE INDEX idx_train_id ON virtual_queue (train_id);
CREATE INDEX idx_class_id ON virtual_queue (class_id);
CREATE INDEX idx_queue_status ON virtual_queue (queue_status);
CREATE INDEX idx_booking_date ON virtual_queue (booking_date);
