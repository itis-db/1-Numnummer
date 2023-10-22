
create table if not exists activity
(
    activity_id integer not null constraint pk_activitytype primary key,
    activitytypeid integer not null,
    name           text    not null,
    sysname        text    not null,
    parent_id integer
);

create table if not exists program
    (        
        program_id integer not null primary key,
        foreign key (program_id) references activity(activity_id),
        name text not null
    );

create table if not exists sub_program
    (        
        sub_program_id integer not null primary key,
        foreign key (sub_program_id) references activity(activity_id),
        name text not null
    );

create table if not exists project
    (
        project_id integer not null primary key,
        foreign key (project_id) references activity(activity_id),
        name text not null
    );

create table if not exists contract
    (
        contract_id integer not null primary key,
        foreign key (contract_id) references activity(activity_id),
        area_id integer not null,
        name text not null
    );

create table if not exists point
    (
        point_id integer not null primary key,
        foreign key (point_id) references activity(activity_id),
        name text not null
    );
