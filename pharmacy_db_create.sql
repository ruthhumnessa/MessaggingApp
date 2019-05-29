
    create table pharmacy (
       pharmacy_name varchar(255) not null,
        kebele varchar(255),
        official_email varchar(255),
        official_phone_no varchar(255),
        password varchar(255),
        re_password varchar(255),
        sub_city varchar(255),
        primary key (pharmacy_name)
    ) engine=InnoDB

    create table pharmacy (
       id bigint not null auto_increment,
        created_at datetime,
        kebele varchar(255),
        official_email varchar(255),
        official_phone_no varchar(255),
        password varchar(255),
        pharmacy_name varchar(255),
        re_password varchar(255),
        sub_city varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table pharmacy (
       id bigint not null auto_increment,
        created_at datetime,
        kebele varchar(255),
        official_email varchar(255),
        official_phone_no varchar(255),
        password varchar(255),
        pharmacy_name varchar(255),
        re_password varchar(255),
        sub_city varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    create table drugs (
       drug_id bigint not null auto_increment,
        description varchar(255),
        name varchar(255),
        amount bigint not null,
        expiration_date varchar(255),
        price bigint not null,
        production_date varchar(255),
        primary key (drug_id)
    ) engine=InnoDB

    create table pharmac_branch (
       branch_no bigint not null auto_increment,
        branch_name varchar(255),
        branch_office_phone_no varchar(255),
        city varchar(255),
        kebele varchar(255),
        profile_images tinyblob,
        subcity varchar(255),
        primary key (branch_no)
    ) engine=InnoDB

    create table pharmac_branch_pharmac_drugs (
       pharmac_branch_branch_no bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmac_branch_branch_no, pharmac_drugs_drug_id)
    ) engine=InnoDB

    create table pharmacy (
       pharmacy_license_id bigint not null auto_increment,
        description varchar(255),
        created_at datetime,
        office_email varchar(255),
        office_phone_no varchar(255),
        pharmacy_name varchar(255),
        profile_images tinyblob,
        primary key (pharmacy_license_id)
    ) engine=InnoDB

    create table pharmacy_pharmac_branches (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_branches_branch_no bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_branches_branch_no)
    ) engine=InnoDB

    create table pharmacy_pharmac_drugs (
       pharmacy_pharmacy_license_id bigint not null,
        pharmac_drugs_drug_id bigint not null,
        primary key (pharmacy_pharmacy_license_id, pharmac_drugs_drug_id)
    ) engine=InnoDB

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKgbn2px556f4gv940h2bqc6i3k 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmac_branch_pharmac_drugs 
       add constraint FKk32gl4gd4cx8i8187xktxilwl 
       foreign key (pharmac_branch_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FK3h1gedmky37giby9y2spth1ch 
       foreign key (pharmac_branches_branch_no) 
       references pharmac_branch (branch_no)

    alter table pharmacy_pharmac_branches 
       add constraint FKpuquyoslr2aprqwtdmgdc0x7f 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK539t3d76ti8x72elveigjmknk 
       foreign key (pharmac_drugs_drug_id) 
       references drugs (drug_id)

    alter table pharmacy_pharmac_drugs 
       add constraint FK9fqqx3fp6w4npntmyjui84qv 
       foreign key (pharmacy_pharmacy_license_id) 
       references pharmacy (pharmacy_license_id)
