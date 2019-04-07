-- begin OMEGA_ORGANISATION
alter table OMEGA_ORGANISATION add constraint FK_OMEGA_ORGANISATION_COUNTRY foreign key (COUNTRY_ID) references OMEGA_COUNTRY(ID)^
alter table OMEGA_ORGANISATION add constraint FK_OMEGA_ORGANISATION_INDUSTRY foreign key (INDUSTRY_ID) references OMEGA_INDUSTRY(ID)^
create index IDX_OMEGA_ORGANISATION_COUNTRY on OMEGA_ORGANISATION (COUNTRY_ID)^
create index IDX_OMEGA_ORGANISATION_INDUSTRY on OMEGA_ORGANISATION (INDUSTRY_ID)^
-- end OMEGA_ORGANISATION
-- begin OMEGA_BOOKING_ITEM
alter table OMEGA_BOOKING_ITEM add constraint FK_OMEGA_BOOKING_ITEM_SHOW_TIMING foreign key (SHOW_TIMING_ID) references OMEGA_SHOW_TIMING(ID)^
alter table OMEGA_BOOKING_ITEM add constraint FK_OMEGA_BOOKING_ITEM_TICKET_CATEGORY foreign key (TICKET_CATEGORY_ID) references OMEGA_TICKET_CATEGORY(ID)^
alter table OMEGA_BOOKING_ITEM add constraint FK_OMEGA_BOOKING_ITEM_PAYMENT_CATEGORY foreign key (PAYMENT_CATEGORY_ID) references OMEGA_PAYMENT_CATEGORY(ID)^
alter table OMEGA_BOOKING_ITEM add constraint FK_OMEGA_BOOKING_ITEM_BOOKING foreign key (BOOKING_ID) references OMEGA_BOOKING(ID)^
create index IDX_OMEGA_BOOKING_ITEM_SHOW_TIMING on OMEGA_BOOKING_ITEM (SHOW_TIMING_ID)^
create index IDX_OMEGA_BOOKING_ITEM_TICKET_CATEGORY on OMEGA_BOOKING_ITEM (TICKET_CATEGORY_ID)^
create index IDX_OMEGA_BOOKING_ITEM_PAYMENT_CATEGORY on OMEGA_BOOKING_ITEM (PAYMENT_CATEGORY_ID)^
create index IDX_OMEGA_BOOKING_ITEM_BOOKING on OMEGA_BOOKING_ITEM (BOOKING_ID)^
-- end OMEGA_BOOKING_ITEM
-- begin OMEGA_SHOW
alter table OMEGA_SHOW add constraint FK_OMEGA_SHOW_SHOW_VENUE foreign key (SHOW_VENUE_ID) references OMEGA_SHOW_VENUE(ID)^
create index IDX_OMEGA_SHOW_SHOW_VENUE on OMEGA_SHOW (SHOW_VENUE_ID)^
-- end OMEGA_SHOW
-- begin OMEGA_BOOKING
alter table OMEGA_BOOKING add constraint FK_OMEGA_BOOKING_ORGANISATION foreign key (ORGANISATION_ID) references OMEGA_ORGANISATION(ID)^
alter table OMEGA_BOOKING add constraint FK_OMEGA_BOOKING_SHOW foreign key (SHOW_ID) references OMEGA_SHOW(ID)^
alter table OMEGA_BOOKING add constraint FK_OMEGA_BOOKING_SRT_CONTACT foreign key (SRT_CONTACT_ID) references OMEGA_CONTACT(ID)^
alter table OMEGA_BOOKING add constraint FK_OMEGA_BOOKING_ORG_CONTACT foreign key (ORG_CONTACT_ID) references OMEGA_CONTACT(ID)^
create index IDX_OMEGA_BOOKING_ORGANISATION on OMEGA_BOOKING (ORGANISATION_ID)^
create index IDX_OMEGA_BOOKING_SHOW on OMEGA_BOOKING (SHOW_ID)^
create index IDX_OMEGA_BOOKING_SRT_CONTACT on OMEGA_BOOKING (SRT_CONTACT_ID)^
create index IDX_OMEGA_BOOKING_ORG_CONTACT on OMEGA_BOOKING (ORG_CONTACT_ID)^
-- end OMEGA_BOOKING
-- begin OMEGA_SHOW_TIMING
alter table OMEGA_SHOW_TIMING add constraint FK_OMEGA_SHOW_TIMING_SHOW foreign key (SHOW_ID) references OMEGA_SHOW(ID)^
create index IDX_OMEGA_SHOW_TIMING_SHOW on OMEGA_SHOW_TIMING (SHOW_ID)^
-- end OMEGA_SHOW_TIMING
-- begin OMEGA_TICKET_CATEGORY
alter table OMEGA_TICKET_CATEGORY add constraint FK_OMEGA_TICKET_CATEGORY_SHOW foreign key (SHOW_ID) references OMEGA_SHOW(ID)^
create index IDX_OMEGA_TICKET_CATEGORY_SHOW on OMEGA_TICKET_CATEGORY (SHOW_ID)^
-- end OMEGA_TICKET_CATEGORY
-- begin OMEGA_CONTACT
alter table OMEGA_CONTACT add constraint FK_OMEGA_CONTACT_ORGANISATION foreign key (ORGANISATION_ID) references OMEGA_ORGANISATION(ID)^
create index IDX_OMEGA_CONTACT_ORGANISATION on OMEGA_CONTACT (ORGANISATION_ID)^
-- end OMEGA_CONTACT
