/* checksum : 95e3f01e0b5953188bc687ff49444ad1 */
@cds.external: true
@protocol    : 'rfc'
service S4H {};

action S4H.BAPI_PR_CREATE(
                          /** Transfer Structure for Enjoy Purchase Req. - Header */
                          @RFCParameterType: 'Import'
                          PRHEADER : S4H.DDIC.BAPIMEREQHEADER,
                          /** Change Parameter for Enjoy Purchase Requisition - Header */
                          @RFCParameterType: 'Import'
                          PRHEADERX : S4H.DDIC.BAPIMEREQHEADERX,
                          /** Test Indicator */
                          @RFCParameterType: 'Import'
                          TESTRUN : String(1),
                          /** Version Management - All Version Data */
                          @RFCParameterType: 'Table'
                          ALLVERSIONS : many S4H.DDIC.BAPIMEDCM_ALLVERSIONS,
                          /** Reference Structure for BAPI Parameters EXTENSIONIN/EXTENSIONOUT */
                          @RFCParameterType: 'Table'
                          EXTENSIONIN : many S4H.DDIC.BAPIPAREX,
                          /** Reference Structure for BAPI Parameters EXTENSIONIN/EXTENSIONOUT */
                          @RFCParameterType: 'Table'
                          EXTENSIONOUT : many S4H.DDIC.BAPIPAREX,
                          /** Transfer Structure for Enjoy Purchase Req. - Acct Assignment */
                          @RFCParameterType: 'Table'
                          PRACCOUNT : many S4H.DDIC.BAPIMEREQACCOUNT,
                          /** Reservation Event Object: BAPI_PROFITABILITY_SEGMENT */
                          @RFCParameterType: 'Table'
                          PRACCOUNTPROITSEGMENT : many S4H.DDIC.BAPIMEREQACCOUNTPROFITSEG,
                          /** Change Toolbar for Enjoy Purchase Req. - Account Assignment */
                          @RFCParameterType: 'Table'
                          PRACCOUNTX : many S4H.DDIC.BAPIMEREQACCOUNTX,
                          /** PO Item: Address Structure BAPIADDR1 for Inbound Delivery */
                          @RFCParameterType: 'Table'
                          PRADDRDELIVERY : many S4H.DDIC.BAPIMERQADDRDELIVERY,
                          /** BAPI Structure for Components */
                          @RFCParameterType: 'Table'
                          PRCOMPONENTS : many S4H.DDIC.BAPIMEREQCOMPONENT,
                          /** Update Information for Components in BUS2012 API */
                          @RFCParameterType: 'Table'
                          PRCOMPONENTSX : many S4H.DDIC.BAPIMEREQCOMPONENTX,
                          /** Change Toolbar for Enjoy Purchase Req. - Header Text */
                          @RFCParameterType: 'Table'
                          PRHEADERTEXT : many S4H.DDIC.BAPIMEREQHEADTEXT,
                          /** Transfer Structure for Enjoy Purchase Req. - Item Data */
                          @RFCParameterType: 'Table'
                          PRITEM : many S4H.DDIC.BAPIMEREQITEMIMP,
                          /** Transfer Structure for Enjoy Purchase Req. - Item Data */
                          @RFCParameterType: 'Table'
                          PRITEMEXP : many S4H.DDIC.BAPIMEREQITEM,
                          /** Return Structure for Enjoy Purchase Req. - Source of Supply */
                          @RFCParameterType: 'Table'
                          PRITEMSOURCE : many S4H.DDIC.BAPIMEREQSOURCE,
                          /** Transfer Structure for Enjoy Purchase Req. - Item Text */
                          @RFCParameterType: 'Table'
                          PRITEMTEXT : many S4H.DDIC.BAPIMEREQITEMTEXT,
                          /** Change Parameter for Enjoy Purchase Requisition - Item Data */
                          @RFCParameterType: 'Table'
                          PRITEMX : many S4H.DDIC.BAPIMEREQITEMX,
                          /** Version Data for Purchase Requisition Item (BAPI) */
                          @RFCParameterType: 'Table'
                          PRVERSION : many S4H.DDIC.BAPIMEREQDCM,
                          /** Version Data for Purchase Requisition Item (BAPI) */
                          @RFCParameterType: 'Table'
                          PRVERSIONX : many S4H.DDIC.BAPIMEREQDCMX,
                          /** Return Parameters */
                          @RFCParameterType: 'Table'
                          RETURN : many S4H.DDIC.BAPIRET2,
                          /** Serial Numbers in Purchase Requisition BAPI */
                          @RFCParameterType: 'Table'
                          SERIALNUMBER : many S4H.DDIC.BAPIMEREQSERIALNO,
                          /** Change Parameter: Serial Numbers in Purch. Requisition BAPI */
                          @RFCParameterType: 'Table'
                          SERIALNUMBERX : many S4H.DDIC.BAPIMEREQSERIALNOX,
                          @RFCParameterType: 'Table'
                          SERVICEACCOUNT : many S4H.DDIC.BAPI_SRV_ACC_DATA,
                          @RFCParameterType: 'Table'
                          SERVICEACCOUNTX : many S4H.DDIC.BAPI_SRV_ACC_DATAX,
                          @RFCParameterType: 'Table'
                          SERVICECONTRACTLIMITS : many S4H.DDIC.BAPI_SRV_CONTRACT_LIMITS,
                          @RFCParameterType: 'Table'
                          SERVICECONTRACTLIMITSX : many S4H.DDIC.BAPI_SRV_CONTRACT_LIMITSX,
                          @RFCParameterType: 'Table'
                          SERVICELIMIT : many S4H.DDIC.BAPI_SRV_LIMIT_DATA,
                          @RFCParameterType: 'Table'
                          SERVICELIMITX : many S4H.DDIC.BAPI_SRV_LIMIT_DATAX,
                          @RFCParameterType: 'Table'
                          SERVICELINES : many S4H.DDIC.BAPI_SRV_SERVICE_LINE,
                          @RFCParameterType: 'Table'
                          SERVICELINESX : many S4H.DDIC.BAPI_SRV_SERVICE_LINEX,
                          @RFCParameterType: 'Table'
                          SERVICELONGTEXTS : many S4H.DDIC.BAPI_SRV_LONGTEXTS,
                          @RFCParameterType: 'Table'
                          SERVICEOUTLINE : many S4H.DDIC.BAPI_SRV_OUTLINE,
                          @RFCParameterType: 'Table'
                          SERVICEOUTLINEX : many S4H.DDIC.BAPI_SRV_OUTLINEX) returns S4H.BAPI_PR_CREATE.ResultType;

type S4H.BAPI_PR_CREATE.ResultType {
  /** Purchase Requisition Number */
  @RFCParameterType: 'Export'
  NUMBER                 : String(10);

  /** Transfer Structure for Enjoy Purchase Req. - Header */
  @RFCParameterType: 'Export'
  PRHEADEREXP            : S4H.DDIC.BAPIMEREQHEADER;

  /** Version Management - All Version Data */
  @RFCParameterType: 'Table'
  ALLVERSIONS            : many S4H.DDIC.BAPIMEDCM_ALLVERSIONS;

  /** Reference Structure for BAPI Parameters EXTENSIONIN/EXTENSIONOUT */
  @RFCParameterType: 'Table'
  EXTENSIONIN            : many S4H.DDIC.BAPIPAREX;

  /** Reference Structure for BAPI Parameters EXTENSIONIN/EXTENSIONOUT */
  @RFCParameterType: 'Table'
  EXTENSIONOUT           : many S4H.DDIC.BAPIPAREX;

  /** Transfer Structure for Enjoy Purchase Req. - Acct Assignment */
  @RFCParameterType: 'Table'
  PRACCOUNT              : many S4H.DDIC.BAPIMEREQACCOUNT;

  /** Reservation Event Object: BAPI_PROFITABILITY_SEGMENT */
  @RFCParameterType: 'Table'
  PRACCOUNTPROITSEGMENT  : many S4H.DDIC.BAPIMEREQACCOUNTPROFITSEG;

  /** Change Toolbar for Enjoy Purchase Req. - Account Assignment */
  @RFCParameterType: 'Table'
  PRACCOUNTX             : many S4H.DDIC.BAPIMEREQACCOUNTX;

  /** PO Item: Address Structure BAPIADDR1 for Inbound Delivery */
  @RFCParameterType: 'Table'
  PRADDRDELIVERY         : many S4H.DDIC.BAPIMERQADDRDELIVERY;

  /** BAPI Structure for Components */
  @RFCParameterType: 'Table'
  PRCOMPONENTS           : many S4H.DDIC.BAPIMEREQCOMPONENT;

  /** Update Information for Components in BUS2012 API */
  @RFCParameterType: 'Table'
  PRCOMPONENTSX          : many S4H.DDIC.BAPIMEREQCOMPONENTX;

  /** Change Toolbar for Enjoy Purchase Req. - Header Text */
  @RFCParameterType: 'Table'
  PRHEADERTEXT           : many S4H.DDIC.BAPIMEREQHEADTEXT;

  /** Transfer Structure for Enjoy Purchase Req. - Item Data */
  @RFCParameterType: 'Table'
  PRITEM                 : many S4H.DDIC.BAPIMEREQITEMIMP;

  /** Transfer Structure for Enjoy Purchase Req. - Item Data */
  @RFCParameterType: 'Table'
  PRITEMEXP              : many S4H.DDIC.BAPIMEREQITEM;

  /** Return Structure for Enjoy Purchase Req. - Source of Supply */
  @RFCParameterType: 'Table'
  PRITEMSOURCE           : many S4H.DDIC.BAPIMEREQSOURCE;

  /** Transfer Structure for Enjoy Purchase Req. - Item Text */
  @RFCParameterType: 'Table'
  PRITEMTEXT             : many S4H.DDIC.BAPIMEREQITEMTEXT;

  /** Change Parameter for Enjoy Purchase Requisition - Item Data */
  @RFCParameterType: 'Table'
  PRITEMX                : many S4H.DDIC.BAPIMEREQITEMX;

  /** Version Data for Purchase Requisition Item (BAPI) */
  @RFCParameterType: 'Table'
  PRVERSION              : many S4H.DDIC.BAPIMEREQDCM;

  /** Version Data for Purchase Requisition Item (BAPI) */
  @RFCParameterType: 'Table'
  PRVERSIONX             : many S4H.DDIC.BAPIMEREQDCMX;

  /** Return Parameters */
  @RFCParameterType: 'Table'
  RETURN                 : many S4H.DDIC.BAPIRET2;

  /** Serial Numbers in Purchase Requisition BAPI */
  @RFCParameterType: 'Table'
  SERIALNUMBER           : many S4H.DDIC.BAPIMEREQSERIALNO;

  /** Change Parameter: Serial Numbers in Purch. Requisition BAPI */
  @RFCParameterType: 'Table'
  SERIALNUMBERX          : many S4H.DDIC.BAPIMEREQSERIALNOX;

  @RFCParameterType: 'Table'
  SERVICEACCOUNT         : many S4H.DDIC.BAPI_SRV_ACC_DATA;

  @RFCParameterType: 'Table'
  SERVICEACCOUNTX        : many S4H.DDIC.BAPI_SRV_ACC_DATAX;

  @RFCParameterType: 'Table'
  SERVICECONTRACTLIMITS  : many S4H.DDIC.BAPI_SRV_CONTRACT_LIMITS;

  @RFCParameterType: 'Table'
  SERVICECONTRACTLIMITSX : many S4H.DDIC.BAPI_SRV_CONTRACT_LIMITSX;

  @RFCParameterType: 'Table'
  SERVICELIMIT           : many S4H.DDIC.BAPI_SRV_LIMIT_DATA;

  @RFCParameterType: 'Table'
  SERVICELIMITX          : many S4H.DDIC.BAPI_SRV_LIMIT_DATAX;

  @RFCParameterType: 'Table'
  SERVICELINES           : many S4H.DDIC.BAPI_SRV_SERVICE_LINE;

  @RFCParameterType: 'Table'
  SERVICELINESX          : many S4H.DDIC.BAPI_SRV_SERVICE_LINEX;

  @RFCParameterType: 'Table'
  SERVICELONGTEXTS       : many S4H.DDIC.BAPI_SRV_LONGTEXTS;

  @RFCParameterType: 'Table'
  SERVICEOUTLINE         : many S4H.DDIC.BAPI_SRV_OUTLINE;

  @RFCParameterType: 'Table'
  SERVICEOUTLINEX        : many S4H.DDIC.BAPI_SRV_OUTLINEX;
};

type S4H.DDIC.BAPIMEREQHEADER {
  PREQ_NO         : String(10);
  PR_TYPE         : String(4);
  CTRL_IND        : String(1);
  GENERAL_RELEASE : String(1);
  CREATE_IND      : String(1);

  @RFCAbapType: 'N'
  ITEM_INTVL      : String(5);

  @RFCAbapType: 'N'
  LAST_ITEM       : String(5);
  AUTO_SOURCE     : String(1);
  MEMORY          : String(1);
  HOLD_COMPLETE   : String(1);
  HOLD_UNCOMPLETE : String(1);
  PARK_COMPLETE   : String(1);
  PARK_UNCOMPLETE : String(1);
  MEMORYTYPE      : String(1);
};

type S4H.DDIC.BAPIMEREQHEADERX {
  PREQ_NO         : String(1);
  PR_TYPE         : String(1);
  CTRL_IND        : String(1);
  GENERAL_RELEASE : String(1);
  CREATE_IND      : String(1);
  ITEM_INTVL      : String(1);
  LAST_ITEM       : String(1);
  AUTO_SOURCE     : String(1);
  MEMORY          : String(1);
  HOLD_COMPLETE   : String(1);
  HOLD_UNCOMPLETE : String(1);
  PARK_COMPLETE   : String(1);
  PARK_UNCOMPLETE : String(1);
  MEMORYTYPE      : String(1);
};

type S4H.DDIC.BAPIMEDCM_ALLVERSIONS {
  DOC_TYPE        : String(1);
  DOC_NUMBER      : String(10);

  @RFCAbapType: 'N'
  ITEM_NUMBER     : String(5);
  VERSION         : String(8);
  CREATED_BY      : String(12);
  CR_ON           : Date;
  REC_TIME        : Time;
  RELEASED_BY     : String(12);
  RELEASE_DATE    : Date;
  RELEASE_TIME    : Time;
  RELEASEBY_PUR   : String(12);
  RELEASEDATE_PUR : Date;
  RELEASETIME_PUR : Time;
  REASON          : String(4);
  DESCRIPTION     : String(60);
  REQ_BY_EXT      : String(20);
  REQ_BY          : String(12);
  NET_VALUE       : Decimal;
  VALUE_CHANGED   : Decimal;
  CURRENCY        : String(5);
  CURRENCY_ISO    : String(3);
  POST_DATE       : Date;
  COMPLETED       : String(1);
  STATUS          : String(1);
  DELETE_IND      : String(1);
  STATUS_DOC_OLD  : String(2);
};

type S4H.DDIC.BAPIPAREX {
  STRUCTURE  : String(30);
  VALUEPART1 : String(240);
  VALUEPART2 : String(240);
  VALUEPART3 : String(240);
  VALUEPART4 : String(240);
};

type S4H.DDIC.BAPIMEREQACCOUNT {
  @RFCAbapType: 'N'
  PREQ_ITEM        : String(5);

  @RFCAbapType: 'N'
  SERIAL_NO        : String(2);
  DELETE_IND       : String(1);
  CREAT_DATE       : Date;
  QUANTITY         : Decimal;
  DISTR_PERC       : Decimal;
  NET_VALUE        : Decimal;
  GL_ACCOUNT       : String(10);
  BUS_AREA         : String(4);
  COSTCENTER       : String(10);
  SD_DOC           : String(10);

  @RFCAbapType: 'N'
  ITM_NUMBER       : String(6);

  @RFCAbapType: 'N'
  SCHED_LINE       : String(4);
  ASSET_NO         : String(12);
  SUB_NUMBER       : String(4);
  ORDERID          : String(12);
  GR_RCPT          : String(12);
  UNLOAD_PT        : String(25);
  CO_AREA          : String(4);
  COSTOBJECT       : String(12);
  PROFIT_CTR       : String(10);
  WBS_ELEMENT      : String(24);
  NETWORK          : String(12);
  RL_EST_KEY       : String(8);
  PART_ACCT        : String(10);
  CMMT_ITEM        : String(14);
  REC_IND          : String(2);
  FUNDS_CTR        : String(16);
  FUND             : String(10);
  FUNC_AREA        : String(4);
  REF_DATE         : Date;
  TAX_CODE         : String(2);
  TAXJURCODE       : String(15);
  NOND_ITAX        : Decimal;
  ACTTYPE          : String(6);
  CO_BUSPROC       : String(12);
  RES_DOC          : String(10);

  @RFCAbapType: 'N'
  RES_ITEM         : String(3);
  ACTIVITY         : String(4);
  GRANT_NBR        : String(20);
  CMMT_ITEM_LONG   : String(24);
  FUNC_AREA_LONG   : String(16);
  BUDGET_PERIOD    : String(10);
  SERVICE_DOC      : String(10);

  @RFCAbapType: 'N'
  SERVICE_ITEM     : String(6);
  SERVICE_DOC_TYPE : String(4);
};

type S4H.DDIC.BAPIMEREQACCOUNTPROFITSEG {
  @RFCAbapType: 'N'
  PREQ_ITEM : String(5);

  @RFCAbapType: 'N'
  SERIAL_NO : String(2);
  FIELDNAME : String(30);
  VALUE     : String(50);
};

type S4H.DDIC.BAPIMEREQACCOUNTX {
  @RFCAbapType: 'N'
  PREQ_ITEM        : String(5);

  @RFCAbapType: 'N'
  SERIAL_NO        : String(2);
  PREQ_ITEMX       : String(1);
  SERIAL_NOX       : String(1);
  DELETE_IND       : String(1);
  CREAT_DATE       : String(1);
  QUANTITY         : String(1);
  DISTR_PERC       : String(1);
  NET_VALUE        : String(1);
  GL_ACCOUNT       : String(1);
  BUS_AREA         : String(1);
  COSTCENTER       : String(1);
  SD_DOC           : String(1);
  ITM_NUMBER       : String(1);
  SCHED_LINE       : String(1);
  ASSET_NO         : String(1);
  SUB_NUMBER       : String(1);
  ORDERID          : String(1);
  GR_RCPT          : String(1);
  UNLOAD_PT        : String(1);
  CO_AREA          : String(1);
  COSTOBJECT       : String(1);
  PROFIT_CTR       : String(1);
  WBS_ELEMENT      : String(1);
  NETWORK          : String(1);
  RL_EST_KEY       : String(1);
  PART_ACCT        : String(1);
  CMMT_ITEM        : String(1);
  REC_IND          : String(1);
  FUNDS_CTR        : String(1);
  FUND             : String(1);
  FUNC_AREA        : String(1);
  REF_DATE         : String(1);
  TAX_CODE         : String(1);
  TAXJURCODE       : String(1);
  NOND_ITAX        : String(1);
  ACTTYPE          : String(1);
  CO_BUSPROC       : String(1);
  RES_DOC          : String(1);
  RES_ITEM         : String(1);
  ACTIVITY         : String(1);
  GRANT_NBR        : String(1);
  CMMT_ITEM_LONG   : String(1);
  FUNC_AREA_LONG   : String(1);
  BUDGET_PERIOD    : String(1);
  SERVICE_DOC      : String(1);
  SERVICE_ITEM     : String(1);
  SERVICE_DOC_TYPE : String(1);
};

type S4H.DDIC.BAPIMERQADDRDELIVERY {
  PREQ_NO    : String(10);

  @RFCAbapType: 'N'
  PREQ_ITEM  : String(5);
  ADDR_NO    : String(10);
  FORMOFADDR : String(20);
  NAME       : String(40);
  NAME_2     : String(40);
  NAME_3     : String(40);
  NAME_4     : String(40);
  C_O_NAME   : String(40);
  CITY       : String(40);
  DISTRICT   : String(40);
  CITY_NO    : String(12);
  POSTL_COD1 : String(10);
  POSTL_COD2 : String(10);
  POSTL_COD3 : String(10);
  PO_BOX     : String(10);
  PO_BOX_CIT : String(40);
  DELIV_DIS  : String(15);
  STREET     : String(60);
  STREET_NO  : String(12);
  STR_ABBR   : String(2);
  HOUSE_NO   : String(10);
  STR_SUPPL1 : String(40);
  STR_SUPPL2 : String(40);
  LOCATION   : String(40);
  BUILDING   : String(10);
  FLOOR      : String(10);
  ROOM_NO    : String(10);
  COUNTRY    : String(3);
  LANGU      : String(1);
  REGION     : String(3);
  SORT1      : String(20);
  SORT2      : String(20);
  TIME_ZONE  : String(6);
  TAXJURCODE : String(15);
  ADR_NOTES  : String(50);
  COMM_TYPE  : String(3);
  TEL1_NUMBR : String(30);
  TEL1_EXT   : String(10);
  FAX_NUMBER : String(30);
  FAX_EXTENS : String(10);
  STREET_LNG : String(60);
  DISTRCT_NO : String(8);
  CHCKSTATUS : String(1);
  PBOXCIT_NO : String(12);
  TRANSPZONE : String(10);
  HOUSE_NO2  : String(10);
  E_MAIL     : String(241);
  STR_SUPPL3 : String(40);
  TITLE      : String(30);
  COUNTRYISO : String(2);
  LANGU_ISO  : String(2);
  BUILD_LONG : String(20);
  REGIOGROUP : String(8);
};

type S4H.DDIC.BAPIMEREQCOMPONENT {
  @RFCAbapType: 'N'
  PREQ_ITEM         : String(5);

  @RFCAbapType: 'N'
  ITEM_NO           : String(4);
  MATERIAL          : String(18);
  ENTRY_QUANTITY    : Decimal;
  ENTRY_UOM         : String(3);
  ENTRY_UOM_ISO     : String(3);
  FIXED_QUAN        : String(1);
  PLANT             : String(4);
  REQ_DATE          : Date;
  CHANGE_ID         : String(1);
  MATERIAL_EXTERNAL : String(40);
  MATERIAL_GUID     : String(32);
  MATERIAL_VERSION  : String(10);
  ITEM_CAT          : String(1);
  REQ_QUAN          : Decimal;
  BASE_UOM          : String(3);
  BASE_UOM_ISO      : String(3);
  PHANT_ITEM        : String(1);
  BATCH             : String(10);
  MAT_PROVISION     : String(1);
  ISS_ST_LOC        : String(4);
  REQ_SEGMENT       : String(16);
  MATERIAL_LONG     : String(40);
  REQ_SEG_LONG      : String(40);
};

type S4H.DDIC.BAPIMEREQCOMPONENTX {
  @RFCAbapType: 'N'
  PREQ_ITEM         : String(5);

  @RFCAbapType: 'N'
  ITEM_NO           : String(4);
  PREQ_ITEMX        : String(1);
  ITEM_NOX          : String(1);
  MATERIAL          : String(1);
  ENTRY_QUANTITY    : String(1);
  ENTRY_UOM         : String(1);
  ENTRY_UOM_ISO     : String(1);
  FIXED_QUAN        : String(1);
  PLANT             : String(1);
  REQ_DATE          : String(1);
  CHANGE_ID         : String(1);
  MATERIAL_EXTERNAL : String(1);
  MATERIAL_GUID     : String(1);
  MATERIAL_VERSION  : String(1);
  ITEM_CAT          : String(1);
  REQ_QUAN          : String(1);
  BASE_UOM          : String(1);
  BASE_UOM_ISO      : String(1);
  PHANT_ITEM        : String(1);
  BATCH             : String(1);
  MAT_PROVISION     : String(1);
  ISS_ST_LOC        : String(1);
  REQ_SEGMENT       : String(1);
  MATERIAL_LONG     : String(1);
  REQ_SEG_LONG      : String(1);
};

type S4H.DDIC.BAPIMEREQHEADTEXT {
  PREQ_NO   : String(10);

  @RFCAbapType: 'N'
  PREQ_ITEM : String(5);
  TEXT_ID   : String(4);
  TEXT_FORM : String(2);
  TEXT_LINE : String(132);
};

type S4H.DDIC.BAPIMEREQITEMIMP {
  @RFCAbapType: 'N'
  PREQ_ITEM                     : String(5);
  CTRL_IND                      : String(1);
  DELETE_IND                    : String(1);
  PUR_GROUP                     : String(3);
  PREQ_NAME                     : String(12);
  SHORT_TEXT                    : String(40);
  MATERIAL                      : String(18);
  MATERIAL_EXTERNAL             : String(40);
  MATERIAL_GUID                 : String(32);
  MATERIAL_VERSION              : String(10);
  PUR_MAT                       : String(18);
  PUR_MAT_EXTERNAL              : String(40);
  PUR_MAT_GUID                  : String(32);
  PUR_MAT_VERSION               : String(10);
  PLANT                         : String(4);
  STORE_LOC                     : String(4);
  TRACKINGNO                    : String(10);
  MATL_GROUP                    : String(9);
  SUPPL_PLNT                    : String(4);
  QUANTITY                      : Decimal;
  UNIT                          : String(3);
  PREQ_UNIT_ISO                 : String(3);
  PREQ_DATE                     : Date;
  DEL_DATCAT_EXT                : String(1);
  DELIV_DATE                    : String(8);
  REL_DATE                      : Date;
  GR_PR_TIME                    : Decimal;
  PREQ_PRICE                    : Decimal;
  PRICE_UNIT                    : Decimal;
  ITEM_CAT                      : String(1);
  ACCTASSCAT                    : String(1);
  DISTRIB                       : String(1);
  PART_INV                      : String(1);
  GR_IND                        : String(1);
  GR_NON_VAL                    : String(1);
  IR_IND                        : String(1);
  DES_VENDOR                    : String(10);
  FIXED_VEND                    : String(10);
  PURCH_ORG                     : String(4);
  AGREEMENT                     : String(10);

  @RFCAbapType: 'N'
  AGMT_ITEM                     : String(5);
  INFO_REC                      : String(10);
  MRP_CTRLER                    : String(3);
  BOMEXPL_NO                    : String(8);
  VAL_TYPE                      : String(10);
  COMMITMENT                    : String(1);
  CLOSED                        : String(1);

  @RFCAbapType: 'N'
  RESERV_NO                     : String(10);
  FIXED                         : String(1);
  PO_UNIT                       : String(3);
  PO_UNIT_ISO                   : String(3);
  REV_LEV                       : String(2);

  @RFCAbapType: 'N'
  PCKG_NO                       : String(10);
  KANBAN_IND                    : String(1);
  PO_PRICE                      : String(1);

  @RFCAbapType: 'N'
  INT_OBJ_NO                    : String(18);
  PROMOTION                     : String(10);
  BATCH                         : String(10);
  CMMT_ITEM                     : String(14);
  FUNDS_CTR                     : String(16);
  FUND                          : String(10);
  MATL_CAT                      : String(2);
  ADDRESS2                      : String(10);
  ADDRESS                       : String(10);
  CUSTOMER                      : String(10);
  SUPP_VENDOR                   : String(10);
  SC_VENDOR                     : String(1);
  VALUATION_SPEC_STOCK          : String(1);
  CURRENCY                      : String(5);
  CURRENCY_ISO                  : String(3);
  VEND_MAT                      : String(35);
  MANUF_PROF                    : String(4);
  LANGU                         : String(1);
  LANGU_ISO                     : String(2);
  VALIDITY_OBJECT               : String(12);
  FW_ORDER                      : String(10);

  @RFCAbapType: 'N'
  FW_ORDER_ITEM                 : String(5);
  PLND_DELRY                    : Decimal;
  DELIV_TIME                    : Time;
  REF_REQ                       : String(10);

  @RFCAbapType: 'N'
  REF_REQ_ITEM                  : String(5);
  GRANT_NBR                     : String(20);
  FUNC_AREA                     : String(16);
  REQ_BLOCKED                   : String(1);
  REASON_BLOCKING               : String(60);
  VERSION                       : String(8);
  PROCURING_PLANT               : String(4);
  EXT_PROC_PROF                 : String(2);
  EXT_PROC_REF_DOC              : String(10);

  @RFCAbapType: 'N'
  EXT_PROC_REF_ITEM             : String(5);
  FUNDS_RES                     : String(10);

  @RFCAbapType: 'N'
  RES_ITEM                      : String(3);
  SUPPL_STLOC                   : String(4);

  @RFCAbapType: 'N'
  PRIO_URGENCY                  : String(2);

  @RFCAbapType: 'N'
  PRIO_REQUIREMENT              : String(3);
  NEW_BOM_EXPLOSION             : String(1);
  MINREMLIFE                    : Decimal;
  PERIOD_IND_EXPIRATION_DATE    : String(1);
  BUDGET_PERIOD                 : String(10);
  BRAS_NBM                      : String(16);
  MATL_USAGE                    : String(1);
  MAT_ORIGIN                    : String(1);
  IN_HOUSE                      : String(1);
  INDUS3                        : String(2);
  REQ_SEGMENT                   : String(16);
  STK_SEGMENT                   : String(16);
  AVAIL_DATE                    : Date;
  MATERIAL_LONG                 : String(40);
  PUR_MAT_LONG                  : String(40);
  REQ_SEG_LONG                  : String(40);
  STK_SEG_LONG                  : String(40);
  EXPECTED_VALUE                : Decimal;
  LIMIT_AMOUNT                  : Decimal;
  PRODUCTTYPE                   : String(2);
  SERVICEPERFORMER              : String(10);
  STARTDATE                     : Date;
  ENDDATE                       : Date;
  SPE_CRM_REF_SO                : String(35);
  SPE_CRM_REF_ITEM              : String(6);
  EXPERT_MODE                   : String(1);
  TXS_BUSINESS_TRANSACTION      : String(4);
  TXS_USAGE_PURPOSE             : String(25);
  TAX_CODE                      : String(2);
  DELIVERY_ADDRESS_TYPE         : String(1);
  CONTRACT_FOR_LIMIT            : String(10);
  ISCRREPLICATIONBEFOREAPPROVAL : String(1);
  MMPUR_PR_CEN_REQN_APP_RPLD_PR : String(2);
  SSP_AUTHOR                    : String(12);
  SSP_REQUESTOR                 : String(60);
  SSP_CATALOGID                 : String(20);
};

type S4H.DDIC.BAPIMEREQITEM {
  @RFCAbapType: 'N'
  PREQ_ITEM                     : String(5);
  DOC_TYPE                      : String(4);
  DOC_CAT                       : String(1);
  CTRL_IND                      : String(1);
  DELETE_IND                    : String(1);
  PROC_STAT                     : String(1);
  CREATE_IND                    : String(1);
  REL_IND                       : String(1);
  REL_STATUS                    : String(8);
  REL_STRAT                     : String(2);
  PUR_GROUP                     : String(3);
  CREATED_BY                    : String(12);
  CH_ON                         : Date;
  PREQ_NAME                     : String(12);
  SHORT_TEXT                    : String(40);
  MATERIAL                      : String(18);
  MATERIAL_EXTERNAL             : String(40);
  MATERIAL_GUID                 : String(32);
  MATERIAL_VERSION              : String(10);
  PUR_MAT                       : String(18);
  PUR_MAT_EXTERNAL              : String(40);
  PUR_MAT_GUID                  : String(32);
  PUR_MAT_VERSION               : String(10);
  PLANT                         : String(4);
  STORE_LOC                     : String(4);
  TRACKINGNO                    : String(10);
  MATL_GROUP                    : String(9);
  SUPPL_PLNT                    : String(4);
  QUANTITY                      : Decimal;
  UNIT                          : String(3);
  PREQ_UNIT_ISO                 : String(3);
  SHORTAGE                      : Decimal;
  PREQ_DATE                     : Date;
  DEL_DATCAT_EXT                : String(1);
  DELIV_DATE                    : String(8);
  REL_DATE                      : Date;
  GR_PR_TIME                    : Decimal;
  PREQ_PRICE                    : Decimal;
  PRICE_UNIT                    : Decimal;
  ITEM_CAT                      : String(1);
  ACCTASSCAT                    : String(1);
  CONSUMPT                      : String(1);
  CHANGEABLE                    : String(1);
  DISTRIB                       : String(1);
  PART_INV                      : String(1);
  GR_IND                        : String(1);
  GR_NON_VAL                    : String(1);
  IR_IND                        : String(1);
  DES_VENDOR                    : String(10);
  FIXED_VEND                    : String(10);
  PURCH_ORG                     : String(4);
  AGMT_DOC_CAT                  : String(1);
  AGREEMENT                     : String(10);

  @RFCAbapType: 'N'
  AGMT_ITEM                     : String(5);
  INFO_REC                      : String(10);
  ASSIGNED                      : String(1);
  QUOTA_ARR                     : String(10);

  @RFCAbapType: 'N'
  QUOTARRITM                    : String(3);
  MRP_CTRLER                    : String(3);
  BOMEXPL_NO                    : String(8);
  LAST_RESUB                    : Date;
  RESUBMIS                      : Decimal;
  NO_RESUB                      : Decimal;
  PO_NUMBER                     : String(10);

  @RFCAbapType: 'N'
  PO_ITEM                       : String(5);
  PO_DATE                       : Date;
  ORDERED                       : Decimal;
  SHEET_NO                      : String(10);
  VAL_TYPE                      : String(10);
  COMMITMENT                    : String(1);
  CLOSED                        : String(1);

  @RFCAbapType: 'N'
  RESERV_NO                     : String(10);
  SPEC_STOCK                    : String(1);

  @RFCAbapType: 'N'
  SETRESERNO                    : String(10);

  @RFCAbapType: 'N'
  SETTLITMNO                    : String(4);
  FIXED                         : String(1);
  PO_UNIT                       : String(3);
  PO_UNIT_ISO                   : String(3);
  REV_LEV                       : String(2);
  ADVANCE                       : String(1);

  @RFCAbapType: 'N'
  PCKG_NO                       : String(10);
  KANBAN_IND                    : String(1);
  PO_PRICE                      : String(1);

  @RFCAbapType: 'N'
  INT_OBJ_NO                    : String(18);
  REL_GROUP                     : String(2);
  SUBJ_TO_R                     : String(1);
  PROMOTION                     : String(10);
  BATCH                         : String(10);
  SPSTCK_PHY                    : String(1);
  PROD_VERSION                  : String(4);
  CMMT_ITEM                     : String(14);
  FUNDS_CTR                     : String(16);
  FUND                          : String(10);
  CONFIG_ORG                    : String(1);
  CONF_MATL                     : String(18);
  COM_QTY                       : Decimal;
  COM_DATE                      : Date;
  MATL_CAT                      : String(2);
  ADDRESS2                      : String(10);
  ADDRESS                       : String(10);
  CUSTOMER                      : String(10);
  SUPP_VENDOR                   : String(10);
  SC_VENDOR                     : String(1);
  VALUATION_SPEC_STOCK          : String(1);
  VALUE_ITEM                    : Decimal;
  CURRENCY                      : String(5);
  CURRENCY_ISO                  : String(3);
  VEND_MAT                      : String(22);
  GENERAL_RELEASE               : String(1);
  MANUF_PROF                    : String(4);
  UOMUSAGE                      : String(1);
  LANGU                         : String(1);
  LANGU_ISO                     : String(2);
  VALIDITY_OBJECT               : String(12);
  MANU_MAT                      : String(40);
  MFR_NO                        : String(10);
  MFR_NO_EXT                    : String(10);
  FW_ORDER                      : String(10);

  @RFCAbapType: 'N'
  FW_ORDER_ITEM                 : String(5);
  PLND_DELRY                    : Decimal;
  MRP_AREA                      : String(10);
  DELIV_TIME                    : Time;
  REF_REQ                       : String(10);

  @RFCAbapType: 'N'
  REF_REQ_ITEM                  : String(5);
  GRANT_NBR                     : String(20);
  FUNC_AREA                     : String(16);
  MEMORY                        : String(1);
  PROCSTAT                      : String(2);
  REL_VALUE                     : Decimal;
  REQ_BLOCKED                   : String(1);
  REASON_BLOCKING               : String(60);
  VERSION                       : String(8);
  PROCURING_PLANT               : String(4);
  EXT_PROC_PROF                 : String(2);
  EXT_PROC_REF_DOC              : String(10);

  @RFCAbapType: 'N'
  EXT_PROC_REF_ITEM             : String(5);
  FUNDS_RES                     : String(10);

  @RFCAbapType: 'N'
  RES_ITEM                      : String(3);
  CONF_MATL_EXTERNAL            : String(40);
  CONF_MATL_GUID                : String(32);
  CONF_MATL_VERSION             : String(10);
  SUPPL_STLOC                   : String(4);

  @RFCAbapType: 'N'
  PRIO_URGENCY                  : String(2);

  @RFCAbapType: 'N'
  PRIO_REQUIREMENT              : String(3);
  MINREMLIFE                    : Decimal;
  PERIOD_IND_EXPIRATION_DATE    : String(1);
  BUDGET_PERIOD                 : String(10);
  BRAS_NBM                      : String(16);
  MATL_USAGE                    : String(1);
  MAT_ORIGIN                    : String(1);
  IN_HOUSE                      : String(1);
  INDUS3                        : String(2);
  STK_SEGMENT                   : String(16);
  REQ_SEGMENT                   : String(16);
  AVAIL_DATE                    : Date;
  MATERIAL_LONG                 : String(40);
  PUR_MAT_LONG                  : String(40);
  CONF_MATL_LONG                : String(40);
  STK_SEG_LONG                  : String(40);
  REQ_SEG_LONG                  : String(40);
  EXPECTED_VALUE                : Decimal;
  LIMIT_AMOUNT                  : Decimal;
  PRODUCTTYPE                   : String(2);
  SERVICEPERFORMER              : String(10);
  STARTDATE                     : Date;
  ENDDATE                       : Date;
  SPE_CRM_REF_SO                : String(35);
  SPE_CRM_REF_ITEM              : String(6);
  EXPERT_MODE                   : String(1);
  TXS_BUSINESS_TRANSACTION      : String(4);
  TXS_USAGE_PURPOSE             : String(25);
  TAX_CODE                      : String(2);
  DELIVERY_ADDRESS_TYPE         : String(1);
  CONTRACT_FOR_LIMIT            : String(10);
  ISCRREPLICATIONBEFOREAPPROVAL : String(1);
  MMPUR_PR_CEN_REQN_APP_RPLD_PR : String(2);
  SSP_AUTHOR                    : String(12);
  SSP_REQUESTOR                 : String(60);
  SSP_CATALOGID                 : String(20);
};

type S4H.DDIC.BAPIMEREQSOURCE {
  @RFCAbapType: 'N'
  PREQ_ITEM       : String(5);
  QUOTA_ARR       : String(10);

  @RFCAbapType: 'N'
  QUOTARRITM      : String(3);
  DOC_CAT         : String(1);
  DES_VENDOR      : String(10);
  FIXED_VEND      : String(10);
  PURCH_ORG       : String(4);
  AGREEMENT       : String(10);

  @RFCAbapType: 'N'
  AGMT_ITEM       : String(5);
  INFO_REC        : String(10);
  SUPPL_PLNT      : String(4);
  PROCURING_PLANT : String(4);
  SUPPL_STLOC     : String(4);
};

type S4H.DDIC.BAPIMEREQITEMTEXT {
  PREQ_NO   : String(10);

  @RFCAbapType: 'N'
  PREQ_ITEM : String(5);
  TEXT_ID   : String(4);
  TEXT_FORM : String(2);
  TEXT_LINE : String(132);
};

type S4H.DDIC.BAPIMEREQITEMX {
  @RFCAbapType: 'N'
  PREQ_ITEM                     : String(5);
  PREQ_ITEMX                    : String(1);
  CTRL_IND                      : String(1);
  DELETE_IND                    : String(1);
  PUR_GROUP                     : String(1);
  PREQ_NAME                     : String(1);
  SHORT_TEXT                    : String(1);
  MATERIAL                      : String(1);
  MATERIAL_EXTERNAL             : String(1);
  MATERIAL_GUID                 : String(1);
  MATERIAL_VERSION              : String(1);
  PUR_MAT                       : String(1);
  PUR_MAT_EXTERNAL              : String(1);
  PUR_MAT_GUID                  : String(1);
  PUR_MAT_VERSION               : String(1);
  PLANT                         : String(1);
  STORE_LOC                     : String(1);
  TRACKINGNO                    : String(1);
  MATL_GROUP                    : String(1);
  SUPPL_PLNT                    : String(1);
  QUANTITY                      : String(1);
  UNIT                          : String(1);
  PREQ_UNIT_ISO                 : String(1);
  PREQ_DATE                     : String(1);
  DEL_DATCAT_EXT                : String(1);
  DELIV_DATE                    : String(1);
  REL_DATE                      : String(1);
  GR_PR_TIME                    : String(1);
  PREQ_PRICE                    : String(1);
  PRICE_UNIT                    : String(1);
  ITEM_CAT                      : String(1);
  ACCTASSCAT                    : String(1);
  DISTRIB                       : String(1);
  PART_INV                      : String(1);
  GR_IND                        : String(1);
  GR_NON_VAL                    : String(1);
  IR_IND                        : String(1);
  DES_VENDOR                    : String(1);
  FIXED_VEND                    : String(1);
  PURCH_ORG                     : String(1);
  AGREEMENT                     : String(1);
  AGMT_ITEM                     : String(1);
  INFO_REC                      : String(1);
  MRP_CTRLER                    : String(1);
  BOMEXPL_NO                    : String(1);
  VAL_TYPE                      : String(1);
  COMMITMENT                    : String(1);
  CLOSED                        : String(1);
  RESERV_NO                     : String(1);
  FIXED                         : String(1);
  PO_UNIT                       : String(1);
  PO_UNIT_ISO                   : String(1);
  REV_LEV                       : String(1);
  PCKG_NO                       : String(1);
  KANBAN_IND                    : String(1);
  PO_PRICE                      : String(1);
  INT_OBJ_NO                    : String(1);
  PROMOTION                     : String(1);
  BATCH                         : String(1);
  CMMT_ITEM                     : String(1);
  FUNDS_CTR                     : String(1);
  FUND                          : String(1);
  MATL_CAT                      : String(1);
  ADDRESS2                      : String(1);
  ADDRESS                       : String(1);
  CUSTOMER                      : String(1);
  SUPP_VENDOR                   : String(1);
  SC_VENDOR                     : String(1);
  VALUATION_SPEC_STOCK          : String(1);
  CURRENCY                      : String(1);
  CURRENCY_ISO                  : String(1);
  VEND_MAT                      : String(1);
  MANUF_PROF                    : String(1);
  LANGU                         : String(1);
  LANGU_ISO                     : String(1);
  VALIDITY_OBJECT               : String(1);
  FW_ORDER                      : String(1);
  FW_ORDER_ITEM                 : String(1);
  PLND_DELRY                    : String(1);
  DELIV_TIME                    : String(1);
  REF_REQ                       : String(1);
  REF_REQ_ITEM                  : String(1);
  GRANT_NBR                     : String(1);
  FUNC_AREA                     : String(1);
  REQ_BLOCKED                   : String(1);
  REASON_BLOCKING               : String(1);
  VERSION                       : String(1);
  PROCURING_PLANT               : String(1);
  EXT_PROC_PROF                 : String(1);
  EXT_PROC_REF_DOC              : String(1);
  EXT_PROC_REF_ITEM             : String(1);
  FUNDS_RES                     : String(1);
  RES_ITEM                      : String(1);
  SUPPL_STLOC                   : String(1);
  PRIO_URGENCY                  : String(1);
  PRIO_REQUIREMENT              : String(1);
  NEW_BOM_EXPLOSION             : String(1);
  MINREMLIFE                    : String(1);
  PERIOD_IND_EXPIRATION_DATE    : String(1);
  BUDGET_PERIOD                 : String(1);
  BRAS_NBM                      : String(1);
  MATL_USAGE                    : String(1);
  MAT_ORIGIN                    : String(1);
  IN_HOUSE                      : String(1);
  INDUS3                        : String(1);
  REQ_SEGMENT                   : String(1);
  STK_SEGMENT                   : String(1);
  AVAIL_DATE                    : String(1);
  MATERIAL_LONG                 : String(1);
  PUR_MAT_LONG                  : String(1);
  REQ_SEG_LONG                  : String(1);
  STK_SEG_LONG                  : String(1);
  EXPECTED_VALUE                : String(1);
  LIMIT_AMOUNT                  : String(1);
  PRODUCTTYPE                   : String(1);
  SERVICEPERFORMER              : String(1);
  STARTDATE                     : String(1);
  ENDDATE                       : String(1);
  SPE_CRM_REF_SO                : String(1);
  SPE_CRM_REF_ITEM              : String(1);
  EXPERT_MODE                   : String(1);
  TAX_CODE                      : String(1);
  DELIVERY_ADDRESS_TYPE         : String(1);
  CONTRACT_FOR_LIMIT            : String(1);
  ISCRREPLICATIONBEFOREAPPROVAL : String(1);
  MMPUR_PR_CEN_REQN_APP_RPLD_PR : String(1);
  SSP_AUTHOR                    : String(1);
  SSP_REQUESTOR                 : String(1);
  SSP_CATALOGID                 : String(1);
};

type S4H.DDIC.BAPIMEREQDCM {
  @RFCAbapType: 'N'
  PREQ_ITEM   : String(5);
  POST_DATE   : Date;
  COMPLETED   : String(1);
  REASON      : String(4);
  DESCRIPTION : String(60);
  REQ_BY      : String(12);
  REQ_BY_EXT  : String(20);
  ACTIVITY    : String(1);
};

type S4H.DDIC.BAPIMEREQDCMX {
  @RFCAbapType: 'N'
  PREQ_ITEM   : String(5);
  POST_DATE   : String(1);
  COMPLETED   : String(1);
  REASON      : String(1);
  DESCRIPTION : String(1);
  REQ_BY      : String(1);
  REQ_BY_EXT  : String(1);
  ACTIVITY    : String(1);
};

type S4H.DDIC.BAPIRET2 {
  TYPE       : String(1);
  ID         : String(20);

  @RFCAbapType: 'N'
  NUMBER     : String(3);
  MESSAGE    : String(220);
  LOG_NO     : String(20);

  @RFCAbapType: 'N'
  LOG_MSG_NO : String(6);
  MESSAGE_V1 : String(50);
  MESSAGE_V2 : String(50);
  MESSAGE_V3 : String(50);
  MESSAGE_V4 : String(50);
  PARAMETER  : String(32);
  ROW        : Integer;
  FIELD      : String(30);
  SYSTEM     : String(10);
};

type S4H.DDIC.BAPIMEREQSERIALNO {
  @RFCAbapType: 'N'
  PREQ_ITEM  : String(5);
  DELETE_IND : String(1);
  SERIALNO   : String(18);
  UII        : String(72);
};

type S4H.DDIC.BAPIMEREQSERIALNOX {
  @RFCAbapType: 'N'
  PREQ_ITEM  : String(5);
  PREQ_ITEMX : String(1);
  DELETE_IND : String(1);
  SERIALNO   : String(1);
  UII        : String(1);
};

type S4H.DDIC.BAPI_SRV_ACC_DATA {
  @RFCAbapType: 'N'
  DOC_ITEM       : String(5);

  @RFCAbapType: 'N'
  OUTLINE        : String(10);

  @RFCAbapType: 'N'
  SRV_LINE       : String(10);

  @RFCAbapType: 'N'
  SERIAL_NO      : String(2);

  @RFCAbapType: 'N'
  SERIAL_NO_ITEM : String(2);
  DEL_IND        : String(1);
  QUANTITY       : Decimal;
  PERCENT        : Decimal;
  NET_VALUE      : Decimal;
};

type S4H.DDIC.BAPI_SRV_ACC_DATAX {
  @RFCAbapType: 'N'
  DOC_ITEM       : String(5);

  @RFCAbapType: 'N'
  OUTLINE        : String(10);

  @RFCAbapType: 'N'
  SRV_LINE       : String(10);

  @RFCAbapType: 'N'
  SERIAL_NO      : String(2);
  SERIAL_NO_ITEM : String(1);
  DEL_IND        : String(1);
  QUANTITY       : String(1);
  PERCENT        : String(1);
  NET_VALUE      : String(1);
};

type S4H.DDIC.BAPI_SRV_CONTRACT_LIMITS {
  @RFCAbapType: 'N'
  DOC_ITEM      : String(5);
  CONTRACT      : String(10);

  @RFCAbapType: 'N'
  CONTRACT_ITEM : String(5);
  DEL_IND       : String(1);
  LIMIT         : Decimal;
  NO_LIMIT      : String(1);
  TOTAL_VALUE   : Decimal;
};

type S4H.DDIC.BAPI_SRV_CONTRACT_LIMITSX {
  @RFCAbapType: 'N'
  DOC_ITEM      : String(5);
  CONTRACT      : String(10);

  @RFCAbapType: 'N'
  CONTRACT_ITEM : String(5);
  DEL_IND       : String(1);
  LIMIT         : String(1);
  NO_LIMIT      : String(1);
  TOTAL_VALUE   : String(1);
};

type S4H.DDIC.BAPI_SRV_LIMIT_DATA {
  @RFCAbapType: 'N'
  DOC_ITEM          : String(5);
  DEL_IND           : String(1);
  OVERALL_LIMIT     : Decimal;
  NO_LIMIT          : String(1);
  EXP_VALUE         : Decimal;
  TOTAL_VALUE       : Decimal;
  CON_PRICE_CHG     : String(1);
  CON_PRICE_PERC    : Decimal;
  SSC_SRV_TYPE      : String(3);

  @RFCAbapType: 'N'
  SSC_EDITION       : String(4);
  SSC_LIMIT         : Decimal;
  SSC_NO_LIMIT      : String(1);
  SSC_PRICE_PERC    : Decimal;
  SSC_TOTAL_VALUE   : Decimal;
  MSS_NUMBER        : String(10);
  MSS_LIMIT         : Decimal;
  MSS_NO_LIMIT      : String(1);
  MSS_PRICE_CHG     : String(1);
  MSS_PRICE_PERC    : Decimal;
  MSS_TOTAL_VALUE   : Decimal;
  OTHER_LIMIT       : Decimal;
  OTHER_NO_LIMIT    : String(1);
  OTHER_TOTAL_VALUE : Decimal;
  COST_ELEMENT      : String(10);
  TAX_CODE          : String(2);
  TAXJURCODE        : String(15);
  NDI_TAX           : Decimal;
  DISTRIB           : String(1);
};

type S4H.DDIC.BAPI_SRV_LIMIT_DATAX {
  @RFCAbapType: 'N'
  DOC_ITEM          : String(5);
  DEL_IND           : String(1);
  OVERALL_LIMIT     : String(1);
  NO_LIMIT          : String(1);
  EXP_VALUE         : String(1);
  TOTAL_VALUE       : String(1);
  CON_PRICE_CHG     : String(1);
  CON_PRICE_PERC    : String(1);
  SSC_SRV_TYPE      : String(1);
  SSC_EDITION       : String(1);
  SSC_LIMIT         : String(1);
  SSC_NO_LIMIT      : String(1);
  SSC_PRICE_PERC    : String(1);
  SSC_TOTAL_VALUE   : String(1);
  MSS_NUMBER        : String(1);
  MSS_LIMIT         : String(1);
  MSS_NO_LIMIT      : String(1);
  MSS_PRICE_CHG     : String(1);
  MSS_PRICE_PERC    : String(1);
  MSS_TOTAL_VALUE   : String(1);
  OTHER_LIMIT       : String(1);
  OTHER_NO_LIMIT    : String(1);
  OTHER_TOTAL_VALUE : String(1);
  COST_ELEMENT      : String(1);
  TAX_CODE          : String(1);
  TAXJURCODE        : String(1);
  NDI_TAX           : String(1);
  DISTRIB           : String(1);
};

type S4H.DDIC.BAPI_SRV_SERVICE_LINE {
  @RFCAbapType: 'N'
  DOC_ITEM         : String(5);

  @RFCAbapType: 'N'
  OUTLINE          : String(10);

  @RFCAbapType: 'N'
  SRV_LINE         : String(10);
  DEL_IND          : String(1);
  SERVICE          : String(18);
  SHORT_TEXT       : String(40);
  SSC_SRV_TYPE     : String(3);

  @RFCAbapType: 'N'
  SSC_EDITION      : String(4);
  SSC_ITEM         : String(18);
  EXT_SERVICE      : String(18);
  QUANTITY         : Decimal;
  UOM              : String(3);
  UOM_ISO          : String(3);
  OVF_TOL          : Decimal;
  OVF_UNLIM        : String(1);
  UPDATE_COND      : String(1);
  GROSS_PRICE      : Decimal;
  CURRENCY         : String(5);
  PRICE_UNIT       : Decimal;
  DIST_IND_ACC     : String(1);
  PART_INV_IND     : String(1);
  WAGE_TYPE        : String(4);
  MATL_GROUP       : String(9);

  @RFCAbapType: 'N'
  USERF1_NUM       : String(10);
  USERF2_NUM       : Decimal;
  USERF1_TXT       : String(40);
  USERF2_TXT       : String(10);
  NET_PRICE        : Decimal;
  TAX_AMOUNT       : Decimal;
  PRICE_CHG        : String(1);
  TAX_CODE         : String(2);
  TAXJURCODE       : String(15);
  NDI_TAX          : Decimal;

  @RFCAbapType: 'N'
  HR_PERS_NO       : String(8);
  HR_PERS_NO_EXT   : String(40);
  HR_DATE          : Date;
  HR_START_TIME    : Time;
  HR_END_TIME      : Time;
  FORMULA          : String(10);
  FORM_VAL1        : Decimal;
  FORM_VAL2        : Decimal;
  FORM_VAL3        : Decimal;
  FORM_VAL4        : Decimal;
  FORM_VAL5        : Decimal;
  LINE_TYPE        : String(1);
  LINE_CAT         : String(1);
  ALTERNATIVE      : String(1);

  @RFCAbapType: 'N'
  ALT_SRV_LINE     : String(10);
  PER_SDATE        : Date;
  PER_EDATE        : Date;
  EXTERNAL_ITEM_ID : String(40);

  @RFCAbapType: 'N'
  SERVICE_ITEM_KEY : String(10);
};

type S4H.DDIC.BAPI_SRV_SERVICE_LINEX {
  @RFCAbapType: 'N'
  DOC_ITEM         : String(5);

  @RFCAbapType: 'N'
  OUTLINE          : String(10);

  @RFCAbapType: 'N'
  SRV_LINE         : String(10);
  DEL_IND          : String(1);
  SERVICE          : String(1);
  SHORT_TEXT       : String(1);
  SSC_SRV_TYPE     : String(1);
  SSC_EDITION      : String(1);
  SSC_ITEM         : String(1);
  EXT_SERVICE      : String(1);
  QUANTITY         : String(1);
  UOM              : String(1);
  UOM_ISO          : String(1);
  OVF_TOL          : String(1);
  OVF_UNLIM        : String(1);
  UPDATE_COND      : String(1);
  GROSS_PRICE      : String(1);
  CURRENCY         : String(1);
  PRICE_UNIT       : String(1);
  DIST_IND_ACC     : String(1);
  PART_INV_IND     : String(1);
  WAGE_TYPE        : String(1);
  MATL_GROUP       : String(1);
  USERF1_NUM       : String(1);
  USERF2_NUM       : String(1);
  USERF1_TXT       : String(1);
  USERF2_TXT       : String(1);
  NET_PRICE        : String(1);
  TAX_AMOUNT       : String(1);
  PRICE_CHG        : String(1);
  TAX_CODE         : String(1);
  TAXJURCODE       : String(1);
  NDI_TAX          : String(1);
  HR_PERS_NO       : String(1);
  HR_PERS_NO_EXT   : String(1);
  HR_DATE          : String(1);
  HR_START_TIME    : String(1);
  HR_END_TIME      : String(1);
  FORMULA          : String(1);
  FORM_VAL1        : String(1);
  FORM_VAL2        : String(1);
  FORM_VAL3        : String(1);
  FORM_VAL4        : String(1);
  FORM_VAL5        : String(1);
  LINE_TYPE        : String(1);
  LINE_CAT         : String(1);
  ALTERNATIVE      : String(1);
  ALT_SRV_LINE     : String(1);
  PER_SDATE        : String(1);
  PER_EDATE        : String(1);
  EXTERNAL_ITEM_ID : String(1);
  SERVICE_ITEM_KEY : String(1);
};

type S4H.DDIC.BAPI_SRV_LONGTEXTS {
  @RFCAbapType: 'N'
  DOC_ITEM  : String(5);

  @RFCAbapType: 'N'
  OUTLINE   : String(10);

  @RFCAbapType: 'N'
  SRV_LINE  : String(10);
  TEXT_TYPE : String(1);
  FORMAT    : String(2);
  LINE      : String(132);
  CHANGE_ID : String(1);
};

type S4H.DDIC.BAPI_SRV_OUTLINE {
  @RFCAbapType: 'N'
  DOC_ITEM           : String(5);

  @RFCAbapType: 'N'
  OUTLINE            : String(10);

  @RFCAbapType: 'N'
  PARENT_OUTLINE     : String(10);
  OUTLINE_LEVEL_NAME : String(8);
  DEL_IND            : String(1);
  SHORT_TEXT         : String(40);
  FROM_LINE          : String(6);
  TO_LINE            : String(6);
  ACTUAL_PRICE       : Decimal;
  TOT_PRICE          : Decimal;
  EXTERNAL_ITEM_ID   : String(40);

  @RFCAbapType: 'N'
  SERVICE_ITEM_KEY   : String(10);
};

type S4H.DDIC.BAPI_SRV_OUTLINEX {
  @RFCAbapType: 'N'
  DOC_ITEM           : String(5);

  @RFCAbapType: 'N'
  OUTLINE            : String(10);

  @RFCAbapType: 'N'
  PARENT_OUTLINE     : String(10);
  OUTLINE_LEVEL_NAME : String(1);
  DEL_IND            : String(1);
  SHORT_TEXT         : String(1);
  FROM_LINE          : String(1);
  TO_LINE            : String(1);
  ACTUAL_PRICE       : String(1);
  TOT_PRICE          : String(1);
  EXTERNAL_ITEM_ID   : String(1);
  SERVICE_ITEM_KEY   : String(1);
};
