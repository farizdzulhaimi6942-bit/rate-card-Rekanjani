RATE CARD ONLINE PREMIUM

ARSITEKTUR:
Viewer -> / -> membaca /api/config -> Supabase
Admin -> /admin.html -> login -> Netlify Function -> Supabase

LANGKAH:
1. Buat project Supabase.
2. Buka SQL Editor, jalankan supabase.sql.
3. Ambil Project URL dan Service Role Key.
4. Deploy folder ini ke Netlify.
5. Di Netlify > Site configuration > Environment variables, buat:
   SUPABASE_URL
   SUPABASE_SERVICE_ROLE_KEY
   ADMIN_USERNAME = ratecard1
   ADMIN_PASSWORD = admin123##
   ADMIN_TOKEN_SECRET = string acak panjang
6. Redeploy site.
7. Buka /admin.html untuk login.
8. Viewer cukup membuka URL utama.

PENTING:
- Jangan pernah menaruh SUPABASE_SERVICE_ROLE_KEY di HTML/JS browser.
- Password Admin pada versi ini dibaca server-side melalui Netlify Function.
- Versi paket ini memakai database online untuk semua teks/harga/link.
- Upload gambar melalui tombol masih disiapkan sebagai langkah lanjutan; untuk keamanan file storage, jangan masukkan service-role key ke browser.

Netlify mendukung deploy folder melalui drag-and-drop. Lihat dokumentasi resmi Netlify.
