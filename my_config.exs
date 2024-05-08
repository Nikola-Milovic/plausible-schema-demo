import Config

if database_schema = System.get_env("DATABASE_SCHEMA") do
  config :plausible, Plausible.Repo,
    after_connect: {Postgrex, :query!, ["SET search_path TO #{database_schema}", []]}
end
