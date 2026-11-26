create table public.items (
id uuid primary key default gen_random_uuid(),
user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
brand text not null default '', category text not null, size text not null default '',
condition text not null default '', notes text not null default '',
purchase_cents integer not null check(purchase_cents>=0),
fees_cents integer not null default 0 check(fees_cents>=0),
asking_cents integer check(asking_cents>=0),
sold_cents integer check(sold_cents>=0),
status text not null default 'draft' check(status in ('draft','listed','sold','shipped')),
created_at timestamptz not null default now(), listed_at timestamptz, sold_at timestamptz,
check(status not in ('sold','shipped') or (sold_cents is not null and sold_at is not null))
);
create index items_owner_idx on public.items(user_id);
alter table public.items enable row level security;
revoke all on public.items from anon, authenticated;
grant select,insert,update,delete on public.items to authenticated;
create policy own_items on public.items for all to authenticated using ((select auth.uid())=user_id) with check ((select auth.uid())=user_id);