alter table OMEGA_SHOW add constraint FK_OMEGA_SHOW_SHOW_VENUE foreign key (SHOW_VENUE_ID) references OMEGA_SHOW_VENUE(ID);
create index IDX_OMEGA_SHOW_SHOW_VENUE on OMEGA_SHOW (SHOW_VENUE_ID);
