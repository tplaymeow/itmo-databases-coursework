create or replace function remove_scene_trigger_function()
    returns trigger as
$$
begin
    update "USER_GAME"
    set scene_id = (select "PROJECT_INITIAL_SCENE".scene_id
                    from "PROJECT_INITIAL_SCENE"
                    where "PROJECT_INITIAL_SCENE".project_id = old.project_id
                    limit 1)
    where "USER_GAME".scene_id = old.identifier;
    return new;
end;
$$ language plpgsql;

create trigger remove_scene_trigger
    before delete
    on "SCENE"
    for each row
execute procedure remove_scene_trigger_function();