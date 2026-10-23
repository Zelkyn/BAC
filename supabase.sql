create table if not exists public.bacfr_donnees (
  user_id uuid primary key references auth.users (id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  constraint bacfr_donnees_taille check (pg_column_size(data) < 8000000)
);
alter table public.bacfr_donnees enable row level security;
alter table public.bacfr_donnees force row level security;
revoke all on table public.bacfr_donnees from anon, public;
grant select, insert, update, delete on table public.bacfr_donnees to authenticated;
drop policy if exists "lire ses donnees" on public.bacfr_donnees;
drop policy if exists "creer ses donnees" on public.bacfr_donnees;
drop policy if exists "modifier ses donnees" on public.bacfr_donnees;
drop policy if exists "supprimer ses donnees" on public.bacfr_donnees;
create policy "lire ses donnees" on public.bacfr_donnees for select to authenticated using ((select auth.uid()) = user_id);
create policy "creer ses donnees" on public.bacfr_donnees for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "modifier ses donnees" on public.bacfr_donnees for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
create policy "supprimer ses donnees" on public.bacfr_donnees for delete to authenticated using ((select auth.uid()) = user_id);
create or replace function public.supprimer_mon_compte() returns void language sql security definer set search_path = '' as $$ delete from auth.users where id = auth.uid(); $$;
revoke all on function public.supprimer_mon_compte() from public, anon;
grant execute on function public.supprimer_mon_compte() to authenticated;
