# Changelog — JARANAN

Semua perubahan signifikan dicatat di sini.
Semantic versioning: `0.0.x` patch kecil · `0.x.0` fitur baru · `1.0.0` mendekati final

---

## [2026-06-10] v0.1.0 — Initial Build Frontend

### Ditambahkan
- `index.html` — Public SPA (beranda, katalog, detail, tentang, kontak), 2 tema, search+filter
- `admin.html` — Login, dashboard tabel, CRUD lengkap, modal delete, toast
- `changelog.html` — Timeline visual changelog
- `checklist.html` — Milestone tracker 7 stage
- 2 tema: Parchment (terang) + Heritage (gelap)
- 8 data naskah sample dari PDF sumber
- LocalStorage mock database (sementara sebelum Supabase)
- Responsive mobile, hamburger nav, scroll reveal

### Diperbarui
- `claude.md`, `changelog.md`, `checklist.md` — dipindah ke folder project + update

---

## [2026-06-10] v0.0.1 — Inisialisasi Proyek

### Ditambahkan
- Setup GitHub repo `JIAkbar/naskah-kuno`
- Analisis 2 PDF sumber (desain UI + metadata naskah)
- `claude.md`, `changelog.md`, `checklist.md`
- `forma-studio.html` — demo desain referensi

---

## [Akan Datang] v0.2.0 — Integrasi Supabase
- Auth Supabase (ganti mock)
- Database: manuscripts, users, role
- Row Level Security
- Storage bucket gambar naskah
