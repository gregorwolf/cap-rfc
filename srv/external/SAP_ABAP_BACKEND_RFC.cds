/* checksum : 2345f1b3dd45cf37eec6056f9972b1f7 */
@cds.external : true
@protocol : 'rfc'
service SAP_ABAP_BACKEND_RFC {};

action SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST(
  @RFCParameterType : 'Import'
  MAX_ROWS : Integer default '0',
  @RFCParameterType : 'Import'
  WITH_USERNAME : String(1) default 'SPACE',
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2,
  @RFCParameterType : 'Table'
  SELECTION_EXP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSEXP,
  @RFCParameterType : 'Table'
  SELECTION_RANGE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSRGE,
  @RFCParameterType : 'Table'
  USERLIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME
) returns SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_USER_GET_DETAIL(
  @RFCParameterType : 'Import'
  CACHE_RESULTS : String(1) default 'X',
  @RFCParameterType : 'Import'
  EXTUID_GET : SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUIDGET,
  @RFCParameterType : 'Import'
  USERNAME : String(12) not null,
  @RFCParameterType : 'Table'
  ACTIVITYGROUPS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIAGR,
  @RFCParameterType : 'Table'
  ADDCOMREM : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOMREM,
  @RFCParameterType : 'Table'
  ADDFAX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADFAX,
  @RFCParameterType : 'Table'
  ADDPAG : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPAG,
  @RFCParameterType : 'Table'
  ADDPRT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPRT,
  @RFCParameterType : 'Table'
  ADDRFC : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRFC,
  @RFCParameterType : 'Table'
  ADDRML : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRML,
  @RFCParameterType : 'Table'
  ADDSMTP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSMTP,
  @RFCParameterType : 'Table'
  ADDSSF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSSF,
  @RFCParameterType : 'Table'
  ADDTEL : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTEL,
  @RFCParameterType : 'Table'
  ADDTLX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTLX,
  @RFCParameterType : 'Table'
  ADDTTX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTTX,
  @RFCParameterType : 'Table'
  ADDURI : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADURI,
  @RFCParameterType : 'Table'
  ADDX400 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADX400,
  @RFCParameterType : 'Table'
  EXTIDHEAD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDHEAD,
  @RFCParameterType : 'Table'
  EXTIDPART : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDPART,
  @RFCParameterType : 'Table'
  EXTUID : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUID,
  @RFCParameterType : 'Table'
  GROUPS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIGROUPS,
  @RFCParameterType : 'Table'
  PARAMETER : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM,
  @RFCParameterType : 'Table'
  PARAMETER1 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM1,
  @RFCParameterType : 'Table'
  PROFILES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPROF,
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2,
  @RFCParameterType : 'Table'
  SAPUSER_UUID_HIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUIDHIST,
  @RFCParameterType : 'Table'
  SYSTEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRCVSYS,
  @RFCParameterType : 'Table'
  UCLASSSYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASSSYS,
  @RFCParameterType : 'Table'
  USATTRIBUTE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSATTRIBUTE
) returns SAP_ABAP_BACKEND_RFC.BAPI_USER_GET_DETAIL.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE(
  @RFCParameterType : 'Import'
  CONVERT_PARVW_AUART : String(1) default 'SPACE',
  @RFCParameterType : 'Import'
  ORDER_HEADER_IN : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEAD not null,
  @RFCParameterType : 'Table'
  EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
  @RFCParameterType : 'Table'
  MESSAGETABLE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2,
  @RFCParameterType : 'Table'
  ORDER_CCARD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD,
  @RFCParameterType : 'Table'
  ORDER_CCARD_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD_EX,
  @RFCParameterType : 'Table'
  ORDER_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB,
  @RFCParameterType : 'Table'
  ORDER_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS,
  @RFCParameterType : 'Table'
  ORDER_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT,
  @RFCParameterType : 'Table'
  ORDER_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG,
  @RFCParameterType : 'Table'
  ORDER_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL,
  @RFCParameterType : 'Table'
  ORDER_CONDITION_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND,
  @RFCParameterType : 'Table'
  ORDER_INCOMPLETE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIINCOMP,
  @RFCParameterType : 'Table'
  ORDER_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMIN,
  @RFCParameterType : 'Table'
  ORDER_ITEMS_OUT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMEX,
  @RFCParameterType : 'Table'
  ORDER_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARTNR,
  @RFCParameterType : 'Table'
  ORDER_SCHEDULE_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU,
  @RFCParameterType : 'Table'
  ORDER_SCHEDULE_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL,
  @RFCParameterType : 'Table'
  PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1
) returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_INQUIRY_CREATEFROMDATA2(
  @RFCParameterType : 'Import'
  BEHAVE_WHEN_ERROR : String(1),
  @RFCParameterType : 'Import'
  BINARY_RELATIONSHIPTYPE : String(4),
  @RFCParameterType : 'Import'
  CONVERT : String(1) default 'SPACE',
  @RFCParameterType : 'Import'
  INQUIRY_HEADER_IN : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1 not null,
  @RFCParameterType : 'Import'
  INQUIRY_HEADER_INX : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1X,
  @RFCParameterType : 'Import'
  INT_NUMBER_ASSIGNMENT : String(1),
  @RFCParameterType : 'Import'
  LOGIC_SWITCH : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDLS,
  @RFCParameterType : 'Import'
  SALESDOCUMENTIN : String(10),
  @RFCParameterType : 'Import'
  SENDER : SAP_ABAP_BACKEND_RFC.DDIC.BAPI_SENDER,
  @RFCParameterType : 'Import'
  TESTRUN : String(1),
  @RFCParameterType : 'Table'
  EXTENSIONEX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
  @RFCParameterType : 'Table'
  EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB,
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS,
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT,
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG,
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_REFINST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF,
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL,
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_VK : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK,
  @RFCParameterType : 'Table'
  INQUIRY_CONDITIONS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND,
  @RFCParameterType : 'Table'
  INQUIRY_CONDITIONS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX,
  @RFCParameterType : 'Table'
  INQUIRY_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM,
  @RFCParameterType : 'Table'
  INQUIRY_ITEMS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX,
  @RFCParameterType : 'Table'
  INQUIRY_KEYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY,
  @RFCParameterType : 'Table'
  INQUIRY_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR,
  @RFCParameterType : 'Table'
  INQUIRY_SCHEDULES_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL,
  @RFCParameterType : 'Table'
  INQUIRY_SCHEDULES_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX,
  @RFCParameterType : 'Table'
  INQUIRY_TEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT,
  @RFCParameterType : 'Table'
  PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1,
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2
) returns SAP_ABAP_BACKEND_RFC.BAPI_INQUIRY_CREATEFROMDATA2.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2(
  @RFCParameterType : 'Import'
  BEHAVE_WHEN_ERROR : String(1),
  @RFCParameterType : 'Import'
  BINARY_RELATIONSHIPTYPE : String(4),
  @RFCParameterType : 'Import'
  CONVERT : String(1) default 'SPACE',
  @RFCParameterType : 'Import'
  INT_NUMBER_ASSIGNMENT : String(1),
  @RFCParameterType : 'Import'
  LOGIC_SWITCH : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDLS,
  @RFCParameterType : 'Import'
  NO_DEQUEUE_ALL : String(1) default 'SPACE',
  @RFCParameterType : 'Import'
  ORDER_HEADER_IN : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1 not null,
  @RFCParameterType : 'Import'
  ORDER_HEADER_INX : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1X,
  @RFCParameterType : 'Import'
  SALESDOCUMENTIN : String(10),
  @RFCParameterType : 'Import'
  SENDER : SAP_ABAP_BACKEND_RFC.DDIC.BAPI_SENDER,
  @RFCParameterType : 'Import'
  TESTRUN : String(1),
  @RFCParameterType : 'Table'
  EXTENSIONEX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
  @RFCParameterType : 'Table'
  EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
  @RFCParameterType : 'Table'
  ORDER_CCARD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD,
  @RFCParameterType : 'Table'
  ORDER_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB,
  @RFCParameterType : 'Table'
  ORDER_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS,
  @RFCParameterType : 'Table'
  ORDER_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT,
  @RFCParameterType : 'Table'
  ORDER_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG,
  @RFCParameterType : 'Table'
  ORDER_CFGS_REFINST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF,
  @RFCParameterType : 'Table'
  ORDER_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL,
  @RFCParameterType : 'Table'
  ORDER_CFGS_VK : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK,
  @RFCParameterType : 'Table'
  ORDER_CONDITIONS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND,
  @RFCParameterType : 'Table'
  ORDER_CONDITIONS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX,
  @RFCParameterType : 'Table'
  ORDER_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM,
  @RFCParameterType : 'Table'
  ORDER_ITEMS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX,
  @RFCParameterType : 'Table'
  ORDER_KEYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY,
  @RFCParameterType : 'Table'
  ORDER_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR,
  @RFCParameterType : 'Table'
  ORDER_SCHEDULES_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL,
  @RFCParameterType : 'Table'
  ORDER_SCHEDULES_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX,
  @RFCParameterType : 'Table'
  ORDER_TEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT,
  @RFCParameterType : 'Table'
  PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1,
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2
) returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_QUOTATION_GETDETAILBOS(
  @RFCParameterType : 'Import'
  INTERNALUSE : String(1) default 'SPACE',
  @RFCParameterType : 'Import'
  SALESDOCUMENT : String(10) not null,
  @RFCParameterType : 'Table'
  EXTENSIONOUT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
  @RFCParameterType : 'Table'
  QUOTATIONADDRESS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCOAD,
  @RFCParameterType : 'Table'
  QUOTATIONBILLINGDATES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBPLD,
  @RFCParameterType : 'Table'
  QUOTATIONBILLINGPLANS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBPL,
  @RFCParameterType : 'Table'
  QUOTATIONBUSINESS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBUSI,
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUBLBS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLBM,
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUCFGS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFGM,
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUINS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINSM,
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUPRTS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRTM,
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUREFS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREFM,
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUVALS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVALM,
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUVKS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVKM,
  @RFCParameterType : 'Table'
  QUOTATIONCONDHEAD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDHD,
  @RFCParameterType : 'Table'
  QUOTATIONCONDITEM : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDIT,
  @RFCParameterType : 'Table'
  QUOTATIONCONDITIONS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCOND,
  @RFCParameterType : 'Table'
  QUOTATIONCONDQTYSCALE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDQS,
  @RFCParameterType : 'Table'
  QUOTATIONCONDVALSCALE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDVS,
  @RFCParameterType : 'Table'
  QUOTATIONCONTRACTS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCNTR,
  @RFCParameterType : 'Table'
  QUOTATIONCREDITCARDS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARDM,
  @RFCParameterType : 'Table'
  QUOTATIONFLOWS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDFLOW,
  @RFCParameterType : 'Table'
  QUOTATIONITEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITBOS,
  @RFCParameterType : 'Table'
  QUOTATIONPARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDPART,
  @RFCParameterType : 'Table'
  QUOTATIONSCHEDULELINES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU,
  @RFCParameterType : 'Table'
  QUOTATIONSERVICES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDESLLBOS,
  @RFCParameterType : 'Table'
  QUOTATIONSERVICESCOND : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIBOSCD,
  @RFCParameterType : 'Table'
  QUOTATIONSERVICESCOST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIBOSCOST,
  @RFCParameterType : 'Table'
  QUOTATIONSERVICESTEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIESLLTX,
  @RFCParameterType : 'Table'
  QUOTATIONSTATUSHEADERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHDST,
  @RFCParameterType : 'Table'
  QUOTATIONSTATUSITEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITST,
  @RFCParameterType : 'Table'
  QUOTATIONTEXTHEADERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEHD,
  @RFCParameterType : 'Table'
  QUOTATIONTEXTLINES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPITEXTLI,
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2
) returns SAP_ABAP_BACKEND_RFC.BAPI_QUOTATION_GETDETAILBOS.ResultType;

action SAP_ABAP_BACKEND_RFC.RSAU_API_GET_LOG_DATA(
  /** Time interval to read */
  @RFCParameterType : 'Import'
  IS_INTERVAL : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_SEL_INTV not null,
  /** Selection option: Application instance */
  @RFCParameterType : 'Import'
  IT_R_INSTANCE : SAP_ABAP_BACKEND_RFC.DDIC.RSDSSELOPT_T,
  /** Selection option: Client */
  @RFCParameterType : 'Import'
  IT_R_MANDT : SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_MANDT_RANGE,
  /** Selection option: Event selection */
  @RFCParameterType : 'Import'
  IT_R_MSG : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_SEL_OPT_T_EVTS,
  /** Selection option: Program */
  @RFCParameterType : 'Import'
  IT_R_REPS : SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_PROGN_RANGE,
  /** Selection option: Transaction */
  @RFCParameterType : 'Import'
  IT_R_TCD : SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_TCODE_RANGE,
  /** Selection option: User */
  @RFCParameterType : 'Import'
  IT_R_USER : SAP_ABAP_BACKEND_RFC.DDIC.SUSR_T_RANGE_4_XUBNAME
) returns SAP_ABAP_BACKEND_RFC.RSAU_API_GET_LOG_DATA.ResultType;

type SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST.ResultType {
  @RFCParameterType : 'Export'
  ROWS : Integer;
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
  @RFCParameterType : 'Table'
  SELECTION_EXP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSEXP;
  @RFCParameterType : 'Table'
  SELECTION_RANGE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSRGE;
  @RFCParameterType : 'Table'
  USERLIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2 {
  TYPE : String(1);
  ID : String(20);
  @RFCAbapType : 'N'
  NUMBER : String(3);
  MESSAGE : String(220);
  LOG_NO : String(20);
  @RFCAbapType : 'N'
  LOG_MSG_NO : String(6);
  MESSAGE_V1 : String(50);
  MESSAGE_V2 : String(50);
  MESSAGE_V3 : String(50);
  MESSAGE_V4 : String(50);
  PARAMETER : String(32);
  ROW : Integer;
  FIELD : String(30);
  SYSTEM : String(10);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSEXP {
  LOGOP : String(3);
  ARITY : Integer;
  PARAMETER : String(32);
  FIELD : String(30);
  OPTION : String(2);
  LOW : String(45);
  HIGH : String(45);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSRGE {
  PARAMETER : String(32);
  FIELD : String(30);
  SIGN : String(1);
  OPTION : String(2);
  LOW : String(45);
  HIGH : String(45);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME {
  USERNAME : String(12);
  FIRSTNAME : String(40);
  LASTNAME : String(40);
  FULLNAME : String(80);
};

type SAP_ABAP_BACKEND_RFC.BAPI_USER_GET_DETAIL.ResultType {
  @RFCParameterType : 'Export'
  ADDRESS : SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR3;
  @RFCParameterType : 'Export'
  ADMINDATA : SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERADMIN;
  @RFCParameterType : 'Export'
  ALIAS : SAP_ABAP_BACKEND_RFC.DDIC.BAPIALIAS;
  @RFCParameterType : 'Export'
  COMPANY : SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSCOMP;
  @RFCParameterType : 'Export'
  DEFAULTS : SAP_ABAP_BACKEND_RFC.DDIC.BAPIDEFAUL;
  @RFCParameterType : 'Export'
  DESCRIPTION : SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSDESC;
  @RFCParameterType : 'Export'
  IDENTITY : SAP_ABAP_BACKEND_RFC.DDIC.BAPIIDENTITY;
  @RFCParameterType : 'Export'
  ISLOCKED : SAP_ABAP_BACKEND_RFC.DDIC.BAPISLOCKD;
  @RFCParameterType : 'Export'
  LASTMODIFIED : SAP_ABAP_BACKEND_RFC.DDIC.BAPIMODDAT;
  @RFCParameterType : 'Export'
  LOGONDATA : SAP_ABAP_BACKEND_RFC.DDIC.BAPILOGOND;
  @RFCParameterType : 'Export'
  REF_USER : SAP_ABAP_BACKEND_RFC.DDIC.BAPIREFUS;
  @RFCParameterType : 'Export'
  SAPUSER_UUID : SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUID;
  @RFCParameterType : 'Export'
  SNC : SAP_ABAP_BACKEND_RFC.DDIC.BAPISNCU;
  @RFCParameterType : 'Export'
  TECH_USER : SAP_ABAP_BACKEND_RFC.DDIC.BAPITECHUSER;
  @RFCParameterType : 'Export'
  UCLASS : SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASS;
  @RFCParameterType : 'Table'
  ACTIVITYGROUPS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIAGR;
  @RFCParameterType : 'Table'
  ADDCOMREM : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOMREM;
  @RFCParameterType : 'Table'
  ADDFAX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADFAX;
  @RFCParameterType : 'Table'
  ADDPAG : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPAG;
  @RFCParameterType : 'Table'
  ADDPRT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPRT;
  @RFCParameterType : 'Table'
  ADDRFC : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRFC;
  @RFCParameterType : 'Table'
  ADDRML : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRML;
  @RFCParameterType : 'Table'
  ADDSMTP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSMTP;
  @RFCParameterType : 'Table'
  ADDSSF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSSF;
  @RFCParameterType : 'Table'
  ADDTEL : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTEL;
  @RFCParameterType : 'Table'
  ADDTLX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTLX;
  @RFCParameterType : 'Table'
  ADDTTX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTTX;
  @RFCParameterType : 'Table'
  ADDURI : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADURI;
  @RFCParameterType : 'Table'
  ADDX400 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADX400;
  @RFCParameterType : 'Table'
  EXTIDHEAD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDHEAD;
  @RFCParameterType : 'Table'
  EXTIDPART : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDPART;
  @RFCParameterType : 'Table'
  EXTUID : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUID;
  @RFCParameterType : 'Table'
  GROUPS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIGROUPS;
  @RFCParameterType : 'Table'
  PARAMETER : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM;
  @RFCParameterType : 'Table'
  PARAMETER1 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM1;
  @RFCParameterType : 'Table'
  PROFILES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPROF;
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
  @RFCParameterType : 'Table'
  SAPUSER_UUID_HIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUIDHIST;
  @RFCParameterType : 'Table'
  SYSTEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRCVSYS;
  @RFCParameterType : 'Table'
  UCLASSSYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASSSYS;
  @RFCParameterType : 'Table'
  USATTRIBUTE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSATTRIBUTE;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUIDGET {
  READ_ALL : String(1);
  READ_EXTUID_TYPE : String(2);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR3 {
  PERS_NO : String(10);
  ADDR_NO : String(10);
  TITLE_P : String(30);
  FIRSTNAME : String(40);
  LASTNAME : String(40);
  BIRTH_NAME : String(40);
  MIDDLENAME : String(40);
  SECONDNAME : String(40);
  FULLNAME : String(80);
  FULLNAME_X : String(1);
  TITLE_ACA1 : String(20);
  TITLE_ACA2 : String(20);
  PREFIX1 : String(20);
  PREFIX2 : String(20);
  TITLE_SPPL : String(20);
  NICKNAME : String(40);
  INITIALS : String(10);
  NAMEFORMAT : String(2);
  NAMCOUNTRY : String(3);
  LANGU_P : String(1);
  LANGUP_ISO : String(2);
  SORT1_P : String(20);
  SORT2_P : String(20);
  DEPARTMENT : String(40);
  FUNCTION : String(40);
  BUILDING_P : String(10);
  FLOOR_P : String(10);
  ROOM_NO_P : String(10);
  INITS_SIG : String(10);
  INHOUSE_ML : String(10);
  COMM_TYPE : String(3);
  TITLE : String(30);
  NAME : String(40);
  NAME_2 : String(40);
  NAME_3 : String(40);
  NAME_4 : String(40);
  C_O_NAME : String(40);
  CITY : String(40);
  DISTRICT : String(40);
  CITY_NO : String(12);
  DISTRCT_NO : String(8);
  CHCKSTATUS : String(1);
  POSTL_COD1 : String(10);
  POSTL_COD2 : String(10);
  POSTL_COD3 : String(10);
  PO_BOX : String(10);
  PO_BOX_CIT : String(40);
  PBOXCIT_NO : String(12);
  DELIV_DIS : String(15);
  TRANSPZONE : String(10);
  STREET : String(60);
  STREET_NO : String(12);
  STR_ABBR : String(2);
  HOUSE_NO : String(10);
  HOUSE_NO2 : String(10);
  STR_SUPPL1 : String(40);
  STR_SUPPL2 : String(40);
  STR_SUPPL3 : String(40);
  LOCATION : String(40);
  BUILDING : String(10);
  FLOOR : String(10);
  ROOM_NO : String(10);
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  LANGU : String(1);
  LANGU_ISO : String(2);
  REGION : String(3);
  SORT1 : String(20);
  SORT2 : String(20);
  TIME_ZONE : String(6);
  TAXJURCODE : String(15);
  ADR_NOTES : String(50);
  TEL1_NUMBR : String(30);
  TEL1_EXT : String(10);
  FAX_NUMBER : String(30);
  FAX_EXTENS : String(10);
  E_MAIL : String(241);
  BUILD_LONG : String(20);
  REGIOGROUP : String(8);
  HOME_CITY : String(40);
  HOMECITYNO : String(12);
  PCODE1_EXT : String(10);
  PCODE2_EXT : String(10);
  PCODE3_EXT : String(10);
  PO_W_O_NO : String(1);
  PO_BOX_REG : String(3);
  POBOX_CTRY : String(3);
  PO_CTRYISO : String(2);
  DONT_USE_S : String(4);
  DONT_USE_P : String(4);
  HOUSE_NO3 : String(10);
  LANGU_CR_P : String(1);
  LANGUCPISO : String(2);
  PO_BOX_LOBBY : String(40);
  DELI_SERV_TYPE : String(4);
  DELI_SERV_NUMBER : String(10);
  COUNTY_CODE : String(8);
  COUNTY : String(40);
  TOWNSHIP_CODE : String(8);
  TOWNSHIP : String(40);
  XPCPT : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERADMIN {
  ANAME : String(12);
  ERDAT : Date;
  TRDAT : Date;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIALIAS {
  USERALIAS : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSCOMP {
  COMPANY : String(42);
  TEMPLATE_ORGTYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIDEFAUL {
  STCOD : String(20);
  SPLD : String(4);
  SPLG : String(1);
  SPDB : String(1);
  SPDA : String(1);
  DATFM : String(1);
  DCPFM : String(1);
  LANGU : String(1);
  CATTKENNZ : String(1);
  KOSTL : String(8);
  START_MENU : String(30);
  TIMEFM : String(1);
  TZONE_IANA : String(64);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSDESC {
  RESPONSIBLE : String(12);
  TECHDESC : String(80);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIIDENTITY {
  IDENTITY_UUID : String(36);
  BPPERSON : String(36);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISLOCKD {
  WRNG_LOGON : String(1);
  LOCAL_LOCK : String(1);
  GLOB_LOCK : String(1);
  NO_USER_PW : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIMODDAT {
  MODDATE : Date;
  MODTIME : Time;
  MODIFIER : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPILOGOND {
  GLTGV : Date;
  GLTGB : Date;
  USTYP : String(1);
  CLASS : String(12);
  ACCNT : String(12);
  TZONE : String(6);
  LTIME : Time;
  BCODE : Binary(8);
  CODVN : String(1);
  PASSCODE : Binary(20);
  CODVC : String(1);
  PWDSALTEDHASH : String(255);
  CODVS : String(1);
  SECURITY_POLICY : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIREFUS {
  REF_USER : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUID {
  SAP_UID : String(36);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISNCU {
  GUIFLAG : String(1);
  PNAME : String(255);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPITECHUSER {
  TECH_INDICATOR : String(1);
  @RFCAbapType : 'N'
  IDADTYPE : String(2);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASS {
  LIC_TYPE : String(2);
  SPEC_VERS : String(2);
  COUNTRY_SURCHARGE : Decimal;
  SUBSTITUTE_FROM : Date;
  SUBSTITUTE_UNTIL : Date;
  SYSID : String(8);
  CLIENT : String(3);
  BNAME_CHARGEABLE : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIAGR {
  AGR_NAME : String(30);
  FROM_DAT : Date;
  TO_DAT : Date;
  AGR_TEXT : String(80);
  ORG_FLAG : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICOMREM {
  COMM_TYPE : String(3);
  LANGU : String(1);
  LANGU_ISO : String(2);
  COMM_NOTES : String(50);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADFAX {
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  STD_NO : String(1);
  FAX : String(30);
  EXTENSION : String(10);
  FAX_NO : String(30);
  SENDER_NO : String(30);
  FAX_GROUP : String(1);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPAG {
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  STD_NO : String(1);
  PAGER_TYPE : String(4);
  PAGER : String(30);
  PAGER_NO : String(30);
  CALLER_NO : String(30);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPRT {
  STD_NO : String(1);
  PRINT_DEST : String(4);
  STD_RECIP : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRFC {
  STD_NO : String(1);
  LOG_DEST : String(32);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRML {
  STD_NO : String(1);
  SYMB_DEST : String(10);
  REC_TYPE : String(1);
  R_MAIL_CLT : String(3);
  R_MAIL : String(12);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSMTP {
  STD_NO : String(1);
  E_MAIL : String(241);
  EMAIL_SRCH : String(20);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  ENCODE : String(1);
  TNEF : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSSF {
  STD_NO : String(1);
  DUMMY : String(1);
  STD_RECIP : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  RFCDEST : String(32);
  SSFIDSHORT : String(132);
  SSF_NS : String(10);
  SSF_PROF : String(132);
  SSFIDPART1 : String(250);
  SSFIDPART2 : String(250);
  SSFIDPART3 : String(250);
  SSFIDPART4 : String(250);
  SSFIDPART5 : String(250);
  SSFIDPART6 : String(250);
  SSFIDPART7 : String(250);
  SSFIDPART8 : String(250);
  SSFIDPART9 : String(48);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTEL {
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  STD_NO : String(1);
  TELEPHONE : String(30);
  EXTENSION : String(10);
  TEL_NO : String(30);
  CALLER_NO : String(30);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTLX {
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  STD_NO : String(1);
  TELEX_NO : String(30);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTTX {
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  STD_NO : String(1);
  TELETEX : String(30);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADURI {
  STD_NO : String(1);
  URI_TYPE : String(3);
  URI : String(132);
  STD_RECIP : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  URI_PART1 : String(250);
  URI_PART2 : String(250);
  URI_PART3 : String(250);
  URI_PART4 : String(250);
  URI_PART5 : String(250);
  URI_PART6 : String(250);
  URI_PART7 : String(250);
  URI_PART8 : String(250);
  URI_PART9 : String(48);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADX400 {
  STD_NO : String(1);
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  ADM_DOM : String(16);
  PRIV_DOM : String(16);
  ORGANIZATN : String(64);
  ORG_UNIT_1 : String(32);
  ORG_UNIT_2 : String(32);
  ORG_UNIT_3 : String(32);
  ORG_UNIT_4 : String(32);
  LASTNAME : String(40);
  FIRSTNAME : String(16);
  INITIALS : String(5);
  GENERATION : String(3);
  X_121_ADDR : String(15);
  TERM_ID : String(24);
  TERM_TYPE : String(1);
  UANID : String(32);
  DDA_TYPE1 : String(8);
  DDA_VALUE1 : String(128);
  DDA_TYPE2 : String(8);
  DDA_VALUE2 : String(128);
  DDA_TYPE3 : String(8);
  DDA_VALUE3 : String(128);
  DDA_TYPE4 : String(8);
  DDA_VALUE4 : String(128);
  STD_RECIP : String(1);
  R_3_USER : String(1);
  TXT_ENCODE : String(1);
  TNEF : String(1);
  HOME_FLAG : String(1);
  @RFCAbapType : 'N'
  CONSNUMBER : String(3);
  ERRORFLAG : String(1);
  FLG_NOUSE : String(1);
  VALID_FROM : String(14);
  VALID_TO : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDHEAD {
  @RFCAbapType : 'N'
  SEQ_NO_ID : String(4);
  TYPE : String(2);
  CODE_TYPE : String(1);
  EXTID_LEN : Integer;
  ISSUER_LEN : Integer;
  SERIAL_LEN : Integer;
  VALITYINFO : Binary(16);
  VERSION : Integer;
  STATUS : String(1);
  EXTFLAG : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDPART {
  @RFCAbapType : 'N'
  SEQ_NO_ID : String(4);
  FIELDNAME : String(30);
  @RFCAbapType : 'N'
  SEQ_NO_PART : String(4);
  PART_DATA : String(192);
  EXTFLAG : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUID {
  EXTUID_TYPE : String(2);
  EXTUID : String(241);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIGROUPS {
  USERGROUP : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM {
  PARID : String(20);
  PARVA : String(18);
  PARTXT : String(60);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM1 {
  PARID : String(20);
  PARVA : String(40);
  PARTXT : String(60);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPROF {
  BAPIPROF : String(12);
  BAPIPTEXT : String(60);
  BAPITYPE : String(1);
  BAPIAKTPS : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUIDHIST {
  SAP_UID : String(36);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIRCVSYS {
  SUBSYSTEM : String(10);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASSSYS {
  RCVSYSTEM : String(10);
  LIC_TYPE : String(2);
  SPEC_VERS : String(2);
  COUNTRY_SURCHARGE : Decimal;
  SUBSTITUTE_FROM : Date;
  SUBSTITUTE_UNTIL : Date;
  SYSID : String(8);
  CLIENT : String(3);
  BNAME_CHARGEABLE : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSATTRIBUTE {
  ATTR_TYPE : String(10);
  ATTR_ID : String(20);
  ATTR_TEXT : String(60);
};

type SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE.ResultType {
  @RFCParameterType : 'Export'
  BILLING_PARTY : SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAYER;
  @RFCParameterType : 'Export'
  RETURN : SAP_ABAP_BACKEND_RFC.DDIC.BAPIRETURN;
  @RFCParameterType : 'Export'
  SALESDOCUMENT : String(10);
  @RFCParameterType : 'Export'
  SHIP_TO_PARTY : SAP_ABAP_BACKEND_RFC.DDIC.BAPISHIPTO;
  @RFCParameterType : 'Export'
  SOLD_TO_PARTY : SAP_ABAP_BACKEND_RFC.DDIC.BAPISOLDTO;
  @RFCParameterType : 'Table'
  EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;
  @RFCParameterType : 'Table'
  MESSAGETABLE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
  @RFCParameterType : 'Table'
  ORDER_CCARD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD;
  @RFCParameterType : 'Table'
  ORDER_CCARD_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD_EX;
  @RFCParameterType : 'Table'
  ORDER_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB;
  @RFCParameterType : 'Table'
  ORDER_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS;
  @RFCParameterType : 'Table'
  ORDER_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT;
  @RFCParameterType : 'Table'
  ORDER_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG;
  @RFCParameterType : 'Table'
  ORDER_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL;
  @RFCParameterType : 'Table'
  ORDER_CONDITION_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND;
  @RFCParameterType : 'Table'
  ORDER_INCOMPLETE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIINCOMP;
  @RFCParameterType : 'Table'
  ORDER_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMIN;
  @RFCParameterType : 'Table'
  ORDER_ITEMS_OUT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMEX;
  @RFCParameterType : 'Table'
  ORDER_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARTNR;
  @RFCParameterType : 'Table'
  ORDER_SCHEDULE_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU;
  @RFCParameterType : 'Table'
  ORDER_SCHEDULE_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL;
  @RFCParameterType : 'Table'
  PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEAD {
  DOC_NUMBER : String(10);
  DOC_TYPE : String(4);
  COLLECT_NO : String(10);
  SALES_ORG : String(4);
  DISTR_CHAN : String(2);
  DIVISION : String(2);
  SALES_GRP : String(3);
  SALES_OFF : String(4);
  REQ_DATE_H : Date;
  DATE_TYPE : String(1);
  PURCH_NO : String(20);
  PURCH_DATE : Date;
  PO_METHOD : String(4);
  PO_SUPPLEM : String(4);
  REF_1 : String(12);
  NAME : String(30);
  TELEPHONE : String(16);
  PRICE_GRP : String(2);
  CUST_GROUP : String(2);
  SALES_DIST : String(6);
  PRICE_LIST : String(2);
  INCOTERMS1 : String(3);
  INCOTERMS2 : String(28);
  PMNTTRMS : String(4);
  DLV_BLOCK : String(2);
  BILL_BLOCK : String(2);
  ORD_REASON : String(3);
  COMPL_DLV : String(1);
  PRICE_DATE : Date;
  QT_VALID_F : Date;
  QT_VALID_T : Date;
  CT_VALID_F : Date;
  CT_VALID_T : Date;
  CUST_GRP1 : String(3);
  CUST_GRP2 : String(3);
  CUST_GRP3 : String(3);
  CUST_GRP4 : String(3);
  CUST_GRP5 : String(3);
  PURCH_NO_C : String(35);
  PURCH_NO_S : String(35);
  PO_DAT_S : Date;
  PO_METH_S : String(4);
  REF_1_S : String(12);
  SD_DOC_CAT : String(1);
  SHIP_COND : String(2);
  CURRENCY : String(5);
  CURRENCY_ISO : String(3);
  DLV_TIME : String(3);
  CD_TYPE1 : String(4);
  CD_VALUE1 : Decimal;
  @RFCAbapType : 'N'
  CD_P_UNT1 : String(5);
  CD_D_UNT1 : String(3);
  CD_D_UISO1 : String(3);
  CD_CURR1 : String(5);
  CD_CU_ISO1 : String(3);
  CD_TYPE2 : String(4);
  CD_VALUE2 : Decimal;
  @RFCAbapType : 'N'
  CD_P_UNT2 : String(5);
  CD_D_UNT2 : String(3);
  CD_D_UISO2 : String(3);
  CD_CURR2 : String(5);
  CD_CU_ISO2 : String(3);
  CD_TYPE3 : String(4);
  CD_VALUE3 : Decimal;
  @RFCAbapType : 'N'
  CD_P_UNT3 : String(5);
  CD_D_UNT3 : String(3);
  CD_D_UISO3 : String(3);
  CD_CURR3 : String(5);
  CD_CU_ISO3 : String(3);
  CD_TYPE4 : String(4);
  CD_VALUE4 : Decimal;
  @RFCAbapType : 'N'
  CD_P_UNT4 : String(5);
  CD_D_UNT4 : String(3);
  CD_D_UISO4 : String(3);
  CD_CURR4 : String(5);
  CD_CU_ISO4 : String(3);
  FKK_CONACCT : String(12);
  REF_DOC : String(10);
  REF_DOC_CA : String(1);
  SEPA_MANDATE_ID : String(35);
  SD_DOC_CAT_LONG : String(4);
  REF_DOC_CA_LONG : String(4);
  INCOTERMSV : String(4);
  INCOTERMS2L : String(70);
  INCOTERMS3L : String(70);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAYER {
  PAYER : String(10);
  NAME : String(35);
  STREET : String(30);
  PO_BOX : String(10);
  POSTL_CODE : String(10);
  POBX_PCD : String(10);
  CITY : String(25);
  LANGU : String(1);
  COUNTRY : String(3);
  TELEPHONE : String(16);
  C_CTR_AREA : String(4);
  CRED_ACCNT : String(10);
  CRED_LIMIT : Decimal;
  ORDER_VALS : Decimal;
  RCVBL_VALS : Decimal;
  CRED_LIAB : Decimal;
  CURRENCY : String(5);
  MN_INVOICE : String(1);
  BILL_SCHED : String(2);
  LIST_SCHED : String(2);
  VAL_LIMIT : Decimal;
  ACCNT_ASGN : String(2);
  PMNTTRMS : String(4);
  @RFCAbapType : 'N'
  ADD_VAL_DY : String(2);
  FIX_VAL_DY : Date;
  PROD_PROP : String(10);
  BILL_BLOCK : String(2);
  ORDER_BLCK : String(2);
  VAT_REG_NO : String(20);
  VAT_CNTRY : String(3);
  TAX_CLASS1 : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  REBATE_REL : String(1);
  REBATE_FRM : Date;
  CRED_GROUP : String(4);
  REPR_GROUP : String(3);
  RISK_CATEG : String(3);
  TRADE_ID : String(6);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIRETURN {
  TYPE : String(1);
  CODE : String(5);
  MESSAGE : String(220);
  LOG_NO : String(20);
  @RFCAbapType : 'N'
  LOG_MSG_NO : String(6);
  MESSAGE_V1 : String(50);
  MESSAGE_V2 : String(50);
  MESSAGE_V3 : String(50);
  MESSAGE_V4 : String(50);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISHIPTO {
  SHIP_TO : String(10);
  NAME : String(35);
  STREET : String(30);
  PO_BOX : String(10);
  POSTL_CODE : String(10);
  POBX_PCD : String(10);
  CITY : String(25);
  LANGU : String(1);
  DEST_CNTRY : String(3);
  TRNSP_ZONE : String(10);
  TRAIN_STAT : String(25);
  EXPR_STAT : String(25);
  TELEPHONE : String(16);
  UNLOAD_PT : String(25);
  FAC_CALEND : String(2);
  RECV_HOURS : String(3);
  MO_AM_FROM : Time;
  MO_AM_UNTL : Time;
  MO_PM_FROM : Time;
  MO_PM_UNTL : Time;
  TU_AM_FROM : Time;
  TU_AM_UNTL : Time;
  TU_PM_FROM : Time;
  TU_PM_UNTL : Time;
  WE_AM_FROM : Time;
  WR_AM_UNTL : Time;
  WE_PM_FROM : Time;
  WE_PM_UNTL : Time;
  TH_AM_FROM : Time;
  TH_AM_UNTL : Time;
  TH_PM_FROM : Time;
  TH_PM_UNTL : Time;
  FR_AM_FROM : Time;
  FR_AM_UNTL : Time;
  FR_PM_FROM : Time;
  FR_PM_UNTL : Time;
  SA_AM_FROM : Time;
  SA_AM_UNTL : Time;
  SA_PM_FROM : Time;
  SA_PM_UNTL : Time;
  SU_AM_FROM : Time;
  SU_AM_UNTL : Time;
  SU_PM_FROM : Time;
  SU_PM_UNTL : Time;
  VAT_REG_NO : String(20);
  TAX_CLASS1 : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  REGION : String(3);
  COUNTY_CDE : String(3);
  CITY_CODE : String(4);
  TAXJURCODE : String(15);
  CTRDATA_OK : String(1);
  DLV_PLANT : String(4);
  DLV_BLOCK : String(2);
  ORDER_BLCK : String(2);
  PROD_PROP : String(10);
  SHIP_COND : String(2);
  ACC_1_TIME : String(1);
  ACCNT_GRP : String(4);
  DESC_PARTN : String(30);
  FY_VARIANT : String(2);
  PROD_ATTR1 : String(1);
  PROD_ATTR2 : String(1);
  PROD_ATTR3 : String(1);
  PROD_ATTR4 : String(1);
  PROD_ATTR5 : String(1);
  PROD_ATTR6 : String(1);
  PROD_ATTR7 : String(1);
  PROD_ATTR8 : String(1);
  PROD_ATTR9 : String(1);
  PROD_ATTRA : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISOLDTO {
  SOLD_TO : String(10);
  NAME : String(35);
  STREET : String(30);
  PO_BOX : String(10);
  POSTL_CODE : String(10);
  POBX_PCD : String(10);
  CITY : String(25);
  LANGU : String(1);
  COUNTRY : String(3);
  TELEPHONE : String(16);
  STAT_GROUP : String(1);
  ORDER_BLCK : String(2);
  PRC_PROCED : String(1);
  CUST_GROUP : String(2);
  SALES_DIST : String(6);
  PRICE_GRP : String(2);
  PRICE_LIST : String(2);
  INCOTERMS1 : String(3);
  INCOTERMS2 : String(28);
  COMPL_DLV : String(1);
  MAX_PL_DLV : Decimal;
  ORDER_COMB : String(1);
  BTCH_SPLIT : String(1);
  @RFCAbapType : 'N'
  DLV_PRIO : String(2);
  CURRENCY : String(5);
  EXCHG_RATE : String(4);
  SHIP_COND : String(2);
  PART_DLV : String(1);
  @RFCAbapType : 'N'
  ORDER_PROB : String(3);
  DLV_BLOCK : String(2);
  PROD_PROP : String(10);
  ACC_1_TIME : String(1);
  SALES_OFF : String(4);
  SALES_GRP : String(3);
  VAT_REG_NO : String(20);
  TAX_CLASS1 : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  COMPANY_ID : String(6);
  INCOTERMSV : String(4);
  INCOTERMS2L : String(70);
  INCOTERMS3L : String(70);
  PRC_PROCED_LONG : String(2);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX {
  STRUCTURE : String(30);
  VALUEPART1 : String(240);
  VALUEPART2 : String(240);
  VALUEPART3 : String(240);
  VALUEPART4 : String(240);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD {
  CC_TYPE : String(4);
  CC_NUMBER : String(25);
  CC_VALID_T : Date;
  CC_NAME : String(40);
  BILLAMOUNT : Decimal;
  AUTH_FLAG : String(1);
  AUTHAMOUNT : Decimal;
  CURRENCY : String(5);
  CURR_ISO : String(3);
  AUTH_DATE : Date;
  AUTH_TIME : Time;
  AUTH_CC_NO : String(10);
  AUTH_REFNO : String(15);
  CC_REACT : String(1);
  CC_RE_AMOUNT : Decimal;
  GL_ACCOUNT : String(10);
  CC_STAT_EX : String(1);
  CC_REACT_T : String(40);
  VIRT_CARD : String(1);
  MERCHIDCL : String(15);
  PRE_AUTH : String(1);
  CC_SEQ_NO : String(10);
  AMOUNTCHAN : String(1);
  AUTHORTYPE : String(1);
  DATAORIGIN : String(1);
  RADRCHECK1 : String(4);
  RADRCHECK2 : String(4);
  RADRCHECK3 : String(4);
  RCARDCHECK : String(4);
  CC_LIMITED : String(1);
  CC_VERIF_VALUE : String(6);
  CC_CTRL_FIELD : String(1);
  CC_IN_USE_ST : String(1);
  CC_TOKEN : String(25);
  DP_PSP : String(4);
  DP_PAYID : String(40);
  DP_PSP_TRANSID : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD_EX {
  PAY_TYPE : String(1);
  CC_TYPE : String(4);
  CC_NUMBER : String(25);
  CC_SEQ_NO : String(10);
  CC_VALID_F : Date;
  CC_VALID_T : Date;
  CC_NAME : String(40);
  AUTHAMOUNT : Decimal;
  CURRENCY : String(5);
  CURR_ISO : String(3);
  AUTH_DATE : Date;
  AUTH_TIME : Time;
  MERCHIDCL : String(15);
  TERMINAL : String(10);
  BILLAMOUNT : Decimal;
  CC_LI_AMOUNT : String(1);
  CC_AUTTH_NO : String(10);
  BILLSTATUS : String(1);
  DATAORIGIN : String(1);
  CC_SETTLED : String(1);
  AUTH_REFNO : String(15);
  PTOFRCPT : String(10);
  CC_REACT : String(1);
  AUTH_FLAG : String(1);
  BILL_PLAN : String(10);
  @RFCAbapType : 'N'
  BILL_PLANI : String(6);
  CC_RE_AMOUNT : Decimal;
  GL_ACCOUNT : String(10);
  CC_STAT_EX : String(1);
  CC_REACT_T : String(40);
  RFCAUT : String(32);
  AUT_SETINIT : String(30);
  AUT_SETINFO : String(30);
  PRE_AUTH : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB {
  CONFIG_ID : String(6);
  CONTEXT : String(250);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS {
  CONFIG_ID : String(6);
  INST_ID : String(8);
  OBJ_TYPE : String(10);
  CLASS_TYPE : String(3);
  OBJ_KEY : String(50);
  OBJ_TXT : String(70);
  QUANTITY : String(15);
  AUTHOR : String(1);
  QUANTITY_UNIT : String(3);
  COMPLETE : String(1);
  CONSISTENT : String(1);
  OBJECT_GUID : String(32);
  PERSIST_ID : String(32);
  PERSIST_ID_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT {
  CONFIG_ID : String(6);
  PARENT_ID : String(8);
  INST_ID : String(8);
  PART_OF_NO : String(4);
  OBJ_TYPE : String(10);
  CLASS_TYPE : String(3);
  OBJ_KEY : String(50);
  AUTHOR : String(1);
  SALES_RELEVANT : String(1);
  PART_OF_GUID : String(32);
  BOM_IDENT : String(8);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG {
  POSEX : String(6);
  CONFIG_ID : String(6);
  ROOT_ID : String(8);
  SCE : String(1);
  KBNAME : String(30);
  KBVERSION : String(30);
  COMPLETE : String(1);
  CONSISTENT : String(1);
  CFGINFO : String(250);
  KBPROFILE : String(30);
  KBLANGUAGE : String(1);
  CBASE_ID : String(32);
  CBASE_ID_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL {
  CONFIG_ID : String(6);
  INST_ID : String(8);
  CHARC : String(40);
  CHARC_TXT : String(70);
  VALUE : String(40);
  VALUE_TXT : String(70);
  AUTHOR : String(1);
  VALUE_TO : String(40);
  VALCODE : String(1);
  VALUE_LONG : String(70);
  VALUE_TO_LONG : String(70);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  COND_ST_NO : String(3);
  @RFCAbapType : 'N'
  COND_COUNT : String(2);
  COND_TYPE : String(4);
  COND_VALUE : Decimal;
  CURRENCY : String(5);
  COND_UNIT : String(3);
  COND_P_UNT : Decimal;
  CURR_ISO : String(3);
  CD_UNT_ISO : String(3);
  REFOBJTYPE : String(10);
  REFOBJKEY : String(70);
  REFLOGSYS : String(10);
  APPLICATIO : String(2);
  CONPRICDAT : Date;
  CALCTYPCON : String(1);
  CONBASEVAL : Decimal;
  CONEXCHRAT : Decimal;
  NUMCONVERT : Decimal;
  DENOMINATO : Decimal;
  CONDTYPE : String(1);
  STAT_CON : String(1);
  SCALETYPE : String(1);
  ACCRUALS : String(1);
  CONINVOLST : String(1);
  CONDORIGIN : String(1);
  GROUPCOND : String(1);
  COND_UPDAT : String(1);
  @RFCAbapType : 'N'
  ACCESS_SEQ : String(2);
  @RFCAbapType : 'N'
  CONDCOUNT : String(2);
  ROUNDOFFDI : Decimal;
  CONDVALUE : Decimal;
  CURRENCY_2 : String(5);
  CURR_ISO_2 : String(3);
  CONDCNTRL : String(1);
  CONDISACTI : String(1);
  CONDCLASS : String(1);
  FACTBASVAL : Double;
  SCALEBASIN : String(1);
  SCALBASVAL : Decimal;
  UNITMEASUR : String(3);
  ISO_UNIT : String(3);
  CURRENCKEY : String(5);
  CURRENISO : String(3);
  CONDINCOMP : String(1);
  CONDCONFIG : String(1);
  CONDCHAMAN : String(1);
  COND_NO : String(10);
  TAX_CODE : String(2);
  VARCOND : String(26);
  ACCOUNTKEY : String(3);
  ACCOUNT_KE : String(3);
  WT_WITHCD : String(2);
  STRUCTCOND : String(1);
  FACTCONBAS : Double;
  @RFCAbapType : 'N'
  CONDCOINHD : String(2);
  @RFCAbapType : 'N'
  ACCESS_SEQ_LONG : String(3);
  @RFCAbapType : 'N'
  COND_COUNT_LONG : String(3);
  @RFCAbapType : 'N'
  CONDCOINHD_LONG : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIINCOMP {
  DOC_NUMBER : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  SCHED_LINE : String(4);
  PARTN_ROLE : String(2);
  TABLE_NAME : String(30);
  FIELD_NAME : String(30);
  FIELD_TEXT : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMIN {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  HG_LV_ITEM : String(6);
  PO_ITM_NO : String(6);
  MATERIAL : String(18);
  CUST_MAT : String(22);
  BATCH : String(10);
  @RFCAbapType : 'N'
  DLV_GROUP : String(3);
  PART_DLV : String(1);
  REASON_REJ : String(2);
  BILL_BLOCK : String(2);
  BILL_DATE : Date;
  PLANT : String(4);
  STORE_LOC : String(4);
  @RFCAbapType : 'N'
  TARGET_QTY : String(13);
  TARGET_QU : String(3);
  @RFCAbapType : 'N'
  REQ_QTY : String(13);
  SALES_UNIT : String(3);
  ITEM_CATEG : String(4);
  SHORT_TEXT : String(40);
  REQ_DATE : Date;
  DATE_TYPE : String(1);
  REQ_TIME : Time;
  COND_TYPE : String(4);
  COND_VALUE : Decimal;
  @RFCAbapType : 'N'
  COND_P_UNT : String(5);
  COND_D_UNT : String(3);
  PRC_GROUP1 : String(3);
  PRC_GROUP2 : String(3);
  PRC_GROUP3 : String(3);
  PRC_GROUP4 : String(3);
  PRC_GROUP5 : String(3);
  PROD_HIERA : String(18);
  MATL_GROUP : String(9);
  PURCH_NO_C : String(35);
  PURCH_DATE : Date;
  PO_METHOD : String(4);
  REF_1 : String(12);
  PURCH_NO_S : String(35);
  PO_DAT_S : Date;
  PO_METH_S : String(4);
  REF_1_S : String(12);
  PO_ITM_NO_S : String(6);
  COND_VAL1 : Decimal;
  CURRENCY : String(5);
  CURR_ISO : String(3);
  T_UNIT_ISO : String(3);
  S_UNIT_ISO : String(3);
  CD_UNT_ISO : String(3);
  CUST_MAT35 : String(35);
  INCOTERMS1 : String(3);
  INCOTERMS2 : String(28);
  DLV_TIME : String(3);
  ASSORT_MOD : String(18);
  VAL_CONTR : String(10);
  @RFCAbapType : 'N'
  VAL_CON_I : String(6);
  REF_DOC : String(10);
  @RFCAbapType : 'N'
  REF_DOC_IT : String(6);
  REF_DOC_CA : String(1);
  CD_TYPE2 : String(4);
  CD_VALUE2 : Decimal;
  @RFCAbapType : 'N'
  CD_P_UNT2 : String(5);
  CD_D_UNT2 : String(3);
  CD_D_UISO2 : String(3);
  CD_CURR2 : String(5);
  CD_CU_ISO2 : String(3);
  CD_TYPE3 : String(4);
  CD_VALUE3 : Decimal;
  @RFCAbapType : 'N'
  CD_P_UNT3 : String(5);
  CD_D_UNT3 : String(3);
  CD_D_UISO3 : String(3);
  CD_CURR3 : String(5);
  CD_CU_ISO3 : String(3);
  CD_TYPE4 : String(4);
  CD_VALUE4 : Decimal;
  @RFCAbapType : 'N'
  CD_P_UNT4 : String(5);
  CD_D_UNT4 : String(3);
  CD_D_UISO4 : String(3);
  CD_CURR4 : String(5);
  CD_CU_ISO4 : String(3);
  MAT_EXT : String(40);
  MAT_GUID : String(32);
  MAT_VERS : String(10);
  ALTERN_BOM : String(2);
  FKK_CONACCT : String(12);
  EAN_UPC : String(18);
  SHIP_POINT : String(4);
  PRODCAT : String(10);
  SGT_RCAT : String(16);
  INCOTERMSV : String(4);
  INCOTERMS2L : String(70);
  INCOTERMS3L : String(70);
  REF_DOC_CA_LONG : String(4);
  MATERIAL_LONG : String(40);
  REQ_SEG_LONG : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMEX {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  PO_ITM_NO : String(6);
  MATERIAL : String(18);
  MAT_ENTRD : String(18);
  SHORT_TEXT : String(40);
  @RFCAbapType : 'N'
  NET_VALUE : String(15);
  CURRENCY : String(5);
  @RFCAbapType : 'N'
  SUBTOTAL_1 : String(15);
  @RFCAbapType : 'N'
  SUBTOTAL_2 : String(15);
  @RFCAbapType : 'N'
  SUBTOTAL_3 : String(15);
  @RFCAbapType : 'N'
  SUBTOTAL_4 : String(15);
  @RFCAbapType : 'N'
  SUBTOTAL_5 : String(15);
  @RFCAbapType : 'N'
  SUBTOTAL_6 : String(15);
  SALES_UNIT : String(3);
  @RFCAbapType : 'N'
  QTY_REQ_DT : String(13);
  DLV_DATE : Date;
  @RFCAbapType : 'N'
  REPL_TIME : String(3);
  CONFIGURED : String(1);
  PURCH_NO_C : String(35);
  PURCH_DATE : Date;
  PO_METHOD : String(4);
  REF_1 : String(12);
  PURCH_NO_S : String(35);
  PO_DAT_S : Date;
  PO_METH_S : String(4);
  REF_1_S : String(12);
  PO_ITM_NO_S : String(6);
  NET_VALUE1 : Decimal;
  CURR_ISO : String(3);
  S_UNIT_ISO : String(3);
  REQ_QTY : Decimal;
  PLANT : String(4);
  TX_DOC_CUR : Decimal;
  MAT_EXT : String(40);
  MAT_GUID : String(32);
  MAT_VERS : String(10);
  MAT_E_EXT : String(40);
  MAT_E_GUID : String(32);
  MAT_E_VERS : String(10);
  TARGET_QTY : Decimal;
  TARGET_QU : String(3);
  T_UNIT_ISO : String(3);
  ITEM_CATEG : String(4);
  SHIP_POINT : String(4);
  @RFCAbapType : 'N'
  HG_LV_ITEM : String(6);
  CUST_MAT : String(35);
  PART_DLV : String(1);
  REASON_REJ : String(2);
  BILL_BLOCK : String(2);
  STGE_LOC : String(4);
  PROD_HIER : String(18);
  MATL_GROUP : String(9);
  SUBTOTAL1 : Decimal;
  SUBTOTAL2 : Decimal;
  SUBTOTAL3 : Decimal;
  SUBTOTAL4 : Decimal;
  SUBTOTAL5 : Decimal;
  SUBTOTAL6 : Decimal;
  MATERIAL_LONG : String(40);
  MAT_ENTRD_LONG : String(40);
  REQ_SEGMENT : String(16);
  REQ_SEG_LONG : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARTNR {
  PARTN_ROLE : String(2);
  PARTN_NUMB : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  TITLE : String(15);
  NAME : String(35);
  NAME_2 : String(35);
  NAME_3 : String(35);
  NAME_4 : String(35);
  STREET : String(35);
  COUNTRY : String(3);
  COUNTRY_ISO : String(2);
  POSTL_CODE : String(10);
  POBX_PCD : String(10);
  POBX_CTY : String(35);
  CITY : String(35);
  DISTRICT : String(35);
  REGION : String(3);
  PO_BOX : String(10);
  TELEPHONE : String(16);
  TELEPHONE2 : String(16);
  TELEBOX : String(15);
  FAX_NUMBER : String(31);
  TELETEX_NO : String(30);
  TELEX_NO : String(30);
  LANGU : String(1);
  LANGU_ISO : String(2);
  UNLOAD_PT : String(25);
  TRANSPZONE : String(10);
  TAXJURCODE : String(15);
  ADDRESS : String(10);
  PRIV_ADDR : String(10);
  ADDR_TYPE : String(1);
  ADDR_ORIG : String(1);
  ADDR_LINK : String(10);
  VAT_REG_NO : String(20);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU {
  OPERATION : String(3);
  DOC_NUMBER : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  SCHED_LINE : String(4);
  SCHED_TYPE : String(2);
  RELFORDEL : String(1);
  REQ_DATE : Date;
  REQ_TIME : Time;
  REQ_QTY : Decimal;
  CONFIR_QTY : Decimal;
  SALES_UNIT : String(3);
  ISOCODUNIT : String(3);
  REQ_QTY1 : Decimal;
  BASE_UOM : String(3);
  ISOBASUNIT : String(3);
  REQ_DATE1 : Date;
  REQ_TYPE : String(2);
  PLTYPE : String(1);
  BUSIDOCNR : String(10);
  @RFCAbapType : 'N'
  BUSIITNR : String(6);
  @RFCAbapType : 'N'
  SCHED_LIN1 : String(4);
  EARL_DATE : Date;
  @RFCAbapType : 'N'
  MAINT_REQ : String(10);
  PREQ_NO : String(10);
  PO_TYPE : String(4);
  DOC_CAT : String(1);
  CONF_STAT : String(1);
  IR_IND : String(1);
  RETURNDATE : Date;
  DATE_TYPE : String(1);
  TP_DATE : Date;
  MS_DATE : Date;
  LOAD_DATE : Date;
  GI_DATE : Date;
  CORR_QTY : Decimal;
  REQ_DLV_BL : String(2);
  @RFCAbapType : 'N'
  GRP_DEFIN : String(3);
  RELEASTYP : String(1);
  @RFCAbapType : 'N'
  FORCAST_NR : String(10);
  COMMIT_QTY : Decimal;
  SIZE2 : Decimal;
  SIZE3 : Decimal;
  UNIT_MEAS : String(3);
  ISO_ROMEI : String(3);
  FORMULAKEY : String(2);
  SALESQTYNR : Decimal;
  SALESQTYDE : Decimal;
  AVAIL_CON : String(1);
  MOVE_TYPE : String(3);
  @RFCAbapType : 'N'
  PREQ_ITEM : String(5);
  LINTYP_EDI : String(1);
  ORDERID : String(12);
  PLANORDNR : String(10);
  BOMEXPL_NO : String(8);
  CUSTCHSTAT : String(17);
  GURANTEED : Double;
  MS_TIME : Time;
  TP_TIME : Time;
  LOAD_TIME : Time;
  GI_TIME : Time;
  ROUTESCHED : String(10);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  SCHED_LINE : String(4);
  REQ_DATE : Date;
  DATE_TYPE : String(1);
  REQ_TIME : Time;
  REQ_QTY : Decimal;
  REQ_DLV_BL : String(2);
  SCHED_TYPE : String(2);
  TP_DATE : Date;
  MS_DATE : Date;
  LOAD_DATE : Date;
  GI_DATE : Date;
  TP_TIME : Time;
  MS_TIME : Time;
  LOAD_TIME : Time;
  GI_TIME : Time;
  REFOBJTYPE : String(10);
  REFOBJKEY : String(70);
  REFLOGSYS : String(10);
  DLV_DATE : Date;
  DLV_TIME : Time;
  REL_TYPE : String(1);
  PLAN_SCHED_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1 {
  ADDR_NO : String(10);
  FORMOFADDR : String(20);
  NAME : String(40);
  NAME_2 : String(40);
  NAME_3 : String(40);
  NAME_4 : String(40);
  C_O_NAME : String(40);
  CITY : String(40);
  DISTRICT : String(40);
  CITY_NO : String(12);
  POSTL_COD1 : String(10);
  POSTL_COD2 : String(10);
  POSTL_COD3 : String(10);
  PO_BOX : String(10);
  PO_BOX_CIT : String(40);
  DELIV_DIS : String(15);
  STREET : String(40);
  STREET_NO : String(12);
  STR_ABBR : String(2);
  HOUSE_NO : String(10);
  STR_SUPPL1 : String(40);
  STR_SUPPL2 : String(40);
  LOCATION : String(40);
  BUILDING : String(10);
  FLOOR : String(10);
  ROOM_NO : String(10);
  COUNTRY : String(3);
  LANGU : String(1);
  REGION : String(3);
  SORT1 : String(20);
  SORT2 : String(20);
  TIME_ZONE : String(6);
  TAXJURCODE : String(15);
  ADR_NOTES : String(50);
  COMM_TYPE : String(3);
  TEL1_NUMBR : String(30);
  TEL1_EXT : String(10);
  FAX_NUMBER : String(30);
  FAX_EXTENS : String(10);
  STREET_LNG : String(60);
  DISTRCT_NO : String(8);
  CHCKSTATUS : String(1);
  PBOXCIT_NO : String(12);
  TRANSPZONE : String(10);
  HOUSE_NO2 : String(10);
  E_MAIL : String(241);
  STR_SUPPL3 : String(40);
  TITLE : String(30);
  COUNTRYISO : String(2);
  LANGU_ISO : String(2);
  BUILD_LONG : String(20);
  REGIOGROUP : String(8);
  HOME_CITY : String(40);
  HOMECITYNO : String(12);
  PCODE1_EXT : String(10);
  PCODE2_EXT : String(10);
  PCODE3_EXT : String(10);
  PO_W_O_NO : String(1);
  PO_BOX_REG : String(3);
  POBOX_CTRY : String(3);
  PO_CTRYISO : String(2);
  HOMEPAGE : String(132);
  DONT_USE_S : String(4);
  DONT_USE_P : String(4);
  HOUSE_NO3 : String(10);
  LANGU_CR : String(1);
  LANGUCRISO : String(2);
  PO_BOX_LOBBY : String(40);
  DELI_SERV_TYPE : String(4);
  DELI_SERV_NUMBER : String(10);
  URI_TYPE : String(3);
  COUNTY_CODE : String(8);
  COUNTY : String(40);
  TOWNSHIP_CODE : String(8);
  TOWNSHIP : String(40);
  XPCPT : String(1);
};

type SAP_ABAP_BACKEND_RFC.BAPI_INQUIRY_CREATEFROMDATA2.ResultType {
  @RFCParameterType : 'Export'
  SALESDOCUMENT : String(10);
  @RFCParameterType : 'Table'
  EXTENSIONEX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;
  @RFCParameterType : 'Table'
  EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB;
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS;
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT;
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG;
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_REFINST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF;
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL;
  @RFCParameterType : 'Table'
  INQUIRY_CFGS_VK : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK;
  @RFCParameterType : 'Table'
  INQUIRY_CONDITIONS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND;
  @RFCParameterType : 'Table'
  INQUIRY_CONDITIONS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX;
  @RFCParameterType : 'Table'
  INQUIRY_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM;
  @RFCParameterType : 'Table'
  INQUIRY_ITEMS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX;
  @RFCParameterType : 'Table'
  INQUIRY_KEYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY;
  @RFCParameterType : 'Table'
  INQUIRY_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR;
  @RFCParameterType : 'Table'
  INQUIRY_SCHEDULES_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL;
  @RFCParameterType : 'Table'
  INQUIRY_SCHEDULES_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX;
  @RFCParameterType : 'Table'
  INQUIRY_TEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT;
  @RFCParameterType : 'Table'
  PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1;
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1 {
  REFOBJTYPE : String(10);
  REFOBJKEY : String(70);
  REFDOCTYPE : String(10);
  DOC_TYPE : String(4);
  COLLECT_NO : String(10);
  SALES_ORG : String(4);
  DISTR_CHAN : String(2);
  DIVISION : String(2);
  SALES_GRP : String(3);
  SALES_OFF : String(4);
  REQ_DATE_H : Date;
  DATE_TYPE : String(1);
  PURCH_DATE : Date;
  PO_METHOD : String(4);
  PO_SUPPLEM : String(4);
  REF_1 : String(12);
  NAME : String(35);
  TELEPHONE : String(16);
  PRICE_GRP : String(2);
  CUST_GROUP : String(2);
  SALES_DIST : String(6);
  PRICE_LIST : String(2);
  INCOTERMS1 : String(3);
  INCOTERMS2 : String(28);
  PMNTTRMS : String(4);
  DLV_BLOCK : String(2);
  BILL_BLOCK : String(2);
  ORD_REASON : String(3);
  COMPL_DLV : String(1);
  PRICE_DATE : Date;
  QT_VALID_F : Date;
  QT_VALID_T : Date;
  CT_VALID_F : Date;
  CT_VALID_T : Date;
  CUST_GRP1 : String(3);
  CUST_GRP2 : String(3);
  CUST_GRP3 : String(3);
  CUST_GRP4 : String(3);
  CUST_GRP5 : String(3);
  PURCH_NO_C : String(35);
  PURCH_NO_S : String(35);
  PO_DAT_S : Date;
  PO_METH_S : String(4);
  REF_1_S : String(12);
  SD_DOC_CAT : String(1);
  DOC_DATE : Date;
  WAR_DATE : Date;
  SHIP_COND : String(2);
  PP_SEARCH : String(40);
  DUN_COUNT : Decimal;
  DUN_DATE : Date;
  DLVSCHDUSE : String(3);
  PLDLVSTYP : String(1);
  REF_DOC : String(10);
  COMP_CDE_B : String(4);
  ALTTAX_CLS : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  REF_DOC_L : String(16);
  ASS_NUMBER : String(18);
  REFDOC_CAT : String(1);
  ORDCOMB_IN : String(1);
  BILL_SCHED : String(2);
  INVO_SCHED : String(2);
  MN_INVOICE : String(1);
  EXRATE_FI : Decimal;
  @RFCAbapType : 'N'
  ADD_VAL_DY : String(2);
  FIX_VAL_DY : Date;
  PYMT_METH : String(1);
  ACCNT_ASGN : String(2);
  EXCHG_RATE : Decimal;
  BILL_DATE : Date;
  SERV_DATE : Date;
  DUNN_KEY : String(1);
  DUNN_BLOCK : String(1);
  PMTGAR_PRO : String(6);
  DEPARTM_NO : String(4);
  REC_POINT : String(25);
  DOC_NUM_FI : String(10);
  CSTCNDGRP1 : String(2);
  CSTCNDGRP2 : String(2);
  CSTCNDGRP3 : String(2);
  CSTCNDGRP4 : String(2);
  CSTCNDGRP5 : String(2);
  DLV_TIME : String(3);
  CURRENCY : String(5);
  CURR_ISO : String(3);
  CREATED_BY : String(12);
  TAXDEP_CTY : String(3);
  TAXDST_CTY : String(3);
  EUTRI_DEAL : String(1);
  MAST_CONTR : String(10);
  REF_PROC : String(4);
  CHKPRTAUTH : String(1);
  CMLQTY_DAT : Date;
  VERSION : String(12);
  NOTIF_NO : String(12);
  WBS_ELEM : String(24);
  EXCH_RATE_FI_V : Decimal;
  EXCHG_RATE_V : Decimal;
  FKK_CONACCT : String(12);
  CAMPAIGN : Binary(16);
  DOC_CLASS : String(9);
  H_CURR : String(5);
  H_CURR_ISO : String(3);
  SHIP_TYPE : String(2);
  S_PROC_IND : String(4);
  REF_DOC_L_LONG : String(35);
  LINE_TIME : Time;
  CALC_MOTIVE : String(2);
  PSM_PSTNG_DATE : Date;
  TREASURY_ACC_SYMBOL : String(30);
  BUSINESS_EVENT_TCODE : String(10);
  MODIFICATION_ALLOWED : String(1);
  CANCELLATION_ALLOWED : String(1);
  PAYMENT_METHODS : String(10);
  BUSINESS_PARTNER_NO : String(6);
  REPORTING_FREQ : String(3);
  SEPA_MANDATE_ID : String(35);
  SD_DOC_CAT_LONG : String(4);
  REFDOC_CAT_LONG : String(4);
  INCOTERMSV : String(4);
  INCOTERMS2L : String(70);
  INCOTERMS3L : String(70);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1X {
  UPDATEFLAG : String(1);
  DOC_TYPE : String(1);
  COLLECT_NO : String(1);
  SALES_ORG : String(1);
  DISTR_CHAN : String(1);
  DIVISION : String(1);
  SALES_GRP : String(1);
  SALES_OFF : String(1);
  REQ_DATE_H : String(1);
  DATE_TYPE : String(1);
  PURCH_DATE : String(1);
  PO_METHOD : String(1);
  PO_SUPPLEM : String(1);
  REF_1 : String(1);
  NAME : String(1);
  TELEPHONE : String(1);
  PRICE_GRP : String(1);
  CUST_GROUP : String(1);
  SALES_DIST : String(1);
  PRICE_LIST : String(1);
  INCOTERMS1 : String(1);
  INCOTERMS2 : String(1);
  PMNTTRMS : String(1);
  DLV_BLOCK : String(1);
  BILL_BLOCK : String(1);
  ORD_REASON : String(1);
  COMPL_DLV : String(1);
  PRICE_DATE : String(1);
  QT_VALID_F : String(1);
  QT_VALID_T : String(1);
  CT_VALID_F : String(1);
  CT_VALID_T : String(1);
  CUST_GRP1 : String(1);
  CUST_GRP2 : String(1);
  CUST_GRP3 : String(1);
  CUST_GRP4 : String(1);
  CUST_GRP5 : String(1);
  PURCH_NO_C : String(1);
  PURCH_NO_S : String(1);
  PO_DAT_S : String(1);
  PO_METH_S : String(1);
  REF_1_S : String(1);
  SD_DOC_CAT : String(1);
  DOC_DATE : String(1);
  WAR_DATE : String(1);
  SHIP_COND : String(1);
  PP_SEARCH : String(1);
  DUN_COUNT : String(1);
  DUN_DATE : String(1);
  DLVSCHDUSE : String(1);
  PLDLVSTYP : String(1);
  REF_DOC : String(1);
  COMP_CDE_B : String(1);
  ALTTAX_CLS : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  REF_DOC_L : String(1);
  ASS_NUMBER : String(1);
  REFDOC_CAT : String(1);
  ORDCOMB_IN : String(1);
  BILL_SCHED : String(1);
  INVO_SCHED : String(1);
  MN_INVOICE : String(1);
  EXRATE_FI : String(1);
  ADD_VAL_DY : String(1);
  FIX_VAL_DY : String(1);
  PYMT_METH : String(1);
  ACCNT_ASGN : String(1);
  EXCHG_RATE : String(1);
  BILL_DATE : String(1);
  SERV_DATE : String(1);
  DUNN_KEY : String(1);
  DUNN_BLOCK : String(1);
  PROMOTION : String(1);
  PMTGAR_PRO : String(1);
  DEPARTM_NO : String(1);
  REC_POINT : String(1);
  POITM_NO_S : String(1);
  DOC_NUM_FI : String(1);
  CSTCNDGRP1 : String(1);
  CSTCNDGRP2 : String(1);
  CSTCNDGRP3 : String(1);
  CSTCNDGRP4 : String(1);
  CSTCNDGRP5 : String(1);
  DLV_TIME : String(1);
  CURRENCY : String(1);
  TAXDEP_CTY : String(1);
  TAXDST_CTY : String(1);
  EUTRI_DEAL : String(1);
  MAST_CONTR : String(1);
  REF_PROC : String(1);
  CHKPRTAUTH : String(1);
  CMLQTY_DAT : String(1);
  VERSION : String(1);
  NOTIF_NO : String(1);
  WBS_ELEM : String(1);
  EXCH_RATE_FI_V : String(1);
  EXCHG_RATE_V : String(1);
  FKK_CONACCT : String(1);
  CAMPAIGN : String(1);
  DOC_CLASS : String(1);
  H_CURR : String(1);
  SHIP_TYPE : String(1);
  S_PROC_IND : String(1);
  LINE_TIME : String(1);
  CALC_MOTIVE : String(1);
  PSM_PSTNG_DATE : String(1);
  TREASURY_ACC_SYMBOL : String(1);
  BUSINESS_EVENT_TCODE : String(1);
  MODIFICATION_ALLOWED : String(1);
  CANCELLATION_ALLOWED : String(1);
  PAYMENT_METHODS : String(1);
  BUSINESS_PARTNER_NO : String(1);
  REPORTING_FREQ : String(1);
  SEPA_MANDATE_ID : String(1);
  SD_DOC_CAT_LONG : String(1);
  REFDOC_CAT_LONG : String(1);
  INCOTERMSV : String(1);
  INCOTERMS2L : String(1);
  INCOTERMS3L : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDLS {
  PRICING : String(1);
  ATP_WRKMOD : String(1);
  SCHEDULING : String(1);
  NOSTRUCTURE : String(1);
  COND_HANDL : String(1);
  ADDR_CHECK : String(1);
  FSH_COPY_REF : String(1);
  NO_CREDIT_CHECK : String(1);
  NO_ATP : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPI_SENDER {
  LOG_SYSTEM : String(10);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF {
  POSEX : String(6);
  CONFIG_ID : String(6);
  INST_ID : String(8);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK {
  CONFIG_ID : String(6);
  INST_ID : String(8);
  VKEY : String(26);
  FACTOR : String(15);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  COND_ST_NO : String(3);
  @RFCAbapType : 'N'
  COND_COUNT : String(2);
  COND_TYPE : String(4);
  UPDATEFLAG : String(1);
  COND_VALUE : String(1);
  CURRENCY : String(1);
  COND_UNIT : String(1);
  COND_P_UNT : String(1);
  VARCOND : String(26);
  @RFCAbapType : 'N'
  COND_COUNT_LONG : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  HG_LV_ITEM : String(6);
  PO_ITM_NO : String(6);
  MATERIAL : String(18);
  @RFCAbapType : 'N'
  ALT_TO_ITM : String(6);
  CUST_MAT22 : String(22);
  BATCH : String(10);
  @RFCAbapType : 'N'
  DLV_GROUP : String(3);
  PART_DLV : String(1);
  REASON_REJ : String(2);
  BILL_BLOCK : String(2);
  BILL_DATE : Date;
  PLANT : String(4);
  STORE_LOC : String(4);
  TARGET_QTY : Decimal;
  TARGET_QU : String(3);
  T_UNIT_ISO : String(3);
  ITEM_CATEG : String(4);
  SHORT_TEXT : String(40);
  PRC_GROUP1 : String(3);
  PRC_GROUP2 : String(3);
  PRC_GROUP3 : String(3);
  PRC_GROUP4 : String(3);
  PRC_GROUP5 : String(3);
  PROD_HIERA : String(18);
  MATL_GROUP : String(9);
  PURCH_NO_C : String(35);
  PURCH_DATE : Date;
  PO_METHOD : String(4);
  REF_1 : String(12);
  PURCH_NO_S : String(35);
  PO_DAT_S : Date;
  PO_METH_S : String(4);
  REF_1_S : String(12);
  POITM_NO_S : String(6);
  PRICE_GRP : String(2);
  CUST_GROUP : String(2);
  SALES_DIST : String(6);
  PRICE_LIST : String(2);
  INCOTERMS1 : String(3);
  INCOTERMS2 : String(28);
  ORDCOMP_IN : String(1);
  BILL_SCHED : String(2);
  INVO_SCHED : String(2);
  MN_INVOICE : String(1);
  EX_RATE_FI : Decimal;
  @RFCAbapType : 'N'
  ADD_VAL_DY : String(2);
  FIX_VAL_DY : Date;
  PMNTTRMS : String(4);
  PYMT_METH : String(1);
  ACCNT_ASGN : String(2);
  EXCHG_RATE : Decimal;
  PRICE_DATE : Date;
  SERV_DATE : Date;
  DUNN_KEY : String(1);
  DUNN_BLOCK : String(1);
  PROMOTION : String(10);
  PMTGAR_PRO : String(6);
  DOC_NUM_FI : String(10);
  DEPARTM_NO : String(4);
  REC_POINT : String(25);
  CSTCNDGRP1 : String(2);
  CSTCNDGRP2 : String(2);
  CSTCNDGRP3 : String(2);
  CSTCNDGRP4 : String(2);
  CSTCNDGRP5 : String(2);
  DLV_TIME : String(3);
  SALES_UNIT : String(3);
  S_UNIT_ISO : String(3);
  TRG_QTY_NO : Decimal;
  TRGQTY_DEN : Decimal;
  RNDDLV_QTY : Decimal;
  MAXDEVAMNT : Decimal;
  MAXDEVPER : Decimal;
  MAXDEV_DAY : Decimal;
  USAGE_IND : String(3);
  FIXED_QUAN : String(1);
  UNLMT_DLV : String(1);
  OVERDLVTOL : Decimal;
  UNDDLV_TOL : Decimal;
  DIVISION : String(2);
  SALQTYNUM : Decimal;
  SALQTYDEN : Decimal;
  GROSS_WGHT : Decimal;
  NET_WEIGHT : Decimal;
  UNTOF_WGHT : String(3);
  UNOF_WTISO : String(3);
  VOLUME : Decimal;
  VOLUNIT : String(3);
  VOLUNITISO : String(3);
  @RFCAbapType : 'N'
  DLV_PRIO : String(2);
  SHIP_POINT : String(4);
  ROUTE : String(6);
  CREATED_BY : String(12);
  TAX_CLASS1 : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  MAT_PR_GRP : String(2);
  VAL_TYPE : String(10);
  FIXDAT_QTY : String(1);
  BOMEXPL_NO : String(8);
  RESANALKEY : String(6);
  REQMTS_TYP : String(4);
  NO_GR_POST : String(1);
  BUS_TRANST : String(2);
  OVERHD_KEY : String(6);
  CSTG_SHEET : String(6);
  MATFRGTGRP : String(8);
  PLDLVSHDIN : String(4);
  SEQ_NO : String(35);
  BIL_FORM : String(2);
  DLI_PROFIL : String(8);
  REV_TYPE : String(1);
  BEGDEM_PER : String(1);
  PR_REF_MAT : String(18);
  REFOBJTYPE : String(10);
  REFOBJKEY : String(70);
  REFLOGSYS : String(10);
  @RFCAbapType : 'N'
  ORDER_PROB : String(3);
  MAX_PL_DLV : Decimal;
  CFOP_CODE : String(5);
  TAXLAWICMS : String(3);
  TAXLAWIPI : String(3);
  SD_TAXCODE : String(2);
  ASSORT_MOD : String(18);
  COMP_QUANT : Decimal;
  TARGET_VAL : Decimal;
  CURRENCY : String(5);
  CURR_ISO : String(3);
  PROFIT_CTR : String(10);
  ORDERID : String(12);
  WBS_ELEM : String(24);
  DEPREC_PER : Decimal;
  REF_DOC : String(10);
  @RFCAbapType : 'N'
  REF_DOC_IT : String(6);
  REF_DOC_CA : String(1);
  CUST_MAT35 : String(35);
  EXCH_RATE_FI_V : Decimal;
  EXCHG_RATE_V : Decimal;
  ITEMGUID_ATP : String(22);
  VAL_CONTR : String(10);
  @RFCAbapType : 'N'
  VAL_CON_I : String(6);
  CONFIG_ID : String(6);
  INST_ID : String(8);
  MAT_EXT : String(40);
  MAT_GUID : String(32);
  MAT_VERS : String(10);
  P_MAT_EXT : String(40);
  P_MAT_GUID : String(32);
  P_MAT_VERS : String(10);
  FUNC_AREA : String(4);
  ALTERN_BOM : String(2);
  FKK_CONACCT : String(12);
  EAN_UPC : String(18);
  PRODCAT : String(10);
  SHIP_TYPE : String(2);
  S_PROC_IND : String(4);
  FUNC_AREA_LONG : String(16);
  BILL_REL : String(1);
  VW_UEPOS : String(1);
  CAMPAIGN : Binary(16);
  DLVSCHDUSE : String(3);
  CFOP_LONG : String(10);
  SELECTION : String(32);
  MAT_ENTRD : String(18);
  LOG_SYSTEM_OWN : String(10);
  ITM_TYPE_USAGE : String(4);
  TAXLAWISS : String(3);
  MAT_ENTRD_EXTERNAL : String(40);
  MAT_ENTRD_GUID : String(32);
  MAT_ENTRD_VERSION : String(10);
  LOC_TAXCAT : String(2);
  LOC_ZEROVAT : String(1);
  LOC_ACTCODE : String(2);
  LOC_DISTTYPE : String(2);
  LOC_TXRELCLAS : String(10);
  CALC_MOTIVE : String(2);
  COMPREAS : String(4);
  FUND : String(10);
  FUNDS_CTR : String(16);
  CMMT_ITEM : String(24);
  GRANT_NBR : String(20);
  BUDGET_PERIOD : String(10);
  TAXLAWCOFINS : String(3);
  TAXLAWPIS : String(3);
  TREASURY_ACC_SYMBOL : String(30);
  BUSINESS_EVENT_TCODE : String(10);
  MODIFICATION_ALLOWED : String(1);
  CANCELLATION_ALLOWED : String(1);
  PAYMENT_METHODS : String(10);
  BUSINESS_PARTNER_NO : String(6);
  REPORTING_FREQ : String(3);
  SEPA_MANDATE_ID : String(35);
  REQ_SEGMENT : String(16);
  TP_SUBLEVL : String(2);
  TP_AGENCID : String(3);
  TP_ALTRAID : String(3);
  @RFCAbapType : 'N'
  TP_BEGPER : String(4);
  @RFCAbapType : 'N'
  TP_ENDPER : String(4);
  TP_AVTYPE : String(1);
  TP_MAIN_ACCT : String(4);
  TP_SUB_ACCT : String(3);
  TP_BETC : String(10);
  REVACC_REFID : String(30);
  REVACC_REFTYPE : String(3);
  REF_DOC_CA_LONG : String(4);
  INCOTERMSV : String(4);
  INCOTERMS2L : String(70);
  INCOTERMS3L : String(70);
  MATERIAL_LONG : String(40);
  PR_REF_MAT_LONG : String(40);
  MAT_ENTRD_LONG : String(40);
  PO_QUAN : Decimal;
  PO_UNIT : String(3);
  REQ_SEG_LONG : String(40);
  TXS_BUSINESS_TRANSACTION : String(4);
  TXS_MATERIAL_USAGE : String(1);
  TXS_USAGE_PURPOSE : String(25);
  SERVICE_DOC_TYPE : String(4);
  SERVICE_DOC_ID : String(10);
  @RFCAbapType : 'N'
  SERVICE_DOC_ITEM_ID : String(6);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  UPDATEFLAG : String(1);
  HG_LV_ITEM : String(1);
  PO_ITM_NO : String(1);
  MATERIAL : String(1);
  ALT_TO_ITM : String(1);
  CUST_MAT22 : String(1);
  BATCH : String(1);
  DLV_GROUP : String(1);
  PART_DLV : String(1);
  REASON_REJ : String(1);
  BILL_BLOCK : String(1);
  BILL_DATE : String(1);
  PLANT : String(1);
  STORE_LOC : String(1);
  TARGET_QTY : String(1);
  TARGET_QU : String(1);
  T_UNIT_ISO : String(1);
  ITEM_CATEG : String(1);
  SHORT_TEXT : String(1);
  PRC_GROUP1 : String(1);
  PRC_GROUP2 : String(1);
  PRC_GROUP3 : String(1);
  PRC_GROUP4 : String(1);
  PRC_GROUP5 : String(1);
  PROD_HIERA : String(1);
  MATL_GROUP : String(1);
  PURCH_NO_C : String(1);
  PURCH_DATE : String(1);
  PO_METHOD : String(1);
  REF_1 : String(1);
  PURCH_NO_S : String(1);
  PO_DAT_S : String(1);
  PO_METH_S : String(1);
  REF_1_S : String(1);
  POITM_NO_S : String(1);
  PRICE_GRP : String(1);
  CUST_GROUP : String(1);
  SALES_DIST : String(1);
  PRICE_LIST : String(1);
  INCOTERMS1 : String(1);
  INCOTERMS2 : String(1);
  ORDCOMP_IN : String(1);
  BILL_SCHED : String(1);
  INVO_SCHED : String(1);
  MN_INVOICE : String(1);
  EX_RATE_FI : String(1);
  ADD_VAL_DY : String(1);
  FIX_VAL_DY : String(1);
  PMNTTRMS : String(1);
  PYMT_METH : String(1);
  ACCNT_ASGN : String(1);
  EXCHG_RATE : String(1);
  PRICE_DATE : String(1);
  SERV_DATE : String(1);
  DUNN_KEY : String(1);
  DUNN_BLOCK : String(1);
  PROMOTION : String(1);
  PMTGAR_PRO : String(1);
  DOC_NUM_FI : String(1);
  DEPARTM_NO : String(1);
  REC_POINT : String(1);
  CSTCNDGRP1 : String(1);
  CSTCNDGRP2 : String(1);
  CSTCNDGRP3 : String(1);
  CSTCNDGRP4 : String(1);
  CSTCNDGRP5 : String(1);
  DLV_TIME : String(1);
  SALES_UNIT : String(1);
  TRG_QTY_NO : String(1);
  TRGQTY_DEN : String(1);
  RNDDLV_QTY : String(1);
  MAXDEVAMNT : String(1);
  MAXDEVPER : String(1);
  MAXDEV_DAY : String(1);
  USAGE_IND : String(1);
  FIXED_QUAN : String(1);
  UNLMT_DLV : String(1);
  OVERDLVTOL : String(1);
  UNDDLV_TOL : String(1);
  DIVISION : String(1);
  SALQTYNUM : String(1);
  SALQTYDEN : String(1);
  GROSS_WGHT : String(1);
  NET_WEIGHT : String(1);
  UNTOF_WGHT : String(1);
  VOLUME : String(1);
  VOLUNIT : String(1);
  DLV_PRIO : String(1);
  SHIP_POINT : String(1);
  ROUTE : String(1);
  TAX_CLASS1 : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  MAT_PR_GRP : String(1);
  VAL_TYPE : String(1);
  FIXDAT_QTY : String(1);
  BOMEXPL_NO : String(1);
  RESANALKEY : String(1);
  REQMTS_TYP : String(1);
  NO_GR_POST : String(1);
  BUS_TRANST : String(1);
  OVERHD_KEY : String(1);
  CSTG_SHEET : String(1);
  MATFRGTGRP : String(1);
  PLDLVSHDIN : String(1);
  SEQ_NO : String(1);
  BIL_FORM : String(1);
  DLI_PROFIL : String(1);
  REV_TYPE : String(1);
  BEGDEM_PER : String(1);
  PR_REF_MAT : String(1);
  REFOBJTYPE : String(1);
  REFOBJKEY : String(1);
  REFLOGSYS : String(1);
  ORDER_PROB : String(1);
  MAX_PL_DLV : String(1);
  CFOP_CODE : String(1);
  TAXLAWICMS : String(1);
  TAXLAWIPI : String(1);
  SD_TAXCODE : String(1);
  ASSORT_MOD : String(1);
  COMP_QUANT : String(1);
  TARGET_VAL : String(1);
  PROFIT_CTR : String(1);
  ORDERID : String(1);
  WBS_ELEM : String(1);
  DEPREC_PER : String(1);
  REF_DOC : String(1);
  REF_DOC_IT : String(1);
  REF_DOC_CA : String(1);
  CUST_MAT35 : String(1);
  EXCH_RATE_FI_V : String(1);
  EXCHG_RATE_V : String(1);
  ITEMGUID_ATP : String(1);
  VAL_CONTR : String(1);
  VAL_CON_I : String(1);
  CONFIG_ID : String(1);
  INST_ID : String(1);
  MAT_EXT : String(1);
  MAT_GUID : String(1);
  MAT_VERS : String(1);
  P_MAT_EXT : String(1);
  P_MAT_GUID : String(1);
  P_MAT_VERS : String(1);
  FUNC_AREA : String(1);
  ALTERN_BOM : String(1);
  FKK_CONACCT : String(1);
  EAN_UPC : String(1);
  PRODCAT : String(1);
  SHIP_TYPE : String(1);
  S_PROC_IND : String(1);
  BILL_REL : String(1);
  VW_UEPOS : String(1);
  CAMPAIGN : String(1);
  DLVSCHDUSE : String(1);
  SELECTION : String(1);
  MAT_ENTRD : String(1);
  LOG_SYSTEM_OWN : String(1);
  ITM_TYPE_USAGE : String(1);
  MAT_ENTRD_EXTERNAL : String(1);
  MAT_ENTRD_GUID : String(1);
  MAT_ENTRD_VERSION : String(1);
  LOC_TAXCAT : String(1);
  LOC_ZEROVAT : String(1);
  LOC_ACTCODE : String(1);
  LOC_DISTTYPE : String(1);
  LOC_TXRELCLAS : String(1);
  CALC_MOTIVE : String(1);
  FUND : String(1);
  FUNDS_CTR : String(1);
  CMMT_ITEM : String(1);
  GRANT_NBR : String(1);
  BUDGET_PERIOD : String(1);
  TAXLAWISS : String(1);
  TAXLAWCOFINS : String(1);
  TAXLAWPIS : String(1);
  TREASURY_ACC_SYMBOL : String(1);
  BUSINESS_EVENT_TCODE : String(1);
  MODIFICATION_ALLOWED : String(1);
  CANCELLATION_ALLOWED : String(1);
  PAYMENT_METHODS : String(1);
  BUSINESS_PARTNER_NO : String(1);
  REPORTING_FREQ : String(1);
  CFOP_LONG : String(1);
  SEPA_MANDATE_ID : String(1);
  REQ_SEGMENT : String(1);
  TP_SUBLEVL : String(1);
  TP_AGENCID : String(1);
  TP_ALTRAID : String(1);
  TP_BEGPER : String(1);
  TP_ENDPER : String(1);
  TP_AVTYPE : String(1);
  TP_MAIN_ACCT : String(1);
  TP_SUB_ACCT : String(1);
  TP_BETC : String(1);
  REVACC_REFID : String(1);
  REVACC_REFTYPE : String(1);
  REF_DOC_CA_LONG : String(1);
  INCOTERMSV : String(1);
  INCOTERMS2L : String(1);
  INCOTERMS3L : String(1);
  MATERIAL_LONG : String(1);
  PR_REF_MAT_LONG : String(1);
  MAT_ENTRD_LONG : String(1);
  PO_QUAN : String(1);
  PO_UNIT : String(1);
  REQ_SEG_LONG : String(1);
  TXS_BUSINESS_TRANSACTION : String(1);
  TXS_MATERIAL_USAGE : String(1);
  TXS_USAGE_PURPOSE : String(1);
  SERVICE_DOC_TYPE : String(1);
  SERVICE_DOC_ID : String(1);
  SERVICE_DOC_ITEM_ID : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY {
  REFOBJTYP : String(10);
  REFOBJECT : String(32);
  REFOBJKEY : String(70);
  REFLOGSYS : String(10);
  DOC_NUMBER : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  SCHED_LIN : String(4);
  COND_NO : String(10);
  @RFCAbapType : 'N'
  CONDITEMNO : String(6);
  @RFCAbapType : 'N'
  COND_ST_NO : String(3);
  @RFCAbapType : 'N'
  COND_COUNT : String(2);
  COND_TYPE : String(4);
  STATUS : String(1);
  @RFCAbapType : 'N'
  TINDEX : String(6);
  ADDRESS : String(10);
  @RFCAbapType : 'N'
  ABRLI : String(4);
  ABART : String(1);
  @RFCAbapType : 'N'
  COND_COUNT_LONG : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR {
  PARTN_ROLE : String(2);
  PARTN_NUMB : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  TITLE : String(15);
  NAME : String(35);
  NAME_2 : String(35);
  NAME_3 : String(35);
  NAME_4 : String(35);
  STREET : String(35);
  COUNTRY : String(3);
  COUNTR_ISO : String(2);
  POSTL_CODE : String(10);
  POBX_PCD : String(10);
  POBX_CTY : String(35);
  CITY : String(35);
  DISTRICT : String(35);
  REGION : String(3);
  PO_BOX : String(10);
  TELEPHONE : String(16);
  TELEPHONE2 : String(16);
  TELEBOX : String(15);
  FAX_NUMBER : String(31);
  TELETEX_NO : String(30);
  TELEX_NO : String(30);
  LANGU : String(1);
  LANGU_ISO : String(2);
  UNLOAD_PT : String(25);
  TRANSPZONE : String(10);
  TAXJURCODE : String(15);
  ADDRESS : String(10);
  PRIV_ADDR : String(10);
  ADDR_TYPE : String(1);
  ADDR_ORIG : String(1);
  ADDR_LINK : String(10);
  REFOBJTYPE : String(10);
  REFOBJKEY : String(70);
  REFLOGSYS : String(10);
  VAT_REG_NO : String(20);
  ADDRESSGUID : String(32);
  EXTERNALADDRESSNUMBER : String(20);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  SCHED_LINE : String(4);
  UPDATEFLAG : String(1);
  REQ_DATE : String(1);
  DATE_TYPE : String(1);
  REQ_TIME : String(1);
  REQ_QTY : String(1);
  REQ_DLV_BL : String(1);
  SCHED_TYPE : String(1);
  TP_DATE : String(1);
  MS_DATE : String(1);
  LOAD_DATE : String(1);
  GI_DATE : String(1);
  TP_TIME : String(1);
  MS_TIME : String(1);
  LOAD_TIME : String(1);
  GI_TIME : String(1);
  REFOBJTYPE : String(10);
  REFOBJKEY : String(70);
  DLV_DATE : String(1);
  DLV_TIME : String(1);
  REL_TYPE : String(1);
  PLAN_SCHED_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT {
  DOC_NUMBER : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  TEXT_ID : String(4);
  LANGU : String(1);
  LANGU_ISO : String(2);
  FORMAT_COL : String(2);
  TEXT_LINE : String(132);
  FUNCTION : String(3);
};

type SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2.ResultType {
  @RFCParameterType : 'Export'
  SALESDOCUMENT : String(10);
  @RFCParameterType : 'Table'
  EXTENSIONEX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;
  @RFCParameterType : 'Table'
  EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;
  @RFCParameterType : 'Table'
  ORDER_CCARD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD;
  @RFCParameterType : 'Table'
  ORDER_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB;
  @RFCParameterType : 'Table'
  ORDER_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS;
  @RFCParameterType : 'Table'
  ORDER_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT;
  @RFCParameterType : 'Table'
  ORDER_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG;
  @RFCParameterType : 'Table'
  ORDER_CFGS_REFINST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF;
  @RFCParameterType : 'Table'
  ORDER_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL;
  @RFCParameterType : 'Table'
  ORDER_CFGS_VK : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK;
  @RFCParameterType : 'Table'
  ORDER_CONDITIONS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND;
  @RFCParameterType : 'Table'
  ORDER_CONDITIONS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX;
  @RFCParameterType : 'Table'
  ORDER_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM;
  @RFCParameterType : 'Table'
  ORDER_ITEMS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX;
  @RFCParameterType : 'Table'
  ORDER_KEYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY;
  @RFCParameterType : 'Table'
  ORDER_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR;
  @RFCParameterType : 'Table'
  ORDER_SCHEDULES_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL;
  @RFCParameterType : 'Table'
  ORDER_SCHEDULES_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX;
  @RFCParameterType : 'Table'
  ORDER_TEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT;
  @RFCParameterType : 'Table'
  PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1;
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
};

type SAP_ABAP_BACKEND_RFC.BAPI_QUOTATION_GETDETAILBOS.ResultType {
  @RFCParameterType : 'Export'
  QUOTATIONHEADER : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD;
  @RFCParameterType : 'Table'
  EXTENSIONOUT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;
  @RFCParameterType : 'Table'
  QUOTATIONADDRESS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCOAD;
  @RFCParameterType : 'Table'
  QUOTATIONBILLINGDATES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBPLD;
  @RFCParameterType : 'Table'
  QUOTATIONBILLINGPLANS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBPL;
  @RFCParameterType : 'Table'
  QUOTATIONBUSINESS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBUSI;
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUBLBS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLBM;
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUCFGS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFGM;
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUINS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINSM;
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUPRTS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRTM;
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUREFS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREFM;
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUVALS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVALM;
  @RFCParameterType : 'Table'
  QUOTATIONCFGSCUVKS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVKM;
  @RFCParameterType : 'Table'
  QUOTATIONCONDHEAD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDHD;
  @RFCParameterType : 'Table'
  QUOTATIONCONDITEM : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDIT;
  @RFCParameterType : 'Table'
  QUOTATIONCONDITIONS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCOND;
  @RFCParameterType : 'Table'
  QUOTATIONCONDQTYSCALE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDQS;
  @RFCParameterType : 'Table'
  QUOTATIONCONDVALSCALE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDVS;
  @RFCParameterType : 'Table'
  QUOTATIONCONTRACTS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCNTR;
  @RFCParameterType : 'Table'
  QUOTATIONCREDITCARDS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARDM;
  @RFCParameterType : 'Table'
  QUOTATIONFLOWS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDFLOW;
  @RFCParameterType : 'Table'
  QUOTATIONITEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITBOS;
  @RFCParameterType : 'Table'
  QUOTATIONPARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDPART;
  @RFCParameterType : 'Table'
  QUOTATIONSCHEDULELINES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU;
  @RFCParameterType : 'Table'
  QUOTATIONSERVICES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDESLLBOS;
  @RFCParameterType : 'Table'
  QUOTATIONSERVICESCOND : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIBOSCD;
  @RFCParameterType : 'Table'
  QUOTATIONSERVICESCOST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIBOSCOST;
  @RFCParameterType : 'Table'
  QUOTATIONSERVICESTEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIESLLTX;
  @RFCParameterType : 'Table'
  QUOTATIONSTATUSHEADERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHDST;
  @RFCParameterType : 'Table'
  QUOTATIONSTATUSITEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITST;
  @RFCParameterType : 'Table'
  QUOTATIONTEXTHEADERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEHD;
  @RFCParameterType : 'Table'
  QUOTATIONTEXTLINES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPITEXTLI;
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD {
  OPERATION : String(3);
  DOC_NUMBER : String(10);
  REC_DATE : Date;
  REC_TIME : Time;
  CREATED_BY : String(12);
  QT_VALID_F : Date;
  QT_VALID_T : Date;
  DOC_DATE : Date;
  SD_DOC_CAT : String(1);
  TRAN_GROUP : String(1);
  DOC_TYPE : String(4);
  ORD_REASON : String(3);
  WAR_DATE : Date;
  SD_COL_NUM : String(10);
  DLV_BLOCK : String(2);
  BILL_BLOCK : String(2);
  NET_VAL_HD : Decimal;
  CURRENCY : String(5);
  CURREN_ISO : String(3);
  SALES_ORG : String(4);
  DISTR_CHAN : String(2);
  DIVISION : String(2);
  SALES_GRP : String(3);
  SALES_OFF : String(4);
  BUS_AREA : String(4);
  CT_AREA : String(4);
  CT_VALID_F : Date;
  CT_VALID_T : Date;
  CONDITIONS : String(10);
  REQ_DATE_H : Date;
  DATE_TYPE : String(1);
  COMPL_DLV : String(1);
  DOC_CLASS : String(9);
  DOC_INDIC : String(1);
  SD_PRIC_PR : String(6);
  SHIP_COND : String(2);
  ORDBILLTYP : String(4);
  @RFCAbapType : 'N'
  ORD_PROBAB : String(3);
  SEAR_PRPR : String(40);
  PURCH_NO : String(20);
  PO_METHOD : String(4);
  PURCH_DATE : Date;
  PO_SUPPLEM : String(4);
  REF_1 : String(12);
  ORDERER_NA : String(35);
  TELEPHONE : String(16);
  DUN_COUNT : Decimal;
  DUN_DATE : Date;
  SOLD_TO : String(10);
  COSTCENTER : String(10);
  UPDATE_GRP : String(6);
  STAT_CURR : String(5);
  ISOSTATCUR : String(3);
  CH_ON : Date;
  CUST_GRP1 : String(3);
  CUST_GRP2 : String(3);
  CUST_GRP3 : String(3);
  CUST_GRP4 : String(3);
  CUST_GRP5 : String(3);
  AGREE_COND : String(10);
  CO_AREA : String(4);
  @RFCAbapType : 'N'
  WBS_ELEM : String(8);
  EXCHG_RATE : String(4);
  C_CTR_AREA : String(4);
  CRED_ACCNT : String(10);
  CRED_GROUP : String(4);
  REPR_GROUP : String(3);
  RISK_CATEG : String(3);
  CURR_CRED : String(5);
  ISOCURRCRE : String(3);
  REL_DAT_DD : Date;
  NEXT_CHDAT : Date;
  NEXT_DATE : Date;
  REL_CREDIT : Decimal;
  HI_TYPE_PR : String(1);
  DLVSCHEDUS : String(3);
  PLAN_DLV : String(1);
  REF_DOC : String(10);
  OB_JNR_HD : String(22);
  COMP_CODE : String(4);
  ALT_TAX_CL : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  REF_DOC_L : String(16);
  ASS_NUMBER : String(18);
  DOC_CAT_SD : String(1);
  KALSM_CH : String(6);
  @RFCAbapType : 'N'
  ACC_PERIOD : String(2);
  ORDERID : String(12);
  NOTIF_NO : String(12);
  MASTER_CON : String(10);
  REF_PROC : String(4);
  CHECK_PART : String(1);
  PICK_UP_DA : Date;
  PICK_UP_T1 : Time;
  PICK_UP_T2 : Time;
  NUM_PAY_CA : String(10);
  LINE_TIME : Time;
  TAX_DEST_CT : String(3);
  ISOTAXDEST : String(2);
  TAX_DEPART : String(3);
  ISOTAXDEPA : String(2);
  EU_TRIANG : String(1);
  MAST_CONTR : String(1);
  CML_QTY_DA : Date;
  MS_DATE : Date;
  VERSION : String(12);
  REF_DOC_L_LONG : String(35);
  CRM_GUID : String(70);
  SD_DOC_CAT_LONG : String(4);
  DOC_CAT_SD_LONG : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCOAD {
  OPERATION : String(3);
  DOC_NUMBER : String(10);
  ADDRESS : String(10);
  FORMOFADDR : String(15);
  NAME : String(35);
  NAME_2 : String(35);
  NAME_3 : String(35);
  NAME_4 : String(35);
  STREET : String(35);
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  POSTL_CODE : String(10);
  POBX_PCD : String(10);
  POBX_CTY : String(35);
  CITY : String(35);
  DISTRICT : String(35);
  REGION : String(3);
  CITY_CODE : String(4);
  COUNTY_CDE : String(3);
  PO_BOX : String(10);
  TELEPHONE : String(16);
  TELEPHONE2 : String(16);
  TELEBOX : String(15);
  FAX_NUMBER : String(31);
  TELETEX : String(30);
  TELEX : String(30);
  LANGU : String(1);
  LANGU_ISO : String(2);
  TRANSPZONE : String(10);
  @RFCAbapType : 'N'
  HOUSE_NO : String(6);
  GENDER : String(1);
  NAME_LIST : String(35);
  TAXJURCODE : String(15);
  PERS_NO : String(10);
  ADDR_TYPE : String(1);
  NRELSTAT : String(1);
  INDIUPDATE : String(1);
  STREETNA : String(35);
  HOUSE_NO_LONG : String(10);
  E_MAIL : String(241);
  STREET_H_N : String(35);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBPLD {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  BILL_PLAN : String(10);
  @RFCAbapType : 'N'
  BILL_PLANI : String(6);
  DATETYPE : String(2);
  DATEDESCRI : String(4);
  SETTLEDATE : Date;
  IDADOPTBIL : String(1);
  RULEBILLPL : String(1);
  INVOICEPER : Decimal;
  CURRENCKEY : String(5);
  CURRENCISO : String(3);
  EXCHANRATE : Decimal;
  VALONDATE : Decimal;
  BILLBLOCK : String(2);
  ORDBILLTYP : String(4);
  STATBILLPL : String(1);
  RULEORINEX : String(2);
  @RFCAbapType : 'N'
  LENSTANPER : String(3);
  @RFCAbapType : 'N'
  MILESTONNO : String(12);
  MILESTONE : String(5);
  PMNTTRMS : String(4);
  PAYER : String(10);
  TAX_CLASS1 : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  @RFCAbapType : 'N'
  ADD_VAL_DY : String(2);
  FIX_VAL_DY : Date;
  SETTLEDAT : Date;
  PROCASMANU : String(1);
  CALDEFDAYS : String(2);
  BILL_DATE : Date;
  NET_VALUE : Decimal;
  NET_PRICE : Decimal;
  COST_DOC_C : Decimal;
  SUBTOT_PP1 : Decimal;
  SUBTOT_PP2 : Decimal;
  SUBTOT_PP3 : Decimal;
  SUBTOT_PP4 : Decimal;
  SUBTOT_PP5 : Decimal;
  SUBTOT_PP6 : Decimal;
  CREDPRICIT : Decimal;
  AMOUNTELIG : Decimal;
  REBATEBAS : Decimal;
  CURRENCY : String(5);
  CURREN_ISO : String(3);
  PRICE_OK : String(1);
  MEANSOFPAY : String(1);
  CREDITPRED : Double;
  HILEVPAYNO : String(10);
  @RFCAbapType : 'N'
  HILEVITBIL : String(6);
  EXCHRATEFI : Decimal;
  ACCOUNTNO : String(10);
  INDICORDAT : String(1);
  ORIGBILDAT : Date;
  EXCHANRATE_V : Decimal;
  EXCHRATEFI_V : Decimal;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBPL {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  BILL_PLAN : String(10);
  BILLPLATYP : String(1);
  B_INPLATYP : String(2);
  SORT_FLD : String(10);
  BILLSTADAT : Date;
  BILLENDDAT : Date;
  RULEDETHOR : String(2);
  RULEORISTA : String(2);
  RULEORIEND : String(2);
  RULEORINEX : String(2);
  @RFCAbapType : 'N'
  LENSTANPER : String(3);
  STANBILLNO : String(10);
  DATESFROM : Date;
  BILLCREAIA : String(1);
  RULEDATFRO : String(2);
  RULEDETBIL : String(2);
  CALDEFDAYS : String(2);
  DATESTO : Date;
  RULDATESTO : String(2);
  @RFCAbapType : 'N'
  ROUTING_NO : String(10);
  @RFCAbapType : 'N'
  CO_APLZL : String(8);
  @RFCAbapType : 'N'
  RESERV_NO : String(10);
  @RFCAbapType : 'N'
  RES_ITEM : String(4);
  PO_NUMBER : String(10);
  @RFCAbapType : 'N'
  ITUNLIMIT : String(6);
  PAYCARDS1 : String(1);
  PAYCARDS2 : String(1);
  PAYCARDS3 : String(1);
  PAYCARDS4 : String(1);
  PAYCARDS5 : String(1);
  @RFCAbapType : 'N'
  INTPROJNO : String(8);
  AUTOCREATE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBUSI {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  PRICE_GRP : String(2);
  CUST_GROUP : String(2);
  SALES_DIST : String(6);
  PRICE_LIST : String(2);
  INCOTERMS1 : String(3);
  INCOTERMS2 : String(28);
  ORDCOMBIND : String(1);
  BILL_SCHED : String(2);
  INVO_SCHED : String(2);
  MN_INVOICE : String(1);
  EXCHRATEFI : Decimal;
  @RFCAbapType : 'N'
  ADD_VAL_DY : String(2);
  FIX_VAL_DY : Date;
  PMNTTRMS : String(4);
  PAYMETHODE : String(1);
  ACCNT_ASGN : String(2);
  EXCHG_RATE : Decimal;
  PRICE_DATE : Date;
  BILL_DATE : Date;
  SERV_DATE : Date;
  @RFCAbapType : 'N'
  FISC_YEAR : String(4);
  @RFCAbapType : 'N'
  POSTPERIOD : String(3);
  EXCHRATEST : Decimal;
  DUNN_KEY : String(1);
  DUNN_BLOCK : String(1);
  BILL_PLAN : String(10);
  PROMOTION : String(10);
  PAY_GUARAN : String(6);
  FINDOCPROC : String(10);
  J_1AFITP_D : String(2);
  REAS_0_VAT : String(1);
  REGION : String(3);
  ACTIVICODE : String(2);
  DISTRIBTYP : String(2);
  TAX_CLASS : String(10);
  DEPART_NO : String(4);
  REC_POINT : String(25);
  PURCH_NO_C : String(35);
  PURCH_DATE : Date;
  PO_METHOD : String(4);
  REF_1 : String(12);
  PURCH_NO_S : String(35);
  PO_DAT_S : Date;
  PO_METH_S : String(4);
  REF_1_S : String(12);
  POITMNOS : String(6);
  TRANS_DATE : Date;
  TRANSDATE : Date;
  CUSTCONGR1 : String(2);
  CUSTCONGR2 : String(2);
  CUSTCONGR3 : String(2);
  CUSTCONGR4 : String(2);
  CUSTCONGR5 : String(2);
  VALCONTCUR : String(5);
  ISOVALCONT : String(3);
  EXCHRATECO : Decimal;
  CURRENCKEY : String(5);
  ISOCURRKEY : String(3);
  EXCHRATELC : Decimal;
  CEPRPERCEN : Decimal;
  INFLAT_IDX : String(5);
  BASDATEIDX : Date;
  CUST_PO_NO : String(35);
  DLV_TIME : String(3);
  DLI_PROFIL : String(8);
  CALC_MOTIVE : String(2);
  BILL_FORM : String(2);
  REVENUETYP : String(1);
  BEGDEMAPER : String(1);
  EXCHRATELC_V : Decimal;
  EXCH_RATE_FI_V : Decimal;
  EXCHG_RATE_V : Decimal;
  EXCHRATEST_V : Decimal;
  EXCHRATECO_V : Decimal;
  DELIV_TYPE : String(2);
  TRANS_CAT : String(4);
  TRANS_MAT : String(18);
  SPEC_PROC : String(4);
  PRODCAT : String(10);
  FUNC_AREA : String(4);
  POD_PROC : String(1);
  CAMPAIGN : Binary(16);
  FKK_CONACCT : String(12);
  FUNC_AREA_LONG : String(16);
  FKK_CONACCT_GUID : Binary(16);
  TRANS_MAT_EXTERNAL : String(40);
  TRANS_MAT_GUID : String(32);
  TRANS_MAT_VERSION : String(10);
  SEPA_MANDATE_ID : String(35);
  INCOTERMSV : String(4);
  INCOTERMS2L : String(70);
  INCOTERMS3L : String(70);
  TRANS_MAT_LONG : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLBM {
  OPERATION : String(3);
  SD_DOC : String(10);
  CONFIG_ID : String(6);
  CONTEXT : String(250);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFGM {
  OPERATION : String(3);
  SD_DOC : String(10);
  POSEX : String(6);
  CONFIG_ID : String(6);
  ROOT_ID : String(8);
  SCE : String(1);
  KBNAME : String(30);
  KBVERSION : String(30);
  COMPLETE : String(1);
  CONSISTENT : String(1);
  CFGINFO : String(250);
  KBPROFILE : String(30);
  KBLANGUAGE : String(1);
  CBASE_ID : String(32);
  CBASE_ID_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINSM {
  OPERATION : String(3);
  SD_DOC : String(10);
  CONFIG_ID : String(6);
  INST_ID : String(8);
  OBJ_TYPE : String(10);
  CLASS_TYPE : String(3);
  OBJ_KEY : String(50);
  OBJ_TXT : String(70);
  QUANTITY : String(15);
  AUTHOR : String(1);
  QUANTITY_UNIT : String(3);
  COMPLETE : String(1);
  CONSISTENT : String(1);
  OBJECT_GUID : String(32);
  PERSIST_ID : String(32);
  PERSIST_ID_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRTM {
  OPERATION : String(3);
  SD_DOC : String(10);
  CONFIG_ID : String(6);
  PARENT_ID : String(8);
  INST_ID : String(8);
  PART_OF_NO : String(4);
  OBJ_TYPE : String(10);
  CLASS_TYPE : String(3);
  OBJ_KEY : String(50);
  AUTHOR : String(1);
  SALES_RELEVANT : String(1);
  PART_OF_GUID : String(32);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREFM {
  OPERATION : String(3);
  SD_DOC : String(10);
  POSEX : String(6);
  CONFIG_ID : String(6);
  INST_ID : String(8);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVALM {
  OPERATION : String(3);
  SD_DOC : String(10);
  CONFIG_ID : String(6);
  INST_ID : String(8);
  CHARC : String(40);
  CHARC_TXT : String(70);
  VALUE : String(40);
  VALUE_TXT : String(70);
  AUTHOR : String(1);
  VALUE_TO : String(40);
  VALCODE : String(1);
  VALUE_LONG : String(70);
  VALUE_TO_LONG : String(70);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVKM {
  OPERATION : String(3);
  SD_DOC : String(10);
  CONFIG_ID : String(6);
  INST_ID : String(8);
  VKEY : String(26);
  FACTOR : String(15);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDHD {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  COND_NO : String(10);
  CREATED_BY : String(12);
  CREAT_DATE : Date;
  COND_USAGE : String(1);
  TABLE_NO : String(3);
  APPLICATIO : String(2);
  COND_TYPE : String(4);
  VARKEY : String(100);
  VALID_FROM : Date;
  VALID_TO : Date;
  SEARCHTERM : String(10);
  RESPONS : String(3);
  PROMOT_NO : String(10);
  SALES_DEAL : String(10);
  SALESQUOTE : String(10);
  STD_AGRMNT : String(10);
  PROMOTION : String(10);
  REBAGREEMT : String(10);
  LIC_NO : String(20);
  LIC_DATE : Date;
  VARDATE : String(100);
  VARKEY_LONG : String(255);
  VARDATE_LONG : String(255);
  @RFCAbapType : 'N'
  VARKEY_VERSION : String(2);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDIT {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  COND_NO : String(10);
  @RFCAbapType : 'N'
  COND_COUNT : String(2);
  APPLICATIO : String(2);
  COND_TYPE : String(4);
  TEXT_NO : String(10);
  SCALETYPE : String(1);
  SCALEBASIN : String(1);
  SCALE_QTY : Decimal;
  UNITMEASUR : String(3);
  MEASUR_ISO : String(3);
  SCALE_VAL : Decimal;
  CURRENCKEY : String(5);
  CURREN_ISO : String(3);
  CALCTYPCON : String(1);
  COND_VALUE : Decimal;
  CONDCURR : String(5);
  COND_ISO : String(3);
  COND_P_UNT : Decimal;
  COND_UNIT : String(3);
  CONUNITISO : String(3);
  PRICELEVEL : String(4);
  NUMCONVERT : Decimal;
  DENOMINATO : Decimal;
  BASE_UOM : String(3);
  BASEQTYISO : String(3);
  LOWERLIMIT : Decimal;
  UPPERLIMIT : Decimal;
  PLCONDVAL : Decimal;
  CUM_VALUE : Decimal;
  CUMM_ACCR : Decimal;
  CURRENCY : String(5);
  CURR_ISO : String(3);
  CONDCURREN : String(5);
  ISOCURRENC : String(3);
  PLAN_BASIS : Decimal;
  RATE_UNIT : String(5);
  EXCLUSION : String(1);
  CUSTOMER : String(10);
  VENDOR_NO : String(10);
  TAX_CODE : String(2);
  INDIDELETE : String(1);
  @RFCAbapType : 'N'
  CONDITIDX : String(2);
  MATLSETTL : String(18);
  ACCRUALS : Decimal;
  REB_RETROA : String(1);
  STATOFAGRE : String(1);
  PROMOT_NO : String(10);
  SALES_DEAL : String(10);
  SALESQUOTE : String(10);
  @RFCAbapType : 'N'
  ADD_VAL_DY : String(2);
  FIX_VAL_DY : Date;
  PMNTTRMS : String(4);
  @RFCAbapType : 'N'
  NUMBORDERS : String(2);
  MINCONBAVA : Decimal;
  MAXCONBAVA : Decimal;
  MAXCONVAL : Decimal;
  @RFCAbapType : 'N'
  INCR_SCALE : String(4);
  @RFCAbapType : 'N'
  PRICSCALE : String(4);
  RELPRCG : String(1);
  PROMOTION : String(10);
  REBAGREEMT : String(10);
  WITHTAXCOD : String(2);
  CONTRACT : String(1);
  CONTRACTNO : String(13);
  FLOW_TYPE : String(4);
  INDIMATMAI : String(1);
  STATUS : String(1);
  UMSABST : String(1);
  MATLSETTL_EXTERNAL : String(40);
  MATLSETTL_GUID : String(32);
  MATLSETTL_VERSION : String(10);
  MATLSETTL_LONG : String(40);
  @RFCAbapType : 'N'
  CONDITIDX_LONG : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCOND {
  OPERATION : String(3);
  SD_DOC : String(10);
  CONDIT_NO : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  COND_ST_NO : String(3);
  @RFCAbapType : 'N'
  COND_COUNT : String(2);
  APPLICATIO : String(2);
  COND_TYPE : String(4);
  CONPRICDAT : Date;
  CALCTYPCON : String(1);
  CONBASEVAL : Decimal;
  SDCURRENCY : String(5);
  CURREN_ISO : String(3);
  COND_VALUE : Decimal;
  CURRENCY : String(5);
  CURRENCISO : String(3);
  CONEXCHRAT : Decimal;
  COND_P_UNT : Decimal;
  COND_D_UNT : String(3);
  T_UNIT_ISO : String(3);
  NUMCONVERT : Decimal;
  DENOMINATO : Decimal;
  CONDTYPE : String(1);
  STAT_CON : String(1);
  SCALETYPE : String(1);
  ACCRUALS : String(1);
  CONINVOLST : String(1);
  CONDORIGIN : String(1);
  GROUPCOND : String(1);
  COND_UPDAT : String(1);
  @RFCAbapType : 'N'
  ACCESS_SEQ : String(2);
  COND_NO : String(10);
  @RFCAbapType : 'N'
  CONDCOUNT : String(2);
  ACCOUNTKEY : String(3);
  GL_ACCOUNT : String(10);
  TAX_CODE : String(2);
  ACCOUNT_KE : String(3);
  GLACCOUNT : String(10);
  WITHTAXCOD : String(2);
  VENDOR_NO : String(10);
  CUSTNO_RR : String(10);
  ROUNDOFFDI : Decimal;
  CONDVALUE : Decimal;
  CONDCNTRL : String(1);
  CONDISACTI : String(1);
  CONDCLASS : String(1);
  @RFCAbapType : 'N'
  CONDCOINHD : String(2);
  INDIBASVAL : String(1);
  INDICONVAL : String(1);
  FACTBASVAL : Double;
  STRUCTCOND : String(1);
  FACTCONBAS : Double;
  PRICELEVEL : String(4);
  @RFCAbapType : 'N'
  CONDFORMUL : String(3);
  SCALETYP : String(1);
  INCREMSCAL : Decimal;
  INCREASCAL : Decimal;
  INDEX_NO : Integer;
  INDEXNO : Integer;
  @RFCAbapType : 'N'
  CONDITIDX : String(2);
  PRINT_ID : String(1);
  @RFCAbapType : 'N'
  FROREFSTEP : String(3);
  @RFCAbapType : 'N'
  FROMREFSTE : String(3);
  CONDSUBTOT : String(1);
  @RFCAbapType : 'N'
  COND_FORM : String(3);
  @RFCAbapType : 'N'
  COND_FORM1 : String(3);
  MAKMANENTR : String(1);
  ROUNDRULE : String(1);
  PMSIGNAMOU : String(1);
  CURRCONVER : String(1);
  CONDISMAND : String(1);
  RATEOFCHA1 : String(1);
  RATEOFCHA2 : String(1);
  RATEOFCHA3 : String(1);
  RATEOFCHA4 : String(1);
  RATEOFCHA5 : String(1);
  RATEOFCHA6 : String(1);
  TERMSOFPAY : String(1);
  MESSAGENO : String(3);
  INDIUPDATE : String(1);
  SELECTION : String(1);
  SCALEBASIN : String(1);
  SCALBASVAL : Decimal;
  UNITMEASUR : String(3);
  TUNITISO : String(3);
  CURRENCKEY : String(5);
  CORRENISO : String(3);
  CONDCURREN : String(5);
  CORR_ISO : String(3);
  CONBASVAL : Decimal;
  CONDIVALUE : Decimal;
  CONDINCOMP : String(1);
  CONDCONFIG : String(1);
  CONDCHAMAN : String(1);
  PRICESOURC : String(1);
  VARIANCOND : String(26);
  LEVEL_BOM : Decimal;
  PATH_BOM : Decimal;
  STATOFAGRE : String(1);
  REB_RETROA : String(1);
  INDIDELETE : String(1);
  AGREE_COND : String(10);
  CALCULBASE : String(1);
  SH_MAT_TYP : String(4);
  ROUNDDIFCO : String(1);
  QTYCONVERS : String(1);
  CONCBUFFER : String(1);
  RELACCASSI : String(1);
  INDIMATMAI : String(1);
  TAXJURISDI : String(1);
  CONEXCHRAT_V : Decimal;
  @RFCAbapType : 'N'
  ACCESS_SEQ_LONG : String(3);
  @RFCAbapType : 'N'
  COND_COUNT_LONG : String(3);
  @RFCAbapType : 'N'
  CONDCOINHD_LONG : String(3);
  @RFCAbapType : 'N'
  CONDITIDX_LONG : String(3);
  @RFCAbapType : 'N'
  CONDFORMUL_LONG : String(7);
  @RFCAbapType : 'N'
  COND_FORM_LONG : String(7);
  @RFCAbapType : 'N'
  COND_FORM1_LONG : String(7);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDQS {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  COND_NO : String(10);
  @RFCAbapType : 'N'
  COND_COUNT : String(2);
  @RFCAbapType : 'N'
  LINE_NO : String(4);
  SCALE_QTY : Decimal;
  COND_UNIT : String(3);
  T_UNIT_ISO : String(3);
  CURRENCY : Decimal;
  CONDCURR : String(5);
  CURREN_ISO : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDVS {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  COND_NO : String(10);
  @RFCAbapType : 'N'
  COND_COUNT : String(2);
  @RFCAbapType : 'N'
  LINE_NO : String(4);
  SCALE_VAL : Decimal;
  CURRENCKEY : String(5);
  CURRENCISO : String(3);
  CURRENCY : Decimal;
  CONDCURR : String(5);
  CURREN_ISO : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCNTR {
  OPERATION : String(3);
  DOC_NUMBER : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  VAL_PER : String(3);
  VALPERUNIT : String(1);
  VALPERCAT : String(2);
  INST_DATE : Date;
  ACCEPTDATE : Date;
  CONTSTADAT : Date;
  CONTSIGDAT : Date;
  CANC_PROC : String(4);
  CONTENDACT : String(4);
  CONTCANDAT : Date;
  REQCANCDAT : Date;
  CANC_PARTY : String(1);
  CANCREASON : String(2);
  CONTENDDAT : Date;
  CANC_DOC : String(20);
  CANCDOCDAT : Date;
  CONTSTARUL : String(2);
  @RFCAbapType : 'N'
  LEADTIMACT : String(3);
  LEADTIMUNI : String(1);
  DISM_DATE : Date;
  ACTIONDATE : Date;
  @RFCAbapType : 'N'
  WI_ID : String(12);
  ACTDATRULE : String(2);
  CONTENDRUL : String(2);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARDM {
  OPERATION : String(3);
  SD_DOC : String(10);
  CC_TYPE : String(4);
  CC_NUMBER : String(25);
  CC_VALID_F : Date;
  CC_VALID_T : Date;
  CC_NAME : String(40);
  DATAORIGIN : String(1);
  AUTHAMOUNT : Decimal;
  CURRENCY : String(5);
  CURR_ISO : String(3);
  CC_SETTLED : String(1);
  AUTH_CC_NO : String(10);
  AUTH_REFNO : String(15);
  AUTH_DATE : Date;
  AUTH_TIME : Time;
  MERCHIDCL : String(15);
  PNTOFRECEI : String(10);
  TERMINAL : String(10);
  SETTLEMRUN : String(10);
  CARDCATEGO : String(2);
  AUTHORTYPE : String(1);
  STATEXTSYS : String(1);
  CC_REACT : String(1);
  AMOUNTAUTH : Decimal;
  CURR_CRED : String(5);
  CURCREDISO : String(3);
  AUTH_EXPIR : String(1);
  AMOUNTCHAN : String(1);
  PRE_AUTH : String(1);
  @RFCAbapType : 'N'
  HIGHLEAUTH : String(6);
  RADRCHECK1 : String(4);
  RADRCHECK2 : String(4);
  RADRCHECK3 : String(4);
  RCARDCHECK : String(4);
  REASONTEXT : String(40);
  CC_LIMIT : Decimal;
  AUTH_USED : String(1);
  CC_LIMITED : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDFLOW {
  OPERATION : String(3);
  SD_DOC : String(10);
  PRECSDDOC : String(10);
  @RFCAbapType : 'N'
  PREDITDOC : String(6);
  SUBSSDDOC : String(10);
  @RFCAbapType : 'N'
  SUBSITDOC : String(6);
  DOCCATEGOR : String(1);
  REF_QTY : Decimal;
  BASE_UOM : String(3);
  T_UNIT_ISO : String(3);
  REFERENVAL : Decimal;
  STATISCURR : String(5);
  CURRENCISO : String(3);
  DOC_CAT_SD : String(1);
  QTYPOSCALC : String(1);
  ID_MM_WM : String(1);
  CREAT_DATE : Date;
  REC_TIME : Time;
  MATERIAL : String(18);
  MOVE_TYP : String(3);
  REQ_TYPE : String(2);
  PLTYPE : String(1);
  @RFCAbapType : 'N'
  LEVELFLOWR : String(2);
  WHSE_NO : String(3);
  CH_ON : Date;
  BILLINGTYP : String(1);
  GROSS_WT : Decimal;
  UNIT_OF_WT : String(3);
  UNITWTISO : String(3);
  VOLUME : Decimal;
  VOLUMEUNIT : String(3);
  VOLUNITISO : String(3);
  BILL_PLAN : String(10);
  @RFCAbapType : 'N'
  BILL_PLANI : String(6);
  REFQTYUNIT : Double;
  REFQTYFLOA : Double;
  SALES_UNIT : String(3);
  ISOCODUNIT : String(3);
  GURANTEED : Double;
  SPEC_STOCK : String(1);
  SP_STCK_NO : String(16);
  INDINVMANG : String(1);
  NET_WEIGHT : Decimal;
  MATERIAL_EXTERNAL : String(40);
  MATERIAL_GUID : String(32);
  MATERIAL_VERSION : String(10);
  MATERIAL_LONG : String(40);
  DOCCATEGOR_LONG : String(4);
  DOC_CAT_SD_LONG : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITBOS {
  OPERATION : String(3);
  DOC_NUMBER : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  MATERIAL : String(18);
  MAT_ENTRD : String(18);
  PR_REF_MAT : String(18);
  BATCH : String(10);
  MATL_GROUP : String(9);
  SHORT_TEXT : String(40);
  ITEM_CATEG : String(4);
  ITEM_TYPE : String(1);
  REL_FOR_DE : String(1);
  REL_FOR_BI : String(1);
  @RFCAbapType : 'N'
  HG_LV_ITEM : String(6);
  @RFCAbapType : 'N'
  ALTERN_ITM : String(6);
  REA_FOR_RE : String(2);
  PROD_HIER : String(18);
  OUT_AGR_TA : Decimal;
  TARGET_QTY : Decimal;
  TARGET_QU : String(3);
  T_UNIT_ISO : String(3);
  TARG_QTY_N : Decimal;
  TARG_QTY_D : Decimal;
  BASE_UOM : String(3);
  T_BAS_UNIT : String(3);
  SCALE_QUAN : Decimal;
  ROUND_DLV : Decimal;
  RECON_DATE : Date;
  MAX_DEVIAT : Decimal;
  PO_ITM_NO : String(6);
  CUST_MAT22 : String(22);
  MAX_DEV_PE : Decimal;
  MAX_DEV_DA : Decimal;
  REPAIR_PRO : String(3);
  DLVSCHEDUS : String(3);
  @RFCAbapType : 'N'
  DLV_GROUP : String(3);
  FIXED_QUAN : String(1);
  DELI_UNLIM : String(1);
  OVER_DLV_T : Decimal;
  UNDER_DLV : Decimal;
  BILL_BLOCK : String(2);
  REPLACE_PT : String(1);
  METH_BILL : String(1);
  DIVISION : String(2);
  BUS_AREA : String(4);
  NET_VALUE : Decimal;
  CURRENCY : String(5);
  CURREN_ISO : String(3);
  MAX_PL_DLV : Decimal;
  PART_DLV : String(1);
  BTCH_SPLIT : String(1);
  REQ_QTY : Decimal;
  CUM_REQ_DE : Decimal;
  CUM_CF_QTY : Decimal;
  CUM_CON_QU : Decimal;
  SALES_UNIT : String(3);
  ISOCODUNIT : String(3);
  SALES_QTY1 : Decimal;
  SALES_QTY2 : Decimal;
  GROSS_WEIG : Decimal;
  NET_WEIGHT : Decimal;
  UNIT_OF_WT : String(3);
  UNIT_WTISO : String(3);
  VOLUME : Decimal;
  VOLUMEUNIT : String(3);
  VOLUNITISO : String(3);
  CAU_VBELN : String(10);
  @RFCAbapType : 'N'
  CAU_POSNR : String(6);
  REF_DOC : String(10);
  @RFCAbapType : 'N'
  POSNR_VOR : String(6);
  OBJ_COPY : String(1);
  UPDAT_FLAG : String(1);
  END_RULE : String(1);
  @RFCAbapType : 'N'
  DLV_PRIO : String(2);
  PLANT : String(4);
  STGE_LOC : String(4);
  SHIP_POINT : String(4);
  ROUTE : String(6);
  KEY_ST : String(1);
  DATE_ST : Date;
  NBR_ST : String(8);
  STPOS_VBAP : Decimal;
  @RFCAbapType : 'N'
  ORDER_PROB : String(3);
  CREAT_DATE : Date;
  CREATED_BY : String(12);
  REC_TIME : Time;
  TAX_CLASS1 : String(1);
  TAX_CLASS2 : String(1);
  TAX_CLASS3 : String(1);
  TAX_CLASS4 : String(1);
  TAX_CLASS5 : String(1);
  TAX_CLASS6 : String(1);
  TAX_CLASS7 : String(1);
  TAX_CLASS8 : String(1);
  TAX_CLASS9 : String(1);
  FIX_SP_DAY : Decimal;
  VAR_SP_DAY : Decimal;
  PREC_DOC : String(1);
  NET_PRICE : Decimal;
  COND_P_UNT : Decimal;
  COND_UNIT : String(3);
  CONISOUNIT : String(3);
  RETOURE : String(1);
  CASH_DISC : String(1);
  AVAILCHECK : String(2);
  SUM_REQUIR : String(1);
  MAT_PR_GRP : String(2);
  ACCT_ASSGT : String(2);
  REBATE_GRP : String(2);
  COMM_GROUP : String(2);
  EUR_ART_NR : String(13);
  PRICE_OK : String(1);
  VAL_TYPE : String(10);
  SEP_VALUAT : String(1);
  BATCH_MGMT : String(1);
  IND_BTCH : String(1);
  MIN_DELY : Decimal;
  UPDATE_GRP : String(6);
  COST_DOC_C : Decimal;
  SUBTOT_PP1 : Decimal;
  SUBTOT_PP2 : Decimal;
  SUBTOT_PP3 : Decimal;
  SUBTOT_PP4 : Decimal;
  SUBTOT_PP5 : Decimal;
  SUBTOT_PP6 : Decimal;
  EXCH_RATE : Decimal;
  CH_ON : Date;
  EAN_UPC : String(18);
  FIX_DATE : String(1);
  PROFIT_CTR : String(10);
  PRC_GROUP1 : String(3);
  PRC_GROUP2 : String(3);
  PRC_GROUP3 : String(3);
  PRC_GROUP4 : String(3);
  PRC_GROUP5 : String(3);
  COMPON_QTY : Decimal;
  SUBSTREASO : String(4);
  SPEC_STOCK : String(1);
  ALLOC_INDI : String(1);
  @RFCAbapType : 'N'
  PROFIT_SEG : String(10);
  @RFCAbapType : 'N'
  WBS_ELEM : String(8);
  ORDERID : String(12);
  PLNG_MATL : String(18);
  PLNG_PLANT : String(4);
  BASE_UNIT : String(3);
  ISOBASUNIT : String(3);
  CONV_FACT : Double;
  ACCTASSCAT : String(1);
  CONSUMPT : String(1);
  BOMEXPLNO : String(8);
  OBJ_NR_IT : String(22);
  RES_ANAL : String(6);
  REQMTSTYP : String(4);
  CREDPRICIT : Decimal;
  PARTRELID : String(1);
  ACTCREDID : String(1);
  CR_EXCHRAT : Decimal;
  @RFCAbapType : 'N'
  CONFIG : String(18);
  @RFCAbapType : 'N'
  CHCLASS_IN : String(18);
  STAT_PRICE : String(1);
  COND_UPDAT : String(1);
  SERNO_PROF : String(4);
  NO_OF_SERI : Integer;
  NOGRPOSTED : String(1);
  MAT_GRP_SM : String(4);
  MAN_PR_CH : String(1);
  DOC_CAT_SD : String(1);
  MATDETERID : String(1);
  ITUSAGEID : String(1);
  @RFCAbapType : 'N'
  COSTESTNR : String(12);
  CSTG_VRNT : String(4);
  BOMITEMNR : String(4);
  STAT_VAL : String(1);
  STAT_DATE : Date;
  BUS_TRANST : String(2);
  PREF_INDIC : String(1);
  NRCONDREC : String(10);
  @RFCAbapType : 'N'
  INTCLASSNR : String(10);
  @RFCAbapType : 'N'
  BATCH_EXIT : String(3);
  BOM_CATEGO : String(1);
  @RFCAbapType : 'N'
  BOM_IT_NR : String(8);
  @RFCAbapType : 'N'
  COUNTER : String(8);
  INCONSCONF : String(1);
  OVERH_KEY : String(6);
  CSTG_SHEET : String(6);
  CSTG_VRNT1 : String(4);
  PROD_ALLOC : String(18);
  PRICE_REF : String(18);
  MATPRICGRP : String(2);
  MATFRGTGRP : String(8);
  PLANDLVSCH : String(4);
  SEQUENCENO : String(35);
  CREDPRIC : Double;
  PAY_GUARAN : String(2);
  GURANTEED : Double;
  CFOP_CODE : String(10);
  TAXLAWICMS : String(3);
  TAXLAWIPI : String(3);
  SD_TAXCODE : String(2);
  VALCONTRNR : String(10);
  @RFCAbapType : 'N'
  VALCONTRIT : String(6);
  ASSORT_MOD : String(18);
  VALSPECSTO : String(1);
  MATGRHIE1 : String(18);
  MATGRHIE2 : String(18);
  PROMOTION : String(10);
  SALES_DEAL : String(10);
  FLGLEADUNI : String(1);
  FREE_GOODS : String(1);
  VALID_OBJ : String(12);
  TAX_AMOUNT : Decimal;
  MRP_AREA : String(10);
  CUST_MAT35 : String(35);
  CR_EXCHRAT_V : Decimal;
  EXCHRATEST_V : Decimal;
  @RFCAbapType : 'N'
  PCKG_NO : String(10);
  MATERIAL_EXTERNAL : String(40);
  MATERIAL_GUID : String(32);
  MATERIAL_VERSION : String(10);
  MAT_ENTRD_EXTERNAL : String(40);
  MAT_ENTRD_GUID : String(32);
  MAT_ENTRD_VERSION : String(10);
  PLNG_MATL_EXTERNAL : String(40);
  PLNG_MATL_GUID : String(32);
  PLNG_MATL_VERSION : String(10);
  PRICE_REF_EXTERNAL : String(40);
  PRICE_REF_GUID : String(32);
  PRICE_REF_VERSION : String(10);
  PR_REF_MAT_EXTERNAL : String(40);
  PR_REF_MAT_GUID : String(32);
  PR_REF_MAT_VERSION : String(10);
  MATERIAL_LONG : String(40);
  MAT_ENTRD_LONG : String(40);
  PR_REF_MAT_LONG : String(40);
  PLNG_MATL_LONG : String(40);
  PRICE_REF_LONG : String(40);
  DOC_CAT_SD_LONG : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDPART {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  PARTN_ROLE : String(2);
  CUSTOMER : String(10);
  VENDOR_NO : String(10);
  @RFCAbapType : 'N'
  PERSON_NO : String(8);
  @RFCAbapType : 'N'
  CONTACT : String(10);
  ADDRESS : String(10);
  UNLOAD_PT : String(25);
  COUNTRY : String(3);
  COUNTRYISO : String(2);
  ADDRE_INDI : String(1);
  ACC_1_TIME : String(1);
  CUSTHITYP : String(1);
  PRIC_REL : String(1);
  REBATE_REL : String(1);
  @RFCAbapType : 'N'
  LEVEL_NR : String(2);
  DESC_PARTN : String(30);
  TRANSPZONE : String(10);
  @RFCAbapType : 'N'
  ASSIGN_HI : String(2);
  VAT_REG_NO : String(20);
  FURTHERPAR : String(1);
  PERS_NO : String(10);
  CALEND_UPD : String(1);
  ADDRESSGUID : String(32);
  BP_REF_ADDRESS_GUID : String(32);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDESLLBOS {
  @RFCAbapType : 'N'
  PCKG_NO : String(10);
  @RFCAbapType : 'N'
  LINE_NO : String(10);
  @RFCAbapType : 'N'
  EXT_LINE : String(10);
  OUTL_LEVEL : Integer;
  OUTL_NO : String(8);
  OUTL_IND : String(1);
  @RFCAbapType : 'N'
  SUBPCKG_NO : String(10);
  DELETE_IND : String(1);
  SERVICE : String(18);
  SERV_TYPE : String(3);
  @RFCAbapType : 'N'
  EDITION : String(4);
  SSC_ITEM : String(18);
  EXT_SERV : String(18);
  QUANTITY : Decimal;
  BASE_UOM : String(3);
  UOM_ISO : String(3);
  OVF_TOL : Decimal;
  OVF_UNLIM : String(1);
  PRICE_UNIT : Decimal;
  GROSS_VAL : Decimal;
  NET_VALUE : Decimal;
  FROM_LINE : String(6);
  TO_LINE : String(6);
  SHORT_TEXT : String(40);
  DISTRIB : String(1);
  @RFCAbapType : 'N'
  PERS_NO : String(8);
  WAGETYPE : String(4);
  @RFCAbapType : 'N'
  PLN_PCKG : String(10);
  @RFCAbapType : 'N'
  PLN_LINE : String(10);
  @RFCAbapType : 'N'
  CON_PCKG : String(10);
  @RFCAbapType : 'N'
  CON_LINE : String(10);
  @RFCAbapType : 'N'
  TMP_PCKG : String(10);
  @RFCAbapType : 'N'
  TMP_LINE : String(10);
  SSC_LIM : String(1);
  @RFCAbapType : 'N'
  LIMIT_LINE : String(10);
  ACTUAL_QTY : Decimal;
  ACTUAL_VAL : Decimal;
  CON_VALUE : Decimal;
  CON_QTY : Decimal;
  TARGET_VAL : Decimal;
  UNPL_VAL : Decimal;
  UNPL_QTY : Decimal;
  @RFCAbapType : 'N'
  BASLINE_NO : String(10);
  BASIC_LINE : String(1);
  ALTERNAT : String(1);
  BIDDER : String(1);
  SUPP_LINE : String(1);
  OPEN_QTY : String(1);
  INFORM : String(1);
  BLANKET : String(1);
  EVENTUAL : String(1);
  TAX_CODE : String(2);
  TAXJURCODE : String(15);
  PRICE_CHG : String(1);
  MATL_GROUP : String(9);
  NOND_ITAX : Decimal;
  DATE : Date;
  BEGINTIME : Time;
  ENDTIME : Time;
  EXTPERS_NO : String(40);
  FORMULA : String(10);
  FORM_VAL1 : Decimal;
  FORM_VAL2 : Decimal;
  FORM_VAL3 : Decimal;
  FORM_VAL4 : Decimal;
  FORM_VAL5 : Decimal;
  @RFCAbapType : 'N'
  USERF1_NUM : String(10);
  USERF2_NUM : Decimal;
  USERF1_TXT : String(40);
  USERF2_TXT : String(10);
  GR_PRICE : Decimal;
  @RFCAbapType : 'N'
  HI_LINE_NO : String(10);
  EXTDES : String(10);
  BOSGRP : String(4);
  BOSINTER : String(1);
  RISK_LINE : String(1);
  @RFCAbapType : 'N'
  SUPPL_NO : String(3);
  @RFCAbapType : 'N'
  SUPPL_STATUS : String(1);
  OBJ_TYPE : String(1);
  @RFCAbapType : 'N'
  SI_LINE : String(4);
  @RFCAbapType : 'N'
  MI_LINE_NO : String(10);
  QT_REL : String(1);
  LOT_SIZE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIBOSCD {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  PCKG_NO : String(10);
  @RFCAbapType : 'N'
  LINE_NO : String(10);
  @RFCAbapType : 'N'
  COND_ST_NO : String(3);
  @RFCAbapType : 'N'
  COND_COUNT : String(2);
  COND_TYPE : String(4);
  COND_VALUE : Decimal;
  CURRENCY : String(5);
  COND_UNIT : String(3);
  COND_P_UNT : Decimal;
  CURR_ISO : String(3);
  CD_UNT_ISO : String(3);
  REFOBJTYPE : String(10);
  REFOBJKEY : String(70);
  REFLOGSYS : String(10);
  APPLICATIO : String(2);
  CONPRICDAT : Date;
  CALCTYPCON : String(1);
  CONBASEVAL : Decimal;
  CONEXCHRAT : Decimal;
  NUMCONVERT : Decimal;
  DENOMINATO : Decimal;
  CONDTYPE : String(1);
  STAT_CON : String(1);
  SCALETYPE : String(1);
  ACCRUALS : String(1);
  CONINVOLST : String(1);
  CONDORIGIN : String(1);
  GROUPCOND : String(1);
  COND_UPDAT : String(1);
  @RFCAbapType : 'N'
  ACCESS_SEQ : String(2);
  @RFCAbapType : 'N'
  CONDCOUNT : String(2);
  ROUNDOFFDI : Decimal;
  CONDVALUE : Decimal;
  CURRENCY_2 : String(5);
  CURR_ISO_2 : String(3);
  CONDCNTRL : String(1);
  CONDISACTI : String(1);
  CONDCLASS : String(1);
  FACTBASVAL : Double;
  SCALEBASIN : String(1);
  SCALBASVAL : Decimal;
  UNITMEASUR : String(3);
  ISO_UNIT : String(3);
  CURRENCKEY : String(5);
  CURRENISO : String(3);
  CONDINCOMP : String(1);
  CONDCONFIG : String(1);
  CONDCHAMAN : String(1);
  @RFCAbapType : 'N'
  ACCESS_SEQ_LONG : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIBOSCOST {
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  @RFCAbapType : 'N'
  PCKG_NO : String(10);
  @RFCAbapType : 'N'
  LINE_NO : String(10);
  @RFCAbapType : 'N'
  ITEM_NUMBER : String(5);
  FLAG_DELETE_ITEM : String(1);
  ITEM_CATEGORY : String(1);
  ORIGIN_CONTROLLING_AREA : String(4);
  BASE_PLANNING_OBJECT_NUMBER : String(18);
  COSTCENTER : String(10);
  ACTTYPE : String(6);
  MATERIAL : String(18);
  PLANT : String(4);
  PSCHL : String(18);
  SERVICE : String(18);
  INFO_REC : String(10);
  PURCH_ORG : String(4);
  CO_BUSPROC : String(12);
  VAL_TYPE : String(10);
  VENDOR_NO : String(10);
  WORK_CENTER : String(8);
  WORK_CENTER_PLANT : String(4);
  VALUATION_DATE : Date;
  LATE_SCHED_FIN_DATE : Date;
  COST_ELEM : String(10);
  ORIG_GROUP : String(4);
  @RFCAbapType : 'N'
  COST_COMP : String(3);
  QUANTITY : Decimal;
  BASE_UOM : String(3);
  CURRENCY : String(5);
  PRICE_TOTAL : Decimal;
  PRICE_FIXED : Decimal;
  PRICE_QUANTITY : Decimal;
  PRICE_QUANTITY_UNIT : String(3);
  DESCRIPT : String(40);
  MATL_GROUP : String(9);
  VALUE_ADD_DED_01 : Decimal;
  VALUE_ADD_DED_02 : Decimal;
  VALUE_ADD_DED_03 : Decimal;
  VALUE_ADD_DED_04 : Decimal;
  VALUE_ADD_DED_05 : Decimal;
  PERCENT_ADD_DED_01 : Decimal;
  PERCENT_ADD_DED_02 : Decimal;
  PERCENT_ADD_DED_03 : Decimal;
  PERCENT_ADD_DED_04 : Decimal;
  PERCENT_ADD_DED_05 : Decimal;
  MATERIAL_EXTERNAL : String(40);
  MATERIAL_GUID : String(32);
  MATERIAL_VERSION : String(10);
  MATERIAL_LONG : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIESLLTX {
  @RFCAbapType : 'N'
  PCKG_NO : String(10);
  @RFCAbapType : 'N'
  LINE_NO : String(10);
  TEXT_ID : String(4);
  FORMAT_COL : String(2);
  TEXT_LINE : String(132);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHDST {
  OPERATION : String(3);
  SD_DOC : String(10);
  REFDOCHDST : String(1);
  TOTREFSTAT : String(1);
  CONFIRSTAT : String(1);
  DELIV_STAT : String(1);
  DLV_STAT_H : String(1);
  TOTGOODSMV : String(1);
  BILLSTATUS : String(1);
  BILLINGSTA : String(1);
  ACCOUNTSTA : String(1);
  OVERALLREJ : String(1);
  PRC_STAT_H : String(1);
  OVERALLPIC : String(1);
  OVERALL_WM : String(1);
  TOTINCOMPL : String(1);
  TOTINCOMIT : String(1);
  TOTINCOMBI : String(1);
  GENINCOMHD : String(1);
  HDIMCOMDEL : String(1);
  HDINCOMBIL : String(1);
  DOCIMCOMPR : String(1);
  SD_DOC_CAT : String(1);
  SDDOCOBJ : String(1);
  CH_ON : Date;
  BILTOTSTAT : String(1);
  INVOICSTAT : String(1);
  CUSTRESHD1 : String(1);
  CUSTRESHD2 : String(1);
  CUSTRESHD3 : String(1);
  CUSTRESHD4 : String(1);
  CUSTRESHD5 : String(1);
  CUSTRESIT1 : String(1);
  CUSTRESIT2 : String(1);
  CUSTRESIT3 : String(1);
  CUSTRESIT4 : String(1);
  CUSTRESIT5 : String(1);
  TOTSTATIT : String(1);
  STATSTACLC : String(1);
  STATDYNCLC : String(1);
  STATCREDCH : String(1);
  STATCRECH1 : String(1);
  STATCRECH2 : String(1);
  STATCRECH3 : String(1);
  STATCRECH4 : String(1);
  STATCRECH5 : String(1);
  STATCRECH6 : String(1);
  STATCRECH7 : String(1);
  STATCRECH8 : String(1);
  STATCRECH9 : String(1);
  STATCRECHA : String(1);
  STATCRECHB : String(1);
  STATCRECHC : String(1);
  TOTSTATCCH : String(1);
  TRNSPLANST : String(1);
  QUITTSTAT : String(1);
  CONFIRMSTA : String(1);
  SAPRELEASE : String(4);
  TOTINCOMI : String(1);
  TOTINCOMI1 : String(1);
  TOTINCOMI2 : String(1);
  HDINCOMPL : String(1);
  HDINCOMPL1 : String(1);
  HDINCOMPL2 : String(1);
  HDINCOMPL3 : String(1);
  CREDCHECK : String(1);
  DELAYSTAT : String(1);
  SHIPPUNIT : String(1);
  DISTRISTAT : String(1);
  REVDETSTAT : String(1);
  INDIDOCACH : String(1);
  TOBILBLOST : String(1);
  TODELBLOST : String(1);
  TOBLOCKSTA : String(1);
  LEBHEADSTA : String(1);
  FMSTATUS : String(1);
  SD_DOC_CAT_LONG : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITST {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  REFERNSTAT : String(1);
  REFTOTSTAT : String(1);
  CONFSTATIT : String(1);
  DELIV_STAT : String(1);
  DLV_STAT_I : String(1);
  GOODSMVSTA : String(1);
  BILLSTATHD : String(1);
  BILLSTATIT : String(1);
  REJSTATIT : String(1);
  OVRPROCSTA : String(1);
  PICKINGSTA : String(1);
  WHMANAGSTA : String(1);
  GENINCOMST : String(1);
  INCOMSTDEL : String(1);
  INCOMSTBIL : String(1);
  INCOMSTPRI : String(1);
  BILLSTAINT : String(1);
  CUSTRESIT1 : String(1);
  CUSTRESIT2 : String(1);
  CUSTRESIT3 : String(1);
  CUSTRESIT4 : String(1);
  CUSTRESIT5 : String(1);
  PACKSTSTIT : String(1);
  STAPICKCON : String(1);
  CONFIRMSTA : String(1);
  STATCRECH6 : String(1);
  STATCRECH7 : String(1);
  INCOMSTAIT : String(1);
  INCOMSTAPA : String(1);
  INCOSTAGOO : String(1);
  DELAYSTAT : String(1);
  REVDETSTAT : String(1);
  DECTWHOUSE : String(1);
  ITBILBLOST : String(1);
  ITDELBLOST : String(1);
  LEBITEMSTA : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEHD {
  OPERATION : String(3);
  SD_DOC : String(10);
  @RFCAbapType : 'N'
  ITM_NUMBER : String(6);
  APPLOBJECT : String(10);
  TEXT_NAME : String(70);
  TEXT_ID : String(4);
  LANGU : String(1);
  LANGU_ISO : String(2);
  TITLE : String(50);
  FORM : String(16);
  STYLE : String(8);
  @RFCAbapType : 'N'
  VERSION : String(5);
  CREATEUSER : String(12);
  CREATEREL : String(4);
  CREATEDATE : Date;
  CREATETIME : Time;
  CHANGEUSER : String(12);
  CHANGEREL : String(4);
  CHANGEDATE : Date;
  CHANGETIME : Time;
  @RFCAbapType : 'N'
  LINESIZE : String(3);
  @RFCAbapType : 'N'
  LINEAMOUNT : String(5);
  HYPHENAT : String(1);
  ORGSPRAS : String(1);
  ORGSPRAISO : String(2);
  @RFCAbapType : 'N'
  TRANSTAT : String(1);
  MATCHCOD1 : String(16);
  MATCHCOD2 : String(16);
  REFOBJECT : String(10);
  REFNAME : String(70);
  REFID : String(4);
  TEXTTYPE : String(6);
  COMPRESSTD : String(1);
  OBJ_CLASS : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPITEXTLI {
  OPERATION : String(3);
  APPLOBJECT : String(10);
  TEXT_NAME : String(70);
  TEXT_ID : String(4);
  LANGU : String(1);
  LANGU_ISO : String(2);
  @RFCAbapType : 'N'
  LINE_CNT : String(8);
  LINE : String(132);
  FORMAT_COL : String(2);
};

type SAP_ABAP_BACKEND_RFC.RSAU_API_GET_LOG_DATA.ResultType {
  /** Statistics information for data sources */
  @RFCParameterType : 'Export'
  ET_FSTAT : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_FILE_INFO;
  /** Log data (system time stamp) */
  @RFCParameterType : 'Export'
  ET_LOG : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_RESULT;
  /** Log data (UTC time stamp) */
  @RFCParameterType : 'Export'
  ET_LOG_UTC : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_RESULT_UTC;
  /** Application messages */
  @RFCParameterType : 'Export'
  ET_RETURN : SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2_T;
};

type SAP_ABAP_BACKEND_RFC.DDIC.RSAU_SEL_INTV {
  DAT_FROM : Date;
  DAT_TO : Date;
  TIM_FROM : Time;
  TIM_TO : Time;
};

type SAP_ABAP_BACKEND_RFC.DDIC.RSDSSELOPT_T : many {
  SIGN : String(1);
  OPTION : String(2);
  LOW : String(45);
  HIGH : String(45);
};

type SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_MANDT_RANGE : many {
  SIGN : String(1);
  OPTION : String(2);
  LOW : String(3);
  HIGH : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.RSAU_SEL_OPT_T_EVTS : many {
  SIGN : String(1);
  OPTION : String(2);
  LOW : String(3);
  HIGH : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_PROGN_RANGE : many {
  SIGN : String(1);
  OPTION : String(2);
  LOW : String(40);
  HIGH : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_TCODE_RANGE : many {
  SIGN : String(1);
  OPTION : String(2);
  LOW : String(20);
  HIGH : String(20);
};

type SAP_ABAP_BACKEND_RFC.DDIC.SUSR_T_RANGE_4_XUBNAME : many {
  SIGN : String(1);
  OPTION : String(2);
  LOW : String(12);
  HIGH : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_FILE_INFO : many {
  @RFCAbapType : 'N'
  FILENO : String(6);
  INSTNAME : String(20);
  FILENAME : String(1024);
  FILE_DATE : Date;
  @RFCAbapType : 'N'
  RECGOOD : String(10);
  ENDREASON : String(1);
  LEN : Integer;
  CHECK_RESULT_I : String(132);
  CHECK_RESULT : String(10);
  CHECK_SUBRC : Integer;
  MODDA : Date;
  MODTI : Time;
  MODBE : String(12);
  CHECK_BUTTON : String(132);
};

type SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_RESULT : many {
  SID : String(8);
  INSTANCE : String(40);
  SAL_DATE : Date;
  SAL_TIME : Time;
  SLGMAND : String(3);
  AREA : String(2);
  SUBID : String(1);
  MSG : String(3);
  SLGUSER : String(40);
  USERALIAS : String(40);
  SMTP_ADDR : String(241);
  CLASS : String(12);
  COUNTER : Integer;
  SLGLTRM2 : String(40);
  TERM_IPV6 : String(45);
  SLGTC : String(20);
  SLGREPNA : String(40);
  SUBCLASID : Integer;
  TXSUBCLSID : String(25);
  SEVERITY : Integer;
  SEVERITY_S : String(1);
  TXSEVERITY : String(25);
  @RFCAbapType : 'N'
  FILE_NO : String(6);
  TASKTYPE : String(2);
  TASKNO : String(3);
  SAL_DATA : String(8);
  X_STRING : String(30);
  PARAM1 : String(8);
  PARAM2 : String(8);
  PARAM3 : String(8);
  PARAMX : String(8);
  EPP : String(36);
  SRC : String(1);
  MFD_FLAG : String(1);
  ALERT_FLAG : Binary(1);
  SLGDATTIM : String(16);
  LOG_TSTMP : Decimal;
  CTAB : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_COLOR;
};

type SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_COLOR : many {
  FIELDNAME : String(30);
  COLOR : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_S_COLOR_SUBSET;
  NOKEYCOL : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.RSAU_S_COLOR_SUBSET {
  COL : Integer;
  INT : Integer;
  INV : Integer;
};

type SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_RESULT_UTC : many {
  SID : String(8);
  INSTANCE : String(40);
  SAL_DATE : Date;
  SAL_TIME : Time;
  SLGMAND : String(3);
  AREA : String(2);
  SUBID : String(1);
  MSG : String(3);
  SLGUSER : String(12);
  COUNTER : Integer;
  SLGLTRM2 : String(20);
  TERM_IPV6 : String(45);
  SLGTC : String(20);
  SLGREPNA : String(40);
  SUBCLASID : Integer;
  TXSUBCLSID : String(25);
  SEVERITY : Integer;
  SEVERITY_S : String(1);
  TXSEVERITY : String(25);
  @RFCAbapType : 'N'
  FILE_NO : String(6);
  TASKTYPE : String(2);
  TASKNO : String(3);
  SAL_DATA : String(8);
  X_STRING : String(30);
  PARAM1 : String(8);
  PARAM2 : String(8);
  PARAM3 : String(8);
  PARAMX : String(8);
  SRC : String(1);
  CTAB : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_T_COLOR;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2_T : many {
  TYPE : String(1);
  ID : String(20);
  @RFCAbapType : 'N'
  NUMBER : String(3);
  MESSAGE : String(220);
  LOG_NO : String(20);
  @RFCAbapType : 'N'
  LOG_MSG_NO : String(6);
  MESSAGE_V1 : String(50);
  MESSAGE_V2 : String(50);
  MESSAGE_V3 : String(50);
  MESSAGE_V4 : String(50);
  PARAMETER : String(32);
  ROW : Integer;
  FIELD : String(30);
  SYSTEM : String(10);
};

