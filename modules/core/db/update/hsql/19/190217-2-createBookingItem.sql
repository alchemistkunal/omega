alter table OMEGA_BOOKING_ITEM add constraint FK_OMEGA_BOOKING_ITEM_ON_SHOW_TIMING foreign key (SHOW_TIMING_ID) references OMEGA_SHOW_TIMING(ID);
alter table OMEGA_BOOKING_ITEM add constraint FK_OMEGA_BOOKING_ITEM_ON_TICKET_CATEGORY foreign key (TICKET_CATEGORY_ID) references OMEGA_TICKET_CATEGORY(ID);
alter table OMEGA_BOOKING_ITEM add constraint FK_OMEGA_BOOKING_ITEM_ON_PAYMENT_CATEGORY foreign key (PAYMENT_CATEGORY_ID) references OMEGA_PAYMENT_CATEGORY(ID);
alter table OMEGA_BOOKING_ITEM add constraint FK_OMEGA_BOOKING_ITEM_ON_BOOKING foreign key (BOOKING_ID) references OMEGA_BOOKING(ID);
create index IDX_OMEGA_BOOKING_ITEM_ON_SHOW_TIMING on OMEGA_BOOKING_ITEM (SHOW_TIMING_ID);
create index IDX_OMEGA_BOOKING_ITEM_ON_TICKET_CATEGORY on OMEGA_BOOKING_ITEM (TICKET_CATEGORY_ID);
create index IDX_OMEGA_BOOKING_ITEM_ON_PAYMENT_CATEGORY on OMEGA_BOOKING_ITEM (PAYMENT_CATEGORY_ID);
create index IDX_OMEGA_BOOKING_ITEM_ON_BOOKING on OMEGA_BOOKING_ITEM (BOOKING_ID);
