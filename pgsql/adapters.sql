create table cache
(
    id       varchar(36)  not null
        primary key,
    protocol varchar(256) not null,
    key      varchar(256) not null,
    data     jsonb        not null
);

create unique index cache_key_idx
    on cache (protocol, key);

