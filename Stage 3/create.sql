create type "PERMISSION_TYPE" as enum ('read_only', 'read_write');

create table if not exists "USER"
(
    identifier serial primary key,
    username   varchar(100) not null,
    password   varchar(100) not null,
    token      varchar(100) not null
);

create table if not exists "PROJECT"
(
    identifier    serial primary key,
    name          varchar(100) not null,
    description   text,
    creation_data timestamp    not null
);

create table if not exists "USER_PROJECT_PERMISSION"
(
    identifier serial primary key,
    user_id    integer           not null references "USER" on delete cascade,
    project_id integer           not null references "PROJECT" on delete cascade,
    type       "PERMISSION_TYPE" not null
);

create table if not exists "CHARACTER"
(
    identifier serial primary key,
    name       varchar(100) not null,
    theme      varchar(100) not null,
    project_id integer      not null references "PROJECT" on delete cascade
);

create table if not exists "RESOURCE"
(
    identifier    serial primary key,
    name          varchar(100) not null,
    creation_date timestamp    not null
);

create table if not exists "CHARACTER_APPEARANCE"
(
    identifier   serial primary key,
    resource_id  integer references "RESOURCE" on delete set null,
    character_id integer not null references "CHARACTER" on delete cascade
);

create table if not exists "SCENE"
(
    identifier             serial primary key,
    background_resource_id integer references "RESOURCE" on delete set null,
    project_id             integer not null references "PROJECT" on delete cascade
);

create table if not exists "PROJECT_INITIAL_SCENE"
(
    project_id integer unique not null references "PROJECT" on delete cascade,
    scene_id   integer        references "SCENE" on delete set null,
    primary key (project_id, scene_id)
);

create table if not exists "SCENE_CHARACTER_APPEARANCE"
(
    scene_id                integer not null references "SCENE" on delete cascade,
    character_appearance_id integer not null references "CHARACTER_APPEARANCE" on delete cascade,
    primary key (scene_id, character_appearance_id)
);

create table if not exists "SCENE_TEXT_CONTENT"
(
    identifier   serial primary key,
    text         text    not null,
    character_id integer not null references "CHARACTER" on delete cascade,
    scene_id     integer not null references "SCENE" on delete cascade
);

create table if not exists "SCENE_ACTION"
(
    identifier    serial primary key,
    text          varchar(100) not null,
    next_scene_id integer      references "SCENE" on delete set null,
    scene_id      integer      not null references "SCENE" on delete cascade
);

create table if not exists "USER_GAME"
(
    identifier    serial primary key,
    user_id       integer   not null references "USER" on delete cascade,
    scene_id      integer   references "SCENE" on delete set null ,
    creation_data timestamp not null
);