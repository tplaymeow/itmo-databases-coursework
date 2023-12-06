insert into "USER" (username, password, token)
values ('tplaymeow', '12345', '00000'); -- id: 1

insert into "PROJECT" (name, description, creation_data)
values ('Колобок', 'Колобок - это крутая сказка', timestamp '2023-01-01 00:00:00'); -- id: 1

-- Добавление зайца --
insert into "CHARACTER" (name, theme, project_id)
values ('Заяц', 'green', 1); -- id: 1 --

insert into "RESOURCE" (name, creation_date)
values ('картинка_доброго_зайца.png', timestamp '2023-01-01 00:00:00'); -- id: 1 --

insert into "CHARACTER_APPEARANCE" (resource_id, character_id)
values (1, 1); -- id: 1 --

insert into "RESOURCE" (name, creation_date)
values ('картинка_злого_зайца.png', timestamp '2023-01-01 00:00:00'); -- id: 2 --

insert into "CHARACTER_APPEARANCE" (resource_id, character_id)
values (2, 1); -- id: 2 --

-- Добавление капибары --
insert into "CHARACTER" (name, theme, project_id)
values ('Капибара', 'brown', 1); -- id: 2 --

insert into "RESOURCE" (name, creation_date)
values ('картинка_доброй_капибары.png', timestamp '2023-01-01 00:00:00'); -- id: 3 --

insert into "CHARACTER_APPEARANCE" (resource_id, character_id)
values (3, 2); -- id: 3 --

insert into "RESOURCE" (name, creation_date)
values ('картинка_злой_капибары.png', timestamp '2023-01-01 00:00:00'); -- id: 4 --

insert into "CHARACTER_APPEARANCE" (resource_id, character_id)
values (4, 2); -- id: 4 --

-- Добавление лисы --
insert into "CHARACTER" (name, theme, project_id)
values ('Лиса', 'orange', 1); -- id: 3 --

insert into "RESOURCE" (name, creation_date)
values ('картинка_доброй_лисы.png', timestamp '2023-01-01 00:00:00'); -- id: 5 --

insert into "CHARACTER_APPEARANCE" (resource_id, character_id)
values (5, 3); -- id: 5 --

insert into "RESOURCE" (name, creation_date)
values ('картинка_злой_лисы.png', timestamp '2023-01-01 00:00:00'); -- id: 6 --

insert into "CHARACTER_APPEARANCE" (resource_id, character_id)
values (6, 3); -- id: 6 --

-- Добавление колобка --
insert into "CHARACTER" (name, theme, project_id)
values ('Колобок', 'white', 1); -- id: 4 --

insert into "RESOURCE" (name, creation_date)
values ('картинка_колобка.png', timestamp '2023-01-01 00:00:00'); -- id: 7 --

insert into "CHARACTER_APPEARANCE" (resource_id, character_id)
values (7, 4); -- id: 7 --


insert into "RESOURCE" (name, creation_date)
values ('фон.png', timestamp '2023-01-01 00:00:00'); -- id: 8 --

insert into "SCENE" (background_resource_id, project_id)
values (8, 1); -- id: 1 --

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (1, 7);

insert into "SCENE_TEXT_CONTENT" (text, character_id, scene_id)
values ('Я колобок и я выжил', 4, 1);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Круто', null, 1);


insert into "SCENE" (background_resource_id, project_id)
values (8, 1); -- id: 2 --

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (2, 6);

insert into "SCENE_TEXT_CONTENT" (text, character_id, scene_id)
values ('Я лиса и я съела колобка', 3, 2);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Жаль', null, 2);


insert into "SCENE" (background_resource_id, project_id)
values (8, 1); -- id: 3 --

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (3, 4);

insert into "SCENE_TEXT_CONTENT" (text, character_id, scene_id)
values ('Я капибара и я съела колобка', 2, 3);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Жаль', null, 3);


insert into "SCENE" (background_resource_id, project_id)
values (8, 1); -- id: 4 --

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (4, 2);

insert into "SCENE_TEXT_CONTENT" (text, character_id, scene_id)
values ('Я заяц и я съел колобка', 1, 4);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Жаль', null, 4);


insert into "SCENE" (background_resource_id, project_id)
values (8, 1); -- id: 5 --

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (5, 7);

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (5, 5);

insert into "SCENE_TEXT_CONTENT" (text, character_id, scene_id)
values ('Я лиса! Пошли со мной.', 3, 5);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Пойти', 2, 5);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Пройти мимо', 1, 5);


insert into "SCENE" (background_resource_id, project_id)
values (8, 1); -- id: 6 --

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (6, 7);

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (6, 3);

insert into "SCENE_TEXT_CONTENT" (text, character_id, scene_id)
values ('Я капибара! Пошли со мной.', 2, 6);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Пойти', 3, 6);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Пройти мимо', 5, 6);


insert into "SCENE" (background_resource_id, project_id)
values (8, 1); -- id: 7 --

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (7, 7);

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (7, 1);

insert into "SCENE_TEXT_CONTENT" (text, character_id, scene_id)
values ('Я заяц! Пошли со мной.', 1, 7);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Пойти', 4, 7);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Пройти мимо', 6, 7);


insert into "SCENE" (background_resource_id, project_id)
values (8, 1); -- id: 8 --

insert into "SCENE_CHARACTER_APPEARANCE" (scene_id, character_appearance_id)
values (8, 7);

insert into "SCENE_TEXT_CONTENT" (text, character_id, scene_id)
values ('Я колобок, я колобок, я от бабушки ушёл', 4, 8);

insert into "SCENE_ACTION" (text, next_scene_id, scene_id)
values ('Круто', 7, 8);


insert into "USER_PROJECT_PERMISSION" (user_id, project_id, type)
values (1, 1, 'read_write');


insert into "PROJECT_INITIAL_SCENE" (project_id, scene_id)
values (1, 8);

insert into "USER_GAME" (user_id, scene_id, creation_data) values (1, 1, now());

insert into "USER_GAME" (user_id, scene_id, creation_data) values (1, 3, now());

delete from "SCENE" where identifier = 3;
