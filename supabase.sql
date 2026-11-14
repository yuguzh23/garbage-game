-- 在 Supabase 後台 SQL Editor 貼上執行一次
create table if not exists public.kv (
  path text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.kv enable row level security;

-- 課堂用：任何拿到網頁的人都能讀寫（資料只有組別分數與玩法設定，沒有個資）
create policy "kv read"   on public.kv for select to anon using (true);
create policy "kv insert" on public.kv for insert to anon with check (true);
create policy "kv update" on public.kv for update to anon using (true) with check (true);
create policy "kv delete" on public.kv for delete to anon using (true);
