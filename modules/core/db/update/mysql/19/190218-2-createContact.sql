alter table OMEGA_CONTACT add constraint FK_OMEGA_CONTACT_ON_ORGANISATION foreign key (ORGANISATION_ID) references OMEGA_ORGANISATION(ID);
create index IDX_OMEGA_CONTACT_ON_ORGANISATION on OMEGA_CONTACT (ORGANISATION_ID);
