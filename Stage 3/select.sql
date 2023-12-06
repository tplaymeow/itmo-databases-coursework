-- Выборка превьюх для списка доступных проектов
select
    "PROJECT".identifier,
    "PROJECT".name,
    "USER".username,
    "PROJECT".creation_data
from "USER"
right join "USER_PROJECT_PERMISSION" on "USER".identifier = "USER_PROJECT_PERMISSION".user_id
right join "PROJECT" on "PROJECT".identifier = "USER_PROJECT_PERMISSION".project_id
where "USER".username = 'tplaymeow';

-- Выборка превьюх для списка активных проектов
select
    "PROJECT".identifier,
    "PROJECT".name,
    "USER".username,
    "PROJECT".creation_data,
    "SCENE".background_resource_id
from "USER"
right join "USER_GAME" on "USER".identifier = "USER_GAME".user_id
right join "SCENE" on "SCENE".identifier = "USER_GAME".scene_id
right join "PROJECT" on "PROJECT".identifier = "SCENE".project_id
where "USER".username = 'tplaymeow';

-- Выборка всех текстов для сцены
select "CHARACTER".name, "SCENE_TEXT_CONTENT".text
from "SCENE_TEXT_CONTENT"
right join "CHARACTER" on "CHARACTER".identifier = "SCENE_TEXT_CONTENT".character_id
where "SCENE_TEXT_CONTENT".scene_id = 6;

-- Выборка всех действий для сцены
select *
from "SCENE_ACTION"
where "SCENE_ACTION".scene_id = 6;

-- Выборка всех персонажей для сцены
select "CHARACTER".name, "CHARACTER".theme, "CHARACTER_APPEARANCE".resource_id
from "SCENE_CHARACTER_APPEARANCE"
right join "CHARACTER_APPEARANCE" on "CHARACTER_APPEARANCE".identifier = "SCENE_CHARACTER_APPEARANCE".character_appearance_id
right join "CHARACTER" on "CHARACTER".identifier = "CHARACTER_APPEARANCE".character_id
where "SCENE_CHARACTER_APPEARANCE".scene_id = 6;
