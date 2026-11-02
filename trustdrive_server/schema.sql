-- Tables used by trustdrive_server/server.js.
-- Column names come from the server's queries. Every column is TEXT for simplicity.

CREATE TABLE IF NOT EXISTS admin (
    admin_name TEXT,
    new_admin_password TEXT
);

CREATE TABLE IF NOT EXISTS client (
    user_name TEXT,
    user_email TEXT,
    aadhar_number TEXT,
    user_phone_number TEXT,
    user_password TEXT
);

CREATE TABLE IF NOT EXISTS distributor (
    distributor_name TEXT,
    distributor_email TEXT,
    company_name TEXT,
    gst_number TEXT,
    distributor_password TEXT
);

CREATE TABLE IF NOT EXISTS manufacturer (
    manufacturer_name TEXT,
    manufacturer_email TEXT,
    company_name TEXT,
    company_origin TEXT,
    license_number TEXT,
    license_year TEXT,
    manufacturer_password TEXT
);

CREATE TABLE IF NOT EXISTS transporter (
    transporter_name TEXT,
    transporter_email TEXT,
    company_name TEXT,
    mode_of_transportation TEXT,
    license_number TEXT,
    license_year TEXT,
    transporter_password TEXT
);

CREATE TABLE IF NOT EXISTS vendor (
    vendor_name TEXT,
    vendor_email TEXT,
    company_name TEXT,
    vendor_site TEXT,
    company_register_no TEXT,
    gst_number TEXT,
    vendor_password TEXT
);
