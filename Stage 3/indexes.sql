-- Индекс для таблицы "USER" по колонке "username"
create index idx_user_username on "USER" using hash(username);

-- Индекс для таблицы "PROJECT" по колонке "name"
create index idx_project_name on "PROJECT" (name);

-- Индекс для таблицы "USER_PROJECT_PERMISSION" по колонкам "user_id" и "project_id"
create index idx_user_project_permission_ids on "USER_PROJECT_PERMISSION" using btree(user_id, project_id);

-- Индекс для таблицы "SCENE" по колонке "project_id"
create index idx_scene_project_id on "SCENE" using hash(project_id);

-- Индекс для таблицы "SCENE_TEXT_CONTENT" по колонке "scene_id"
create index idx_scene_text_content_scene_id on "SCENE_TEXT_CONTENT" using hash(scene_id);

-- Индекс для таблицы "SCENE_ACTION" по колонке "scene_id"
create index idx_scene_action_scene_id on "SCENE_ACTION" using hash(scene_id);

-- Индекс для таблицы "SCENE_CHARACTER_APPEARANCE" по колонке "scene_id"
create index idx_scene_char_appearance_scene_id on "SCENE_CHARACTER_APPEARANCE" using hash(scene_id);
