alter table OMEGA_TICKET_CATEGORY add constraint FK_OMEGA_TICKET_CATEGORY_SHOW foreign key (SHOW_ID) references OMEGA_SHOW(ID);
create index IDX_OMEGA_TICKET_CATEGORY_SHOW on OMEGA_TICKET_CATEGORY (SHOW_ID);