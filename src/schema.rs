// @generated automatically by Diesel CLI.

diesel::table! {
    car (id) {
        id -> Int4,
        uuid -> Uuid,
        team_id -> Nullable<Int4>,
        engine_id -> Nullable<Int4>,
        chassis_id -> Nullable<Int4>,
        stats -> Jsonb,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::table! {
    chassis (id) {
        id -> Int4,
        uuid -> Uuid,
        power -> Nullable<Int4>,
        agility -> Nullable<Int4>,
        stats -> Jsonb,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::table! {
    engine (id) {
        id -> Int4,
        uuid -> Uuid,
        power -> Nullable<Int4>,
        agility -> Nullable<Int4>,
        stats -> Jsonb,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::table! {
    racing_driver (id) {
        id -> Int4,
        uuid -> Uuid,
        firstname -> Varchar,
        lastname -> Varchar,
        surname -> Nullable<Varchar>,
        nationality -> Varchar,
        stats -> Jsonb,
        team_id -> Nullable<Int4>,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::table! {
    team (id) {
        id -> Int4,
        uuid -> Uuid,
        name -> Varchar,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::joinable!(car -> chassis (chassis_id));
diesel::joinable!(car -> engine (engine_id));

diesel::allow_tables_to_appear_in_same_query!(
    car,
    chassis,
    engine,
    racing_driver,
    team,
);
