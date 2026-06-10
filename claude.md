# CLAUDE.md — Project Context & Session Log

> File ini diperbarui otomatis setiap akhir sesi atau saat ada perubahan signifikan.
> Simpan file ini untuk melanjutkan pekerjaan di sesi/akun lain.

---

## 👤 Tentang Proyek Ini
**Owner:** Johan Iriawan Akbar (jiwa99@gmail.com)
**Dibuat:** 2026-06-10
**GitHub:** https://github.com/JIAkbar/naskah-kuno.git
**Tools aktif:** Cowork mode + skills (frontend-design, canvas-design, webapp-testing, pdf)

---

## 📌 Progress Terakhir (2026-06-10)

### Selesai
- ✅ `index.html` — Public SPA lengkap: Beranda, Katalog, Detail, Tentang Naskah Kuno, Tentang Jaranan, Kontak
- ✅ `admin.html` — Panel admin: login, dashboard tabel, CRUD (tambah, edit, hapus, lihat detail)
- ✅ `changelog.html` — Halaman changelog dengan timeline visual
- ✅ `checklist.html` — Milestone tracker dengan progress bar per stage
- ✅ Semua file dipindah/dibersihkan ke folder project
- ✅ 2 tema: Parchment (terang, PDF-faithful) + Heritage (gelap, Cormorant Garamond)
- ✅ 8 data naskah sample dari PDF sumber

### Mock / Sementara (Menunggu Supabase)
- ⏳ Auth: hardcoded credentials (admin@dispussipda.malangkota.go.id / jaranan2024)
- ⏳ Data: localStorage (belum Supabase)
- ⏳ Gambar: placeholder (belum upload gambar asli)

---

## 🔄 Perubahan Sesi Ini
| File | Aksi | Keterangan |
|------|------|-----------|
| `index.html` | BARU | Public SPA, 2 tema, hash routing, search+filter |
| `admin.html` | BARU | Dashboard CRUD, login mock, modal delete, toast |
| `changelog.html` | BARU | Timeline visual versioning |
| `checklist.html` | BARU | Milestone tracker, 7 stage, progress bar |
| `claude.md` | UPDATE | File ini — dipindah + diperbarui |
| `changelog.md` | UPDATE | Dipindah dari Outputs + update |
| `checklist.md` | UPDATE | Dipindah dari Outputs + update |
| `forma-studio.html` | PINDAH | Dari Outputs ke folder project |

---

## 🧠 Keputusan Penting

### Arsitektur
- **Single-file HTML** untuk setiap page (no build tool) — jalankan: `python -m http.server 8000`
- **LocalStorage** sebagai mock database sementara — mudah diganti Supabase nanti
- **Hash routing via JS** untuk SPA tanpa server-side routing
- **Shared data**: index.html dan admin.html baca/tulis `localStorage('jaranan_data')` yang sama

### Desain — 2 Tema
- **Parchment** (default, PDF-faithful): Playfair Display + Lato, bg `#F5EFE0`, blue `#1B4E8B`, gold `#B8860B`
- **Heritage** (dark): Cormorant Garamond + Plus Jakarta Sans, bg `#100D09`, gold `#D4A840`
- Theme switcher via `data-theme` attribute + CSS custom properties + `localStorage` persist

### Admin
- Default credential: `admin@dispussipda.malangkota.go.id` / `jaranan2024`
- TODO: ganti dengan Supabase Auth (`supabase.auth.signInWithPassword`)

---

## 🚀 Next Step

1. **Jalankan di localhost**: buka terminal di folder Naskah Kuno → `python -m http.server 8000`
2. **Upload ke GitHub**: commit semua file ke repo `JIAkbar/naskah-kuno`
3. **Integrasi Supabase**:
   - Buat tabel `manuscripts` (field sesuai metadata naskah di form admin)
   - Buat tabel `users` + role (admin, pustakawan, guest)
   - Row Level Security — admin CRUD, guest read-only
   - Ganti `getData()` / `saveData()` di JS dengan Supabase query
4. **Upload gambar asli** naskah ke Supabase Storage
5. **Testing** dengan skill webapp-testing

---

## ⚠️ Catatan Penting
- Semua file ada di `C:\1-Johan\10. Pengembangan\Naskah Kuno\` — siap upload GitHub
- Butuh internet untuk Google Fonts CDN (atau tambahkan fallback font lokal)
- Supabase credentials Johan sudah siap — integrasi menunggu konfirmasi
- Versi saat ini: **v0.1.0-alpha**

---

## 📁 Struktur File Saat Ini
```
Naskah Kuno/
├── index.html          ← Public SPA (beranda, katalog, detail, kontak)
├── admin.html          ← Panel admin (login + CRUD)
├── changelog.html      ← Log perubahan visual
├── checklist.html      ← Milestone tracker
├── forma-studio.html   ← Demo desain (referensi)
├── claude.md           ← File ini
├── changelog.md        ← Log perubahan (teks)
├── checklist.md        ← Milestone (teks)
├── Admin 1.pdf         ← PDF sumber admin view
└── Pengguna 1.pdf      ← PDF sumber user view
```
