-- Функция для создания пустого проекта
create or replace function create_empty_project(
    name_param varchar(100),
    description_param text,
    user_id_param integer
) returns integer as
$$
declare
    project_id integer;
begin
    -- Вставка проекта
    insert into "PROJECT" (name, description, creation_data)
    values (name_param, description_param, now())
    returning identifier into project_id;

    -- Вставка прав доступа пользователя
    insert into "USER_PROJECT_PERMISSION" (user_id, project_id, type)
    values (user_id_param, project_id, 'read_write');

    return project_id;
end;
$$ language plpgsql;

comment on function create_empty_project(varchar, text, integer)
    is 'Создает пустой проект с указанными данными и предоставляет пользователю права на чтение и запись';

-- Функция для добавления нового персонажа с единственным обликом
create or replace function add_new_character_with_single_appearance(
    name_param varchar(100),
    theme_param varchar(100),
    resource_id_param integer,
    project_id_param integer,
    user_id_param integer
) returns integer as
$$
declare
    character_id integer;
begin
    -- Проверка наличия прав доступа пользователя для редактирования проекта
    if not exists(select 1
                  from "USER_PROJECT_PERMISSION"
                  where user_id = user_id_param
                    and project_id = project_id_param
                    and type = 'read_write') then
        raise exception
            'User with ID % cant edit project with ID %',
            user_id_param,
            project_id_param;
    end if;

    -- Вставка персонажа
    insert into "CHARACTER" (name, theme, project_id)
    values (name_param, theme_param, project_id_param)
    returning identifier into character_id;

    -- Вставка стандартного облика
    insert into "CHARACTER_APPEARANCE" (resource_id, character_id)
    values (resource_id_param, character_id);

    return character_id;
end;
$$ language plpgsql;

comment on function add_new_character_with_single_appearance(varchar, varchar, integer, integer, integer)
    is 'Добавляет нового персонажа с указанными данными и стандартным обликом в проект';
