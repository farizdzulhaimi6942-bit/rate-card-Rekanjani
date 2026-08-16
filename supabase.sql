-- SUPABASE SETUP
create table if not exists public.rate_card (
  id integer primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.rate_card enable row level security;

-- The Netlify serverless functions use the service-role key, so public clients
-- do not need direct table access.
insert into public.rate_card (id,data)
values (1, '{
"title":"RATE CARD",
"marquee":"PREMIUM RATE CARD • UPDATE TERBARU • SILAKAN CEK HARGA & INFORMASI",
"accent":"#00e5c3",
"bg":"#071018",
"profile":"",
"wall":"",
"rates":[["📘","FACEBOOK","Rp 0"],["◎","INSTAGRAM","Rp 0"],["▶","REELS FACEBOOK","Rp 0"],["♪","TIKTOK","Rp 0"],["★","ALL SOSMED","Rp 0"]],
"accounts":[["FACEBOOK","Nama akun Facebook",""],["INSTAGRAM","Nama akun Instagram",""],["TIKTOK","Nama akun TikTok",""]],
"note":"Silakan isi keterangan terbaru melalui Admin."
}'::jsonb)
on conflict (id) do nothing;
