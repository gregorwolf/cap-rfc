/* checksum : c550a9bdc6735ce36fc80a7d6f2703e9 */
@cds.external: true
@protocol    : 'rfc'
service SAP_ABAP_BACKEND_RFC {};

action SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST(
                                              @RFCParameterType:'Import'
                                              MAX_ROWS : Integer default '0',
                                              @RFCParameterType:'Import'
                                              WITH_USERNAME : String(1) default 'SPACE',
                                              @RFCParameterType:'Table'
                                              RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2,
                                              @RFCParameterType:'Table'
                                              SELECTION_EXP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSEXP,
                                              @RFCParameterType:'Table'
                                              SELECTION_RANGE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSRGE,
                                              @RFCParameterType:'Table'
                                              USERLIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME)               returns SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_USER_GET_DETAIL(
                                                 @RFCParameterType:'Import'
                                                 CACHE_RESULTS : String(1) default 'X',
                                                 @RFCParameterType:'Import'
                                                 EXTUID_GET : SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUIDGET,
                                                 @RFCParameterType:'Import'
                                                 USERNAME : String(12) not null,
                                                 @RFCParameterType:'Table'
                                                 ACTIVITYGROUPS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIAGR,
                                                 @RFCParameterType:'Table'
                                                 ADDCOMREM : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOMREM,
                                                 @RFCParameterType:'Table'
                                                 ADDFAX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADFAX,
                                                 @RFCParameterType:'Table'
                                                 ADDPAG : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPAG,
                                                 @RFCParameterType:'Table'
                                                 ADDPRT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPRT,
                                                 @RFCParameterType:'Table'
                                                 ADDRFC : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRFC,
                                                 @RFCParameterType:'Table'
                                                 ADDRML : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRML,
                                                 @RFCParameterType:'Table'
                                                 ADDSMTP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSMTP,
                                                 @RFCParameterType:'Table'
                                                 ADDSSF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSSF,
                                                 @RFCParameterType:'Table'
                                                 ADDTEL : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTEL,
                                                 @RFCParameterType:'Table'
                                                 ADDTLX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTLX,
                                                 @RFCParameterType:'Table'
                                                 ADDTTX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTTX,
                                                 @RFCParameterType:'Table'
                                                 ADDURI : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADURI,
                                                 @RFCParameterType:'Table'
                                                 ADDX400 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADX400,
                                                 @RFCParameterType:'Table'
                                                 EXTIDHEAD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDHEAD,
                                                 @RFCParameterType:'Table'
                                                 EXTIDPART : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDPART,
                                                 @RFCParameterType:'Table'
                                                 EXTUID : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUID,
                                                 @RFCParameterType:'Table'
                                                 GROUPS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIGROUPS,
                                                 @RFCParameterType:'Table'
                                                 PARAMETER : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM,
                                                 @RFCParameterType:'Table'
                                                 PARAMETER1 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM1,
                                                 @RFCParameterType:'Table'
                                                 PROFILES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPROF,
                                                 @RFCParameterType:'Table'
                                                 RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2,
                                                 @RFCParameterType:'Table'
                                                 SAPUSER_UUID_HIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUIDHIST,
                                                 @RFCParameterType:'Table'
                                                 SYSTEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRCVSYS,
                                                 @RFCParameterType:'Table'
                                                 UCLASSSYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASSSYS,
                                                 @RFCParameterType:'Table'
                                                 USATTRIBUTE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSATTRIBUTE)    returns SAP_ABAP_BACKEND_RFC.BAPI_USER_GET_DETAIL.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE(
                                                     @RFCParameterType:'Import'
                                                     CONVERT_PARVW_AUART : String(1) default 'SPACE',
                                                     @RFCParameterType:'Import'
                                                     ORDER_HEADER_IN : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEAD not null,
                                                     @RFCParameterType:'Table'
                                                     EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
                                                     @RFCParameterType:'Table'
                                                     MESSAGETABLE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2,
                                                     @RFCParameterType:'Table'
                                                     ORDER_CCARD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD,
                                                     @RFCParameterType:'Table'
                                                     ORDER_CCARD_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD_EX,
                                                     @RFCParameterType:'Table'
                                                     ORDER_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB,
                                                     @RFCParameterType:'Table'
                                                     ORDER_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS,
                                                     @RFCParameterType:'Table'
                                                     ORDER_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT,
                                                     @RFCParameterType:'Table'
                                                     ORDER_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG,
                                                     @RFCParameterType:'Table'
                                                     ORDER_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL,
                                                     @RFCParameterType:'Table'
                                                     ORDER_CONDITION_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND,
                                                     @RFCParameterType:'Table'
                                                     ORDER_INCOMPLETE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIINCOMP,
                                                     @RFCParameterType:'Table'
                                                     ORDER_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMIN,
                                                     @RFCParameterType:'Table'
                                                     ORDER_ITEMS_OUT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMEX,
                                                     @RFCParameterType:'Table'
                                                     ORDER_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARTNR,
                                                     @RFCParameterType:'Table'
                                                     ORDER_SCHEDULE_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU,
                                                     @RFCParameterType:'Table'
                                                     ORDER_SCHEDULE_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL,
                                                     @RFCParameterType:'Table'
                                                     PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1) returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_INQUIRY_CREATEFROMDATA2(
                                                         @RFCParameterType:'Import'
                                                         BEHAVE_WHEN_ERROR : String(1),
                                                         @RFCParameterType:'Import'
                                                         BINARY_RELATIONSHIPTYPE : String(4),
                                                         @RFCParameterType:'Import'
                                                         CONVERT : String(1) default 'SPACE',
                                                         @RFCParameterType:'Import'
                                                         INQUIRY_HEADER_IN : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1 not null,
                                                         @RFCParameterType:'Import'
                                                         INQUIRY_HEADER_INX : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1X,
                                                         @RFCParameterType:'Import'
                                                         INT_NUMBER_ASSIGNMENT : String(1),
                                                         @RFCParameterType:'Import'
                                                         LOGIC_SWITCH : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDLS,
                                                         @RFCParameterType:'Import'
                                                         SALESDOCUMENTIN : String(10),
                                                         @RFCParameterType:'Import'
                                                         SENDER : SAP_ABAP_BACKEND_RFC.DDIC.BAPI_SENDER,
                                                         @RFCParameterType:'Import'
                                                         TESTRUN : String(1),
                                                         @RFCParameterType:'Table'
                                                         EXTENSIONEX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
                                                         @RFCParameterType:'Table'
                                                         EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CFGS_REFINST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CFGS_VK : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CONDITIONS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_CONDITIONS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_ITEMS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_KEYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_SCHEDULES_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_SCHEDULES_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX,
                                                         @RFCParameterType:'Table'
                                                         INQUIRY_TEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT,
                                                         @RFCParameterType:'Table'
                                                         PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1,
                                                         @RFCParameterType:'Table'
                                                         RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2)        returns SAP_ABAP_BACKEND_RFC.BAPI_INQUIRY_CREATEFROMDATA2.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2(
                                                           /** Error Handling */
                                                           @RFCParameterType:'Import'
                                                           BEHAVE_WHEN_ERROR : String(1),
                                                           /** Binary Relationship Type (Private) */
                                                           @RFCParameterType:'Import'
                                                           BINARY_RELATIONSHIPTYPE : String(4),
                                                           /** Conversion of Partner Function + Order Type */
                                                           @RFCParameterType:'Import'
                                                           CONVERT : String(1) default 'SPACE',
                                                           /** Internal Item Number Assignment */
                                                           @RFCParameterType:'Import'
                                                           INT_NUMBER_ASSIGNMENT : String(1),
                                                           /** Internal Control Parameter */
                                                           @RFCParameterType:'Import'
                                                           LOGIC_SWITCH : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDLS,
                                                           /** Suppress call of function module 'DEQUEUE_ALL' */
                                                           @RFCParameterType:'Import'
                                                           NO_DEQUEUE_ALL : String(1) default 'SPACE',
                                                           /** Order Header */
                                                           @RFCParameterType:'Import'
                                                           ORDER_HEADER_IN : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1 not null,
                                                           /** Sales Order Check List */
                                                           @RFCParameterType:'Import'
                                                           ORDER_HEADER_INX : SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1X,
                                                           /** Sales and Distribution Document Number */
                                                           @RFCParameterType:'Import'
                                                           SALESDOCUMENTIN : String(10),
                                                           /** Logical System - Sender */
                                                           @RFCParameterType:'Import'
                                                           SENDER : SAP_ABAP_BACKEND_RFC.DDIC.BAPI_SENDER,
                                                           /** Test Run */
                                                           @RFCParameterType:'Import'
                                                           TESTRUN : String(1),
                                                           /** Reference Structure for BAPI Parameters ExtensionIn/ExtensionOut */
                                                           @RFCParameterType:'Table'
                                                           EXTENSIONEX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
                                                           /** Customer Enhancement for VBAK, VBAP, VBEP */
                                                           @RFCParameterType:'Table'
                                                           EXTENSIONIN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
                                                           /** Credit Card Data */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CCARD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD,
                                                           /** Configuration: BLOB Internal Data (SCE) */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CFGS_BLOB : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB,
                                                           /** Configuration: Instances */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CFGS_INST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS,
                                                           /** Configuration: Part-of Specifications */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT,
                                                           /** Configuration: Reference Data */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CFGS_REF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG,
                                                           /** Configuration: Reference Item / Instance */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CFGS_REFINST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF,
                                                           /** Configuration: Characteristic Values */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CFGS_VALUE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL,
                                                           /** Configuration: Variant Condition Key */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CFGS_VK : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK,
                                                           /** Conditions */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CONDITIONS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND,
                                                           /** Conditions Checkbox */
                                                           @RFCParameterType:'Table'
                                                           ORDER_CONDITIONS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX,
                                                           /** Item Data */
                                                           @RFCParameterType:'Table'
                                                           ORDER_ITEMS_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM,
                                                           /** Item Data Checkbox */
                                                           @RFCParameterType:'Table'
                                                           ORDER_ITEMS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX,
                                                           /** Output Table of Reference Keys */
                                                           @RFCParameterType:'Table'
                                                           ORDER_KEYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY,
                                                           /** Document Partner */
                                                           @RFCParameterType:'Table'
                                                           ORDER_PARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR,
                                                           /** Schedule Line Data */
                                                           @RFCParameterType:'Table'
                                                           ORDER_SCHEDULES_IN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL,
                                                           /** Checkbox Schedule Line Data */
                                                           @RFCParameterType:'Table'
                                                           ORDER_SCHEDULES_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX,
                                                           /** Texts */
                                                           @RFCParameterType:'Table'
                                                           ORDER_TEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT,
                                                           /** BAPI Reference Structure for Addresses (Org./Company) */
                                                           @RFCParameterType:'Table'
                                                           PARTNERADDRESSES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1,
                                                           /** Return Messages */
                                                           @RFCParameterType:'Table'
                                                           RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2)      returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2.ResultType;

type SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST.ResultType {
  @RFCParameterType: 'Export'
  ROWS            :      Integer;

  @RFCParameterType: 'Table'
  RETURN          : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;

  @RFCParameterType: 'Table'
  SELECTION_EXP   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSEXP;

  @RFCParameterType: 'Table'
  SELECTION_RANGE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSRGE;

  @RFCParameterType: 'Table'
  USERLIST        : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2 {
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

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSEXP {
  LOGOP     : String(3);
  ARITY     : Integer;
  PARAMETER : String(32);
  FIELD     : String(30);
  OPTION    : String(2);
  LOW       : String(45);
  HIGH      : String(45);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSRGE {
  PARAMETER : String(32);
  FIELD     : String(30);
  SIGN      : String(1);
  OPTION    : String(2);
  LOW       : String(45);
  HIGH      : String(45);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME {
  USERNAME  : String(12);
  FIRSTNAME : String(40);
  LASTNAME  : String(40);
  FULLNAME  : String(80);
};

type SAP_ABAP_BACKEND_RFC.BAPI_USER_GET_DETAIL.ResultType {
  @RFCParameterType: 'Export'
  ADDRESS           :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR3;

  @RFCParameterType: 'Export'
  ADMINDATA         :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERADMIN;

  @RFCParameterType: 'Export'
  ALIAS             :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIALIAS;

  @RFCParameterType: 'Export'
  COMPANY           :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSCOMP;

  @RFCParameterType: 'Export'
  DEFAULTS          :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIDEFAUL;

  @RFCParameterType: 'Export'
  DESCRIPTION       :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSDESC;

  @RFCParameterType: 'Export'
  IDENTITY          :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIIDENTITY;

  @RFCParameterType: 'Export'
  ISLOCKED          :      SAP_ABAP_BACKEND_RFC.DDIC.BAPISLOCKD;

  @RFCParameterType: 'Export'
  LASTMODIFIED      :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIMODDAT;

  @RFCParameterType: 'Export'
  LOGONDATA         :      SAP_ABAP_BACKEND_RFC.DDIC.BAPILOGOND;

  @RFCParameterType: 'Export'
  REF_USER          :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIREFUS;

  @RFCParameterType: 'Export'
  SAPUSER_UUID      :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUID;

  @RFCParameterType: 'Export'
  SNC               :      SAP_ABAP_BACKEND_RFC.DDIC.BAPISNCU;

  @RFCParameterType: 'Export'
  TECH_USER         :      SAP_ABAP_BACKEND_RFC.DDIC.BAPITECHUSER;

  @RFCParameterType: 'Export'
  UCLASS            :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASS;

  @RFCParameterType: 'Table'
  ACTIVITYGROUPS    : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIAGR;

  @RFCParameterType: 'Table'
  ADDCOMREM         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOMREM;

  @RFCParameterType: 'Table'
  ADDFAX            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADFAX;

  @RFCParameterType: 'Table'
  ADDPAG            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPAG;

  @RFCParameterType: 'Table'
  ADDPRT            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPRT;

  @RFCParameterType: 'Table'
  ADDRFC            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRFC;

  @RFCParameterType: 'Table'
  ADDRML            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRML;

  @RFCParameterType: 'Table'
  ADDSMTP           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSMTP;

  @RFCParameterType: 'Table'
  ADDSSF            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSSF;

  @RFCParameterType: 'Table'
  ADDTEL            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTEL;

  @RFCParameterType: 'Table'
  ADDTLX            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTLX;

  @RFCParameterType: 'Table'
  ADDTTX            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTTX;

  @RFCParameterType: 'Table'
  ADDURI            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADURI;

  @RFCParameterType: 'Table'
  ADDX400           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADX400;

  @RFCParameterType: 'Table'
  EXTIDHEAD         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDHEAD;

  @RFCParameterType: 'Table'
  EXTIDPART         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDPART;

  @RFCParameterType: 'Table'
  EXTUID            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUID;

  @RFCParameterType: 'Table'
  GROUPS            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIGROUPS;

  @RFCParameterType: 'Table'
  PARAMETER         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM;

  @RFCParameterType: 'Table'
  PARAMETER1        : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM1;

  @RFCParameterType: 'Table'
  PROFILES          : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPROF;

  @RFCParameterType: 'Table'
  RETURN            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;

  @RFCParameterType: 'Table'
  SAPUSER_UUID_HIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUIDHIST;

  @RFCParameterType: 'Table'
  SYSTEMS           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRCVSYS;

  @RFCParameterType: 'Table'
  UCLASSSYS         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASSSYS;

  @RFCParameterType: 'Table'
  USATTRIBUTE       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSATTRIBUTE;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUIDGET {
  READ_ALL         : String(1);
  READ_EXTUID_TYPE : String(2);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR3 {
  PERS_NO          : String(10);
  ADDR_NO          : String(10);
  TITLE_P          : String(30);
  FIRSTNAME        : String(40);
  LASTNAME         : String(40);
  BIRTH_NAME       : String(40);
  MIDDLENAME       : String(40);
  SECONDNAME       : String(40);
  FULLNAME         : String(80);
  FULLNAME_X       : String(1);
  TITLE_ACA1       : String(20);
  TITLE_ACA2       : String(20);
  PREFIX1          : String(20);
  PREFIX2          : String(20);
  TITLE_SPPL       : String(20);
  NICKNAME         : String(40);
  INITIALS         : String(10);
  NAMEFORMAT       : String(2);
  NAMCOUNTRY       : String(3);
  LANGU_P          : String(1);
  LANGUP_ISO       : String(2);
  SORT1_P          : String(20);
  SORT2_P          : String(20);
  DEPARTMENT       : String(40);
  FUNCTION         : String(40);
  BUILDING_P       : String(10);
  FLOOR_P          : String(10);
  ROOM_NO_P        : String(10);
  INITS_SIG        : String(10);
  INHOUSE_ML       : String(10);
  COMM_TYPE        : String(3);
  TITLE            : String(30);
  NAME             : String(40);
  NAME_2           : String(40);
  NAME_3           : String(40);
  NAME_4           : String(40);
  C_O_NAME         : String(40);
  CITY             : String(40);
  DISTRICT         : String(40);
  CITY_NO          : String(12);
  DISTRCT_NO       : String(8);
  CHCKSTATUS       : String(1);
  POSTL_COD1       : String(10);
  POSTL_COD2       : String(10);
  POSTL_COD3       : String(10);
  PO_BOX           : String(10);
  PO_BOX_CIT       : String(40);
  PBOXCIT_NO       : String(12);
  DELIV_DIS        : String(15);
  TRANSPZONE       : String(10);
  STREET           : String(60);
  STREET_NO        : String(12);
  STR_ABBR         : String(2);
  HOUSE_NO         : String(10);
  HOUSE_NO2        : String(10);
  STR_SUPPL1       : String(40);
  STR_SUPPL2       : String(40);
  STR_SUPPL3       : String(40);
  LOCATION         : String(40);
  BUILDING         : String(10);
  FLOOR            : String(10);
  ROOM_NO          : String(10);
  COUNTRY          : String(3);
  COUNTRYISO       : String(2);
  LANGU            : String(1);
  LANGU_ISO        : String(2);
  REGION           : String(3);
  SORT1            : String(20);
  SORT2            : String(20);
  TIME_ZONE        : String(6);
  TAXJURCODE       : String(15);
  ADR_NOTES        : String(50);
  TEL1_NUMBR       : String(30);
  TEL1_EXT         : String(10);
  FAX_NUMBER       : String(30);
  FAX_EXTENS       : String(10);
  E_MAIL           : String(241);
  BUILD_LONG       : String(20);
  REGIOGROUP       : String(8);
  HOME_CITY        : String(40);
  HOMECITYNO       : String(12);
  PCODE1_EXT       : String(10);
  PCODE2_EXT       : String(10);
  PCODE3_EXT       : String(10);
  PO_W_O_NO        : String(1);
  PO_BOX_REG       : String(3);
  POBOX_CTRY       : String(3);
  PO_CTRYISO       : String(2);
  DONT_USE_S       : String(4);
  DONT_USE_P       : String(4);
  HOUSE_NO3        : String(10);
  LANGU_CR_P       : String(1);
  LANGUCPISO       : String(2);
  PO_BOX_LOBBY     : String(40);
  DELI_SERV_TYPE   : String(4);
  DELI_SERV_NUMBER : String(10);
  COUNTY_CODE      : String(8);
  COUNTY           : String(40);
  TOWNSHIP_CODE    : String(8);
  TOWNSHIP         : String(40);
  XPCPT            : String(1);
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
  COMPANY          : String(42);
  TEMPLATE_ORGTYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIDEFAUL {
  STCOD      : String(20);
  SPLD       : String(4);
  SPLG       : String(1);
  SPDB       : String(1);
  SPDA       : String(1);
  DATFM      : String(1);
  DCPFM      : String(1);
  LANGU      : String(1);
  CATTKENNZ  : String(1);
  KOSTL      : String(8);
  START_MENU : String(30);
  TIMEFM     : String(1);
  TZONE_IANA : String(64);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSDESC {
  RESPONSIBLE : String(12);
  TECHDESC    : String(80);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIIDENTITY {
  IDENTITY_UUID : String(36);
  BPPERSON      : String(36);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISLOCKD {
  WRNG_LOGON : String(1);
  LOCAL_LOCK : String(1);
  GLOB_LOCK  : String(1);
  NO_USER_PW : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIMODDAT {
  MODDATE  : Date;
  MODTIME  : Time;
  MODIFIER : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPILOGOND {
  GLTGV           : Date;
  GLTGB           : Date;
  USTYP           : String(1);
  CLASS           : String(12);
  ACCNT           : String(12);
  TZONE           : String(6);
  LTIME           : Time;
  BCODE           : Binary(8);
  CODVN           : String(1);
  PASSCODE        : Binary(20);
  CODVC           : String(1);
  PWDSALTEDHASH   : String(255);
  CODVS           : String(1);
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
  PNAME   : String(255);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPITECHUSER {
  TECH_INDICATOR : String(1);

  @RFCAbapType: 'N'
  IDADTYPE       : String(2);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASS {
  LIC_TYPE          : String(2);
  SPEC_VERS         : String(2);
  COUNTRY_SURCHARGE : Decimal;
  SUBSTITUTE_FROM   : Date;
  SUBSTITUTE_UNTIL  : Date;
  SYSID             : String(8);
  CLIENT            : String(3);
  BNAME_CHARGEABLE  : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIAGR {
  AGR_NAME : String(30);
  FROM_DAT : Date;
  TO_DAT   : Date;
  AGR_TEXT : String(80);
  ORG_FLAG : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICOMREM {
  COMM_TYPE  : String(3);
  LANGU      : String(1);
  LANGU_ISO  : String(2);
  COMM_NOTES : String(50);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADFAX {
  COUNTRY    : String(3);
  COUNTRYISO : String(2);
  STD_NO     : String(1);
  FAX        : String(30);
  EXTENSION  : String(10);
  FAX_NO     : String(30);
  SENDER_NO  : String(30);
  FAX_GROUP  : String(1);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPAG {
  COUNTRY    : String(3);
  COUNTRYISO : String(2);
  STD_NO     : String(1);
  PAGER_TYPE : String(4);
  PAGER      : String(30);
  PAGER_NO   : String(30);
  CALLER_NO  : String(30);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPRT {
  STD_NO     : String(1);
  PRINT_DEST : String(4);
  STD_RECIP  : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRFC {
  STD_NO     : String(1);
  LOG_DEST   : String(32);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRML {
  STD_NO     : String(1);
  SYMB_DEST  : String(10);
  REC_TYPE   : String(1);
  R_MAIL_CLT : String(3);
  R_MAIL     : String(12);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSMTP {
  STD_NO     : String(1);
  E_MAIL     : String(241);
  EMAIL_SRCH : String(20);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  ENCODE     : String(1);
  TNEF       : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSSF {
  STD_NO     : String(1);
  DUMMY      : String(1);
  STD_RECIP  : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  RFCDEST    : String(32);
  SSFIDSHORT : String(132);
  SSF_NS     : String(10);
  SSF_PROF   : String(132);
  SSFIDPART1 : String(250);
  SSFIDPART2 : String(250);
  SSFIDPART3 : String(250);
  SSFIDPART4 : String(250);
  SSFIDPART5 : String(250);
  SSFIDPART6 : String(250);
  SSFIDPART7 : String(250);
  SSFIDPART8 : String(250);
  SSFIDPART9 : String(48);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTEL {
  COUNTRY    : String(3);
  COUNTRYISO : String(2);
  STD_NO     : String(1);
  TELEPHONE  : String(30);
  EXTENSION  : String(10);
  TEL_NO     : String(30);
  CALLER_NO  : String(30);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTLX {
  COUNTRY    : String(3);
  COUNTRYISO : String(2);
  STD_NO     : String(1);
  TELEX_NO   : String(30);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTTX {
  COUNTRY    : String(3);
  COUNTRYISO : String(2);
  STD_NO     : String(1);
  TELETEX    : String(30);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADURI {
  STD_NO     : String(1);
  URI_TYPE   : String(3);
  URI        : String(132);
  STD_RECIP  : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  URI_PART1  : String(250);
  URI_PART2  : String(250);
  URI_PART3  : String(250);
  URI_PART4  : String(250);
  URI_PART5  : String(250);
  URI_PART6  : String(250);
  URI_PART7  : String(250);
  URI_PART8  : String(250);
  URI_PART9  : String(48);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADX400 {
  STD_NO     : String(1);
  COUNTRY    : String(3);
  COUNTRYISO : String(2);
  ADM_DOM    : String(16);
  PRIV_DOM   : String(16);
  ORGANIZATN : String(64);
  ORG_UNIT_1 : String(32);
  ORG_UNIT_2 : String(32);
  ORG_UNIT_3 : String(32);
  ORG_UNIT_4 : String(32);
  LASTNAME   : String(40);
  FIRSTNAME  : String(16);
  INITIALS   : String(5);
  GENERATION : String(3);
  X_121_ADDR : String(15);
  TERM_ID    : String(24);
  TERM_TYPE  : String(1);
  UANID      : String(32);
  DDA_TYPE1  : String(8);
  DDA_VALUE1 : String(128);
  DDA_TYPE2  : String(8);
  DDA_VALUE2 : String(128);
  DDA_TYPE3  : String(8);
  DDA_VALUE3 : String(128);
  DDA_TYPE4  : String(8);
  DDA_VALUE4 : String(128);
  STD_RECIP  : String(1);
  R_3_USER   : String(1);
  TXT_ENCODE : String(1);
  TNEF       : String(1);
  HOME_FLAG  : String(1);

  @RFCAbapType: 'N'
  CONSNUMBER : String(3);
  ERRORFLAG  : String(1);
  FLG_NOUSE  : String(1);
  VALID_FROM : String(14);
  VALID_TO   : String(14);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDHEAD {
  @RFCAbapType: 'N'
  SEQ_NO_ID  : String(4);
  TYPE       : String(2);
  CODE_TYPE  : String(1);
  EXTID_LEN  : Integer;
  ISSUER_LEN : Integer;
  SERIAL_LEN : Integer;
  VALITYINFO : Binary(16);
  VERSION    : Integer;
  STATUS     : String(1);
  EXTFLAG    : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDPART {
  @RFCAbapType: 'N'
  SEQ_NO_ID   : String(4);
  FIELDNAME   : String(30);

  @RFCAbapType: 'N'
  SEQ_NO_PART : String(4);
  PART_DATA   : String(192);
  EXTFLAG     : String(4);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUID {
  EXTUID_TYPE : String(2);
  EXTUID      : String(241);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIGROUPS {
  USERGROUP : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM {
  PARID  : String(20);
  PARVA  : String(18);
  PARTXT : String(60);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM1 {
  PARID  : String(20);
  PARVA  : String(40);
  PARTXT : String(60);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPROF {
  BAPIPROF  : String(12);
  BAPIPTEXT : String(60);
  BAPITYPE  : String(1);
  BAPIAKTPS : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUIDHIST {
  SAP_UID : String(36);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIRCVSYS {
  SUBSYSTEM : String(10);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASSSYS {
  RCVSYSTEM         : String(10);
  LIC_TYPE          : String(2);
  SPEC_VERS         : String(2);
  COUNTRY_SURCHARGE : Decimal;
  SUBSTITUTE_FROM   : Date;
  SUBSTITUTE_UNTIL  : Date;
  SYSID             : String(8);
  CLIENT            : String(3);
  BNAME_CHARGEABLE  : String(12);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSATTRIBUTE {
  ATTR_TYPE : String(10);
  ATTR_ID   : String(20);
  ATTR_TEXT : String(60);
};

type SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE.ResultType {
  @RFCParameterType: 'Export'
  BILLING_PARTY      :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAYER;

  @RFCParameterType: 'Export'
  RETURN             :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIRETURN;

  @RFCParameterType: 'Export'
  SALESDOCUMENT      :      String(10);

  @RFCParameterType: 'Export'
  SHIP_TO_PARTY      :      SAP_ABAP_BACKEND_RFC.DDIC.BAPISHIPTO;

  @RFCParameterType: 'Export'
  SOLD_TO_PARTY      :      SAP_ABAP_BACKEND_RFC.DDIC.BAPISOLDTO;

  @RFCParameterType: 'Table'
  EXTENSIONIN        : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;

  @RFCParameterType: 'Table'
  MESSAGETABLE       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;

  @RFCParameterType: 'Table'
  ORDER_CCARD        : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD;

  @RFCParameterType: 'Table'
  ORDER_CCARD_EX     : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD_EX;

  @RFCParameterType: 'Table'
  ORDER_CFGS_BLOB    : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB;

  @RFCParameterType: 'Table'
  ORDER_CFGS_INST    : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS;

  @RFCParameterType: 'Table'
  ORDER_CFGS_PART_OF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT;

  @RFCParameterType: 'Table'
  ORDER_CFGS_REF     : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG;

  @RFCParameterType: 'Table'
  ORDER_CFGS_VALUE   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL;

  @RFCParameterType: 'Table'
  ORDER_CONDITION_EX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND;

  @RFCParameterType: 'Table'
  ORDER_INCOMPLETE   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIINCOMP;

  @RFCParameterType: 'Table'
  ORDER_ITEMS_IN     : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMIN;

  @RFCParameterType: 'Table'
  ORDER_ITEMS_OUT    : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMEX;

  @RFCParameterType: 'Table'
  ORDER_PARTNERS     : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARTNR;

  @RFCParameterType: 'Table'
  ORDER_SCHEDULE_EX  : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU;

  @RFCParameterType: 'Table'
  ORDER_SCHEDULE_IN  : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL;

  @RFCParameterType: 'Table'
  PARTNERADDRESSES   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEAD {
  DOC_NUMBER      : String(10);
  DOC_TYPE        : String(4);
  COLLECT_NO      : String(10);
  SALES_ORG       : String(4);
  DISTR_CHAN      : String(2);
  DIVISION        : String(2);
  SALES_GRP       : String(3);
  SALES_OFF       : String(4);
  REQ_DATE_H      : Date;
  DATE_TYPE       : String(1);
  PURCH_NO        : String(20);
  PURCH_DATE      : Date;
  PO_METHOD       : String(4);
  PO_SUPPLEM      : String(4);
  REF_1           : String(12);
  NAME            : String(30);
  TELEPHONE       : String(16);
  PRICE_GRP       : String(2);
  CUST_GROUP      : String(2);
  SALES_DIST      : String(6);
  PRICE_LIST      : String(2);
  INCOTERMS1      : String(3);
  INCOTERMS2      : String(28);
  PMNTTRMS        : String(4);
  DLV_BLOCK       : String(2);
  BILL_BLOCK      : String(2);
  ORD_REASON      : String(3);
  COMPL_DLV       : String(1);
  PRICE_DATE      : Date;
  QT_VALID_F      : Date;
  QT_VALID_T      : Date;
  CT_VALID_F      : Date;
  CT_VALID_T      : Date;
  CUST_GRP1       : String(3);
  CUST_GRP2       : String(3);
  CUST_GRP3       : String(3);
  CUST_GRP4       : String(3);
  CUST_GRP5       : String(3);
  PURCH_NO_C      : String(35);
  PURCH_NO_S      : String(35);
  PO_DAT_S        : Date;
  PO_METH_S       : String(4);
  REF_1_S         : String(12);
  SD_DOC_CAT      : String(1);
  SHIP_COND       : String(2);
  CURRENCY        : String(5);
  CURRENCY_ISO    : String(3);
  DLV_TIME        : String(3);
  CD_TYPE1        : String(4);
  CD_VALUE1       : Decimal;

  @RFCAbapType: 'N'
  CD_P_UNT1       : String(5);
  CD_D_UNT1       : String(3);
  CD_D_UISO1      : String(3);
  CD_CURR1        : String(5);
  CD_CU_ISO1      : String(3);
  CD_TYPE2        : String(4);
  CD_VALUE2       : Decimal;

  @RFCAbapType: 'N'
  CD_P_UNT2       : String(5);
  CD_D_UNT2       : String(3);
  CD_D_UISO2      : String(3);
  CD_CURR2        : String(5);
  CD_CU_ISO2      : String(3);
  CD_TYPE3        : String(4);
  CD_VALUE3       : Decimal;

  @RFCAbapType: 'N'
  CD_P_UNT3       : String(5);
  CD_D_UNT3       : String(3);
  CD_D_UISO3      : String(3);
  CD_CURR3        : String(5);
  CD_CU_ISO3      : String(3);
  CD_TYPE4        : String(4);
  CD_VALUE4       : Decimal;

  @RFCAbapType: 'N'
  CD_P_UNT4       : String(5);
  CD_D_UNT4       : String(3);
  CD_D_UISO4      : String(3);
  CD_CURR4        : String(5);
  CD_CU_ISO4      : String(3);
  FKK_CONACCT     : String(12);
  REF_DOC         : String(10);
  REF_DOC_CA      : String(1);
  SEPA_MANDATE_ID : String(35);
  SD_DOC_CAT_LONG : String(4);
  REF_DOC_CA_LONG : String(4);
  INCOTERMSV      : String(4);
  INCOTERMS2L     : String(70);
  INCOTERMS3L     : String(70);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAYER {
  PAYER      : String(10);
  NAME       : String(35);
  STREET     : String(30);
  PO_BOX     : String(10);
  POSTL_CODE : String(10);
  POBX_PCD   : String(10);
  CITY       : String(25);
  LANGU      : String(1);
  COUNTRY    : String(3);
  TELEPHONE  : String(16);
  C_CTR_AREA : String(4);
  CRED_ACCNT : String(10);
  CRED_LIMIT : Decimal;
  ORDER_VALS : Decimal;
  RCVBL_VALS : Decimal;
  CRED_LIAB  : Decimal;
  CURRENCY   : String(5);
  MN_INVOICE : String(1);
  BILL_SCHED : String(2);
  LIST_SCHED : String(2);
  VAL_LIMIT  : Decimal;
  ACCNT_ASGN : String(2);
  PMNTTRMS   : String(4);

  @RFCAbapType: 'N'
  ADD_VAL_DY : String(2);
  FIX_VAL_DY : Date;
  PROD_PROP  : String(10);
  BILL_BLOCK : String(2);
  ORDER_BLCK : String(2);
  VAT_REG_NO : String(20);
  VAT_CNTRY  : String(3);
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
  TRADE_ID   : String(6);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIRETURN {
  TYPE       : String(1);
  CODE       : String(5);
  MESSAGE    : String(220);
  LOG_NO     : String(20);

  @RFCAbapType: 'N'
  LOG_MSG_NO : String(6);
  MESSAGE_V1 : String(50);
  MESSAGE_V2 : String(50);
  MESSAGE_V3 : String(50);
  MESSAGE_V4 : String(50);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISHIPTO {
  SHIP_TO    : String(10);
  NAME       : String(35);
  STREET     : String(30);
  PO_BOX     : String(10);
  POSTL_CODE : String(10);
  POBX_PCD   : String(10);
  CITY       : String(25);
  LANGU      : String(1);
  DEST_CNTRY : String(3);
  TRNSP_ZONE : String(10);
  TRAIN_STAT : String(25);
  EXPR_STAT  : String(25);
  TELEPHONE  : String(16);
  UNLOAD_PT  : String(25);
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
  REGION     : String(3);
  COUNTY_CDE : String(3);
  CITY_CODE  : String(4);
  TAXJURCODE : String(15);
  CTRDATA_OK : String(1);
  DLV_PLANT  : String(4);
  DLV_BLOCK  : String(2);
  ORDER_BLCK : String(2);
  PROD_PROP  : String(10);
  SHIP_COND  : String(2);
  ACC_1_TIME : String(1);
  ACCNT_GRP  : String(4);
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
  SOLD_TO         : String(10);
  NAME            : String(35);
  STREET          : String(30);
  PO_BOX          : String(10);
  POSTL_CODE      : String(10);
  POBX_PCD        : String(10);
  CITY            : String(25);
  LANGU           : String(1);
  COUNTRY         : String(3);
  TELEPHONE       : String(16);
  STAT_GROUP      : String(1);
  ORDER_BLCK      : String(2);
  PRC_PROCED      : String(1);
  CUST_GROUP      : String(2);
  SALES_DIST      : String(6);
  PRICE_GRP       : String(2);
  PRICE_LIST      : String(2);
  INCOTERMS1      : String(3);
  INCOTERMS2      : String(28);
  COMPL_DLV       : String(1);
  MAX_PL_DLV      : Decimal;
  ORDER_COMB      : String(1);
  BTCH_SPLIT      : String(1);

  @RFCAbapType: 'N'
  DLV_PRIO        : String(2);
  CURRENCY        : String(5);
  EXCHG_RATE      : String(4);
  SHIP_COND       : String(2);
  PART_DLV        : String(1);

  @RFCAbapType: 'N'
  ORDER_PROB      : String(3);
  DLV_BLOCK       : String(2);
  PROD_PROP       : String(10);
  ACC_1_TIME      : String(1);
  SALES_OFF       : String(4);
  SALES_GRP       : String(3);
  VAT_REG_NO      : String(20);
  TAX_CLASS1      : String(1);
  TAX_CLASS2      : String(1);
  TAX_CLASS3      : String(1);
  TAX_CLASS4      : String(1);
  TAX_CLASS5      : String(1);
  TAX_CLASS6      : String(1);
  TAX_CLASS7      : String(1);
  TAX_CLASS8      : String(1);
  TAX_CLASS9      : String(1);
  COMPANY_ID      : String(6);
  INCOTERMSV      : String(4);
  INCOTERMS2L     : String(70);
  INCOTERMS3L     : String(70);
  PRC_PROCED_LONG : String(2);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX {
  STRUCTURE  : String(30);
  VALUEPART1 : String(240);
  VALUEPART2 : String(240);
  VALUEPART3 : String(240);
  VALUEPART4 : String(240);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD {
  CC_TYPE        : String(4);
  CC_NUMBER      : String(25);
  CC_VALID_T     : Date;
  CC_NAME        : String(40);
  BILLAMOUNT     : Decimal;
  AUTH_FLAG      : String(1);
  AUTHAMOUNT     : Decimal;
  CURRENCY       : String(5);
  CURR_ISO       : String(3);
  AUTH_DATE      : Date;
  AUTH_TIME      : Time;
  AUTH_CC_NO     : String(10);
  AUTH_REFNO     : String(15);
  CC_REACT       : String(1);
  CC_RE_AMOUNT   : Decimal;
  GL_ACCOUNT     : String(10);
  CC_STAT_EX     : String(1);
  CC_REACT_T     : String(40);
  VIRT_CARD      : String(1);
  MERCHIDCL      : String(15);
  PRE_AUTH       : String(1);
  CC_SEQ_NO      : String(10);
  AMOUNTCHAN     : String(1);
  AUTHORTYPE     : String(1);
  DATAORIGIN     : String(1);
  RADRCHECK1     : String(4);
  RADRCHECK2     : String(4);
  RADRCHECK3     : String(4);
  RCARDCHECK     : String(4);
  CC_LIMITED     : String(1);
  CC_VERIF_VALUE : String(6);
  CC_CTRL_FIELD  : String(1);
  CC_IN_USE_ST   : String(1);
  CC_TOKEN       : String(25);
  DP_PSP         : String(4);
  DP_PAYID       : String(40);
  DP_PSP_TRANSID : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD_EX {
  PAY_TYPE     : String(1);
  CC_TYPE      : String(4);
  CC_NUMBER    : String(25);
  CC_SEQ_NO    : String(10);
  CC_VALID_F   : Date;
  CC_VALID_T   : Date;
  CC_NAME      : String(40);
  AUTHAMOUNT   : Decimal;
  CURRENCY     : String(5);
  CURR_ISO     : String(3);
  AUTH_DATE    : Date;
  AUTH_TIME    : Time;
  MERCHIDCL    : String(15);
  TERMINAL     : String(10);
  BILLAMOUNT   : Decimal;
  CC_LI_AMOUNT : String(1);
  CC_AUTTH_NO  : String(10);
  BILLSTATUS   : String(1);
  DATAORIGIN   : String(1);
  CC_SETTLED   : String(1);
  AUTH_REFNO   : String(15);
  PTOFRCPT     : String(10);
  CC_REACT     : String(1);
  AUTH_FLAG    : String(1);
  BILL_PLAN    : String(10);

  @RFCAbapType: 'N'
  BILL_PLANI   : String(6);
  CC_RE_AMOUNT : Decimal;
  GL_ACCOUNT   : String(10);
  CC_STAT_EX   : String(1);
  CC_REACT_T   : String(40);
  RFCAUT       : String(32);
  AUT_SETINIT  : String(30);
  AUT_SETINFO  : String(30);
  PRE_AUTH     : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB {
  CONFIG_ID : String(6);
  CONTEXT   : String(250);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS {
  CONFIG_ID       : String(6);
  INST_ID         : String(8);
  OBJ_TYPE        : String(10);
  CLASS_TYPE      : String(3);
  OBJ_KEY         : String(50);
  OBJ_TXT         : String(70);
  QUANTITY        : String(15);
  AUTHOR          : String(1);
  QUANTITY_UNIT   : String(3);
  COMPLETE        : String(1);
  CONSISTENT      : String(1);
  OBJECT_GUID     : String(32);
  PERSIST_ID      : String(32);
  PERSIST_ID_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT {
  CONFIG_ID      : String(6);
  PARENT_ID      : String(8);
  INST_ID        : String(8);
  PART_OF_NO     : String(4);
  OBJ_TYPE       : String(10);
  CLASS_TYPE     : String(3);
  OBJ_KEY        : String(50);
  AUTHOR         : String(1);
  SALES_RELEVANT : String(1);
  PART_OF_GUID   : String(32);
  BOM_IDENT      : String(8);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG {
  POSEX         : String(6);
  CONFIG_ID     : String(6);
  ROOT_ID       : String(8);
  SCE           : String(1);
  KBNAME        : String(30);
  KBVERSION     : String(30);
  COMPLETE      : String(1);
  CONSISTENT    : String(1);
  CFGINFO       : String(250);
  KBPROFILE     : String(30);
  KBLANGUAGE    : String(1);
  CBASE_ID      : String(32);
  CBASE_ID_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL {
  CONFIG_ID     : String(6);
  INST_ID       : String(8);
  CHARC         : String(40);
  CHARC_TXT     : String(70);
  VALUE         : String(40);
  VALUE_TXT     : String(70);
  AUTHOR        : String(1);
  VALUE_TO      : String(40);
  VALCODE       : String(1);
  VALUE_LONG    : String(70);
  VALUE_TO_LONG : String(70);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND {
  @RFCAbapType: 'N'
  ITM_NUMBER      : String(6);

  @RFCAbapType: 'N'
  COND_ST_NO      : String(3);

  @RFCAbapType: 'N'
  COND_COUNT      : String(2);
  COND_TYPE       : String(4);
  COND_VALUE      : Decimal;
  CURRENCY        : String(5);
  COND_UNIT       : String(3);
  COND_P_UNT      : Decimal;
  CURR_ISO        : String(3);
  CD_UNT_ISO      : String(3);
  REFOBJTYPE      : String(10);
  REFOBJKEY       : String(70);
  REFLOGSYS       : String(10);
  APPLICATIO      : String(2);
  CONPRICDAT      : Date;
  CALCTYPCON      : String(1);
  CONBASEVAL      : Decimal;
  CONEXCHRAT      : Decimal;
  NUMCONVERT      : Decimal;
  DENOMINATO      : Decimal;
  CONDTYPE        : String(1);
  STAT_CON        : String(1);
  SCALETYPE       : String(1);
  ACCRUALS        : String(1);
  CONINVOLST      : String(1);
  CONDORIGIN      : String(1);
  GROUPCOND       : String(1);
  COND_UPDAT      : String(1);

  @RFCAbapType: 'N'
  ACCESS_SEQ      : String(2);

  @RFCAbapType: 'N'
  CONDCOUNT       : String(2);
  ROUNDOFFDI      : Decimal;
  CONDVALUE       : Decimal;
  CURRENCY_2      : String(5);
  CURR_ISO_2      : String(3);
  CONDCNTRL       : String(1);
  CONDISACTI      : String(1);
  CONDCLASS       : String(1);
  FACTBASVAL      : Double;
  SCALEBASIN      : String(1);
  SCALBASVAL      : Decimal;
  UNITMEASUR      : String(3);
  ISO_UNIT        : String(3);
  CURRENCKEY      : String(5);
  CURRENISO       : String(3);
  CONDINCOMP      : String(1);
  CONDCONFIG      : String(1);
  CONDCHAMAN      : String(1);
  COND_NO         : String(10);
  TAX_CODE        : String(2);
  VARCOND         : String(26);
  ACCOUNTKEY      : String(3);
  ACCOUNT_KE      : String(3);
  WT_WITHCD       : String(2);
  STRUCTCOND      : String(1);
  FACTCONBAS      : Double;

  @RFCAbapType: 'N'
  CONDCOINHD      : String(2);

  @RFCAbapType: 'N'
  ACCESS_SEQ_LONG : String(3);

  @RFCAbapType: 'N'
  COND_COUNT_LONG : String(3);

  @RFCAbapType: 'N'
  CONDCOINHD_LONG : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIINCOMP {
  DOC_NUMBER : String(10);

  @RFCAbapType: 'N'
  ITM_NUMBER : String(6);

  @RFCAbapType: 'N'
  SCHED_LINE : String(4);
  PARTN_ROLE : String(2);
  TABLE_NAME : String(30);
  FIELD_NAME : String(30);
  FIELD_TEXT : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMIN {
  @RFCAbapType: 'N'
  ITM_NUMBER      : String(6);

  @RFCAbapType: 'N'
  HG_LV_ITEM      : String(6);
  PO_ITM_NO       : String(6);
  MATERIAL        : String(18);
  CUST_MAT        : String(22);
  BATCH           : String(10);

  @RFCAbapType: 'N'
  DLV_GROUP       : String(3);
  PART_DLV        : String(1);
  REASON_REJ      : String(2);
  BILL_BLOCK      : String(2);
  BILL_DATE       : Date;
  PLANT           : String(4);
  STORE_LOC       : String(4);

  @RFCAbapType: 'N'
  TARGET_QTY      : String(13);
  TARGET_QU       : String(3);

  @RFCAbapType: 'N'
  REQ_QTY         : String(13);
  SALES_UNIT      : String(3);
  ITEM_CATEG      : String(4);
  SHORT_TEXT      : String(40);
  REQ_DATE        : Date;
  DATE_TYPE       : String(1);
  REQ_TIME        : Time;
  COND_TYPE       : String(4);
  COND_VALUE      : Decimal;

  @RFCAbapType: 'N'
  COND_P_UNT      : String(5);
  COND_D_UNT      : String(3);
  PRC_GROUP1      : String(3);
  PRC_GROUP2      : String(3);
  PRC_GROUP3      : String(3);
  PRC_GROUP4      : String(3);
  PRC_GROUP5      : String(3);
  PROD_HIERA      : String(18);
  MATL_GROUP      : String(9);
  PURCH_NO_C      : String(35);
  PURCH_DATE      : Date;
  PO_METHOD       : String(4);
  REF_1           : String(12);
  PURCH_NO_S      : String(35);
  PO_DAT_S        : Date;
  PO_METH_S       : String(4);
  REF_1_S         : String(12);
  PO_ITM_NO_S     : String(6);
  COND_VAL1       : Decimal;
  CURRENCY        : String(5);
  CURR_ISO        : String(3);
  T_UNIT_ISO      : String(3);
  S_UNIT_ISO      : String(3);
  CD_UNT_ISO      : String(3);
  CUST_MAT35      : String(35);
  INCOTERMS1      : String(3);
  INCOTERMS2      : String(28);
  DLV_TIME        : String(3);
  ASSORT_MOD      : String(18);
  VAL_CONTR       : String(10);

  @RFCAbapType: 'N'
  VAL_CON_I       : String(6);
  REF_DOC         : String(10);

  @RFCAbapType: 'N'
  REF_DOC_IT      : String(6);
  REF_DOC_CA      : String(1);
  CD_TYPE2        : String(4);
  CD_VALUE2       : Decimal;

  @RFCAbapType: 'N'
  CD_P_UNT2       : String(5);
  CD_D_UNT2       : String(3);
  CD_D_UISO2      : String(3);
  CD_CURR2        : String(5);
  CD_CU_ISO2      : String(3);
  CD_TYPE3        : String(4);
  CD_VALUE3       : Decimal;

  @RFCAbapType: 'N'
  CD_P_UNT3       : String(5);
  CD_D_UNT3       : String(3);
  CD_D_UISO3      : String(3);
  CD_CURR3        : String(5);
  CD_CU_ISO3      : String(3);
  CD_TYPE4        : String(4);
  CD_VALUE4       : Decimal;

  @RFCAbapType: 'N'
  CD_P_UNT4       : String(5);
  CD_D_UNT4       : String(3);
  CD_D_UISO4      : String(3);
  CD_CURR4        : String(5);
  CD_CU_ISO4      : String(3);
  MAT_EXT         : String(40);
  MAT_GUID        : String(32);
  MAT_VERS        : String(10);
  ALTERN_BOM      : String(2);
  FKK_CONACCT     : String(12);
  EAN_UPC         : String(18);
  SHIP_POINT      : String(4);
  PRODCAT         : String(10);
  SGT_RCAT        : String(16);
  INCOTERMSV      : String(4);
  INCOTERMS2L     : String(70);
  INCOTERMS3L     : String(70);
  REF_DOC_CA_LONG : String(4);
  MATERIAL_LONG   : String(40);
  REQ_SEG_LONG    : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIITEMEX {
  @RFCAbapType: 'N'
  ITM_NUMBER     : String(6);
  PO_ITM_NO      : String(6);
  MATERIAL       : String(18);
  MAT_ENTRD      : String(18);
  SHORT_TEXT     : String(40);

  @RFCAbapType: 'N'
  NET_VALUE      : String(15);
  CURRENCY       : String(5);

  @RFCAbapType: 'N'
  SUBTOTAL_1     : String(15);

  @RFCAbapType: 'N'
  SUBTOTAL_2     : String(15);

  @RFCAbapType: 'N'
  SUBTOTAL_3     : String(15);

  @RFCAbapType: 'N'
  SUBTOTAL_4     : String(15);

  @RFCAbapType: 'N'
  SUBTOTAL_5     : String(15);

  @RFCAbapType: 'N'
  SUBTOTAL_6     : String(15);
  SALES_UNIT     : String(3);

  @RFCAbapType: 'N'
  QTY_REQ_DT     : String(13);
  DLV_DATE       : Date;

  @RFCAbapType: 'N'
  REPL_TIME      : String(3);
  CONFIGURED     : String(1);
  PURCH_NO_C     : String(35);
  PURCH_DATE     : Date;
  PO_METHOD      : String(4);
  REF_1          : String(12);
  PURCH_NO_S     : String(35);
  PO_DAT_S       : Date;
  PO_METH_S      : String(4);
  REF_1_S        : String(12);
  PO_ITM_NO_S    : String(6);
  NET_VALUE1     : Decimal;
  CURR_ISO       : String(3);
  S_UNIT_ISO     : String(3);
  REQ_QTY        : Decimal;
  PLANT          : String(4);
  TX_DOC_CUR     : Decimal;
  MAT_EXT        : String(40);
  MAT_GUID       : String(32);
  MAT_VERS       : String(10);
  MAT_E_EXT      : String(40);
  MAT_E_GUID     : String(32);
  MAT_E_VERS     : String(10);
  TARGET_QTY     : Decimal;
  TARGET_QU      : String(3);
  T_UNIT_ISO     : String(3);
  ITEM_CATEG     : String(4);
  SHIP_POINT     : String(4);

  @RFCAbapType: 'N'
  HG_LV_ITEM     : String(6);
  CUST_MAT       : String(35);
  PART_DLV       : String(1);
  REASON_REJ     : String(2);
  BILL_BLOCK     : String(2);
  STGE_LOC       : String(4);
  PROD_HIER      : String(18);
  MATL_GROUP     : String(9);
  SUBTOTAL1      : Decimal;
  SUBTOTAL2      : Decimal;
  SUBTOTAL3      : Decimal;
  SUBTOTAL4      : Decimal;
  SUBTOTAL5      : Decimal;
  SUBTOTAL6      : Decimal;
  MATERIAL_LONG  : String(40);
  MAT_ENTRD_LONG : String(40);
  REQ_SEGMENT    : String(16);
  REQ_SEG_LONG   : String(40);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARTNR {
  PARTN_ROLE  : String(2);
  PARTN_NUMB  : String(10);

  @RFCAbapType: 'N'
  ITM_NUMBER  : String(6);
  TITLE       : String(15);
  NAME        : String(35);
  NAME_2      : String(35);
  NAME_3      : String(35);
  NAME_4      : String(35);
  STREET      : String(35);
  COUNTRY     : String(3);
  COUNTRY_ISO : String(2);
  POSTL_CODE  : String(10);
  POBX_PCD    : String(10);
  POBX_CTY    : String(35);
  CITY        : String(35);
  DISTRICT    : String(35);
  REGION      : String(3);
  PO_BOX      : String(10);
  TELEPHONE   : String(16);
  TELEPHONE2  : String(16);
  TELEBOX     : String(15);
  FAX_NUMBER  : String(31);
  TELETEX_NO  : String(30);
  TELEX_NO    : String(30);
  LANGU       : String(1);
  LANGU_ISO   : String(2);
  UNLOAD_PT   : String(25);
  TRANSPZONE  : String(10);
  TAXJURCODE  : String(15);
  ADDRESS     : String(10);
  PRIV_ADDR   : String(10);
  ADDR_TYPE   : String(1);
  ADDR_ORIG   : String(1);
  ADDR_LINK   : String(10);
  VAT_REG_NO  : String(20);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU {
  OPERATION  : String(3);
  DOC_NUMBER : String(10);

  @RFCAbapType: 'N'
  ITM_NUMBER : String(6);

  @RFCAbapType: 'N'
  SCHED_LINE : String(4);
  SCHED_TYPE : String(2);
  RELFORDEL  : String(1);
  REQ_DATE   : Date;
  REQ_TIME   : Time;
  REQ_QTY    : Decimal;
  CONFIR_QTY : Decimal;
  SALES_UNIT : String(3);
  ISOCODUNIT : String(3);
  REQ_QTY1   : Decimal;
  BASE_UOM   : String(3);
  ISOBASUNIT : String(3);
  REQ_DATE1  : Date;
  REQ_TYPE   : String(2);
  PLTYPE     : String(1);
  BUSIDOCNR  : String(10);

  @RFCAbapType: 'N'
  BUSIITNR   : String(6);

  @RFCAbapType: 'N'
  SCHED_LIN1 : String(4);
  EARL_DATE  : Date;

  @RFCAbapType: 'N'
  MAINT_REQ  : String(10);
  PREQ_NO    : String(10);
  PO_TYPE    : String(4);
  DOC_CAT    : String(1);
  CONF_STAT  : String(1);
  IR_IND     : String(1);
  RETURNDATE : Date;
  DATE_TYPE  : String(1);
  TP_DATE    : Date;
  MS_DATE    : Date;
  LOAD_DATE  : Date;
  GI_DATE    : Date;
  CORR_QTY   : Decimal;
  REQ_DLV_BL : String(2);

  @RFCAbapType: 'N'
  GRP_DEFIN  : String(3);
  RELEASTYP  : String(1);

  @RFCAbapType: 'N'
  FORCAST_NR : String(10);
  COMMIT_QTY : Decimal;
  SIZE2      : Decimal;
  SIZE3      : Decimal;
  UNIT_MEAS  : String(3);
  ISO_ROMEI  : String(3);
  FORMULAKEY : String(2);
  SALESQTYNR : Decimal;
  SALESQTYDE : Decimal;
  AVAIL_CON  : String(1);
  MOVE_TYPE  : String(3);

  @RFCAbapType: 'N'
  PREQ_ITEM  : String(5);
  LINTYP_EDI : String(1);
  ORDERID    : String(12);
  PLANORDNR  : String(10);
  BOMEXPL_NO : String(8);
  CUSTCHSTAT : String(17);
  GURANTEED  : Double;
  MS_TIME    : Time;
  TP_TIME    : Time;
  LOAD_TIME  : Time;
  GI_TIME    : Time;
  ROUTESCHED : String(10);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL {
  @RFCAbapType: 'N'
  ITM_NUMBER      : String(6);

  @RFCAbapType: 'N'
  SCHED_LINE      : String(4);
  REQ_DATE        : Date;
  DATE_TYPE       : String(1);
  REQ_TIME        : Time;
  REQ_QTY         : Decimal;
  REQ_DLV_BL      : String(2);
  SCHED_TYPE      : String(2);
  TP_DATE         : Date;
  MS_DATE         : Date;
  LOAD_DATE       : Date;
  GI_DATE         : Date;
  TP_TIME         : Time;
  MS_TIME         : Time;
  LOAD_TIME       : Time;
  GI_TIME         : Time;
  REFOBJTYPE      : String(10);
  REFOBJKEY       : String(70);
  REFLOGSYS       : String(10);
  DLV_DATE        : Date;
  DLV_TIME        : Time;
  REL_TYPE        : String(1);
  PLAN_SCHED_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1 {
  ADDR_NO          : String(10);
  FORMOFADDR       : String(20);
  NAME             : String(40);
  NAME_2           : String(40);
  NAME_3           : String(40);
  NAME_4           : String(40);
  C_O_NAME         : String(40);
  CITY             : String(40);
  DISTRICT         : String(40);
  CITY_NO          : String(12);
  POSTL_COD1       : String(10);
  POSTL_COD2       : String(10);
  POSTL_COD3       : String(10);
  PO_BOX           : String(10);
  PO_BOX_CIT       : String(40);
  DELIV_DIS        : String(15);
  STREET           : String(40);
  STREET_NO        : String(12);
  STR_ABBR         : String(2);
  HOUSE_NO         : String(10);
  STR_SUPPL1       : String(40);
  STR_SUPPL2       : String(40);
  LOCATION         : String(40);
  BUILDING         : String(10);
  FLOOR            : String(10);
  ROOM_NO          : String(10);
  COUNTRY          : String(3);
  LANGU            : String(1);
  REGION           : String(3);
  SORT1            : String(20);
  SORT2            : String(20);
  TIME_ZONE        : String(6);
  TAXJURCODE       : String(15);
  ADR_NOTES        : String(50);
  COMM_TYPE        : String(3);
  TEL1_NUMBR       : String(30);
  TEL1_EXT         : String(10);
  FAX_NUMBER       : String(30);
  FAX_EXTENS       : String(10);
  STREET_LNG       : String(60);
  DISTRCT_NO       : String(8);
  CHCKSTATUS       : String(1);
  PBOXCIT_NO       : String(12);
  TRANSPZONE       : String(10);
  HOUSE_NO2        : String(10);
  E_MAIL           : String(241);
  STR_SUPPL3       : String(40);
  TITLE            : String(30);
  COUNTRYISO       : String(2);
  LANGU_ISO        : String(2);
  BUILD_LONG       : String(20);
  REGIOGROUP       : String(8);
  HOME_CITY        : String(40);
  HOMECITYNO       : String(12);
  PCODE1_EXT       : String(10);
  PCODE2_EXT       : String(10);
  PCODE3_EXT       : String(10);
  PO_W_O_NO        : String(1);
  PO_BOX_REG       : String(3);
  POBOX_CTRY       : String(3);
  PO_CTRYISO       : String(2);
  HOMEPAGE         : String(132);
  DONT_USE_S       : String(4);
  DONT_USE_P       : String(4);
  HOUSE_NO3        : String(10);
  LANGU_CR         : String(1);
  LANGUCRISO       : String(2);
  PO_BOX_LOBBY     : String(40);
  DELI_SERV_TYPE   : String(4);
  DELI_SERV_NUMBER : String(10);
  URI_TYPE         : String(3);
  COUNTY_CODE      : String(8);
  COUNTY           : String(40);
  TOWNSHIP_CODE    : String(8);
  TOWNSHIP         : String(40);
  XPCPT            : String(1);
};

type SAP_ABAP_BACKEND_RFC.BAPI_INQUIRY_CREATEFROMDATA2.ResultType {
  @RFCParameterType: 'Export'
  SALESDOCUMENT          :      String(10);

  @RFCParameterType: 'Table'
  EXTENSIONEX            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;

  @RFCParameterType: 'Table'
  EXTENSIONIN            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;

  @RFCParameterType: 'Table'
  INQUIRY_CFGS_BLOB      : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB;

  @RFCParameterType: 'Table'
  INQUIRY_CFGS_INST      : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS;

  @RFCParameterType: 'Table'
  INQUIRY_CFGS_PART_OF   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT;

  @RFCParameterType: 'Table'
  INQUIRY_CFGS_REF       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG;

  @RFCParameterType: 'Table'
  INQUIRY_CFGS_REFINST   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF;

  @RFCParameterType: 'Table'
  INQUIRY_CFGS_VALUE     : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL;

  @RFCParameterType: 'Table'
  INQUIRY_CFGS_VK        : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK;

  @RFCParameterType: 'Table'
  INQUIRY_CONDITIONS_IN  : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND;

  @RFCParameterType: 'Table'
  INQUIRY_CONDITIONS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX;

  @RFCParameterType: 'Table'
  INQUIRY_ITEMS_IN       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM;

  @RFCParameterType: 'Table'
  INQUIRY_ITEMS_INX      : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX;

  @RFCParameterType: 'Table'
  INQUIRY_KEYS           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY;

  @RFCParameterType: 'Table'
  INQUIRY_PARTNERS       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR;

  @RFCParameterType: 'Table'
  INQUIRY_SCHEDULES_IN   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL;

  @RFCParameterType: 'Table'
  INQUIRY_SCHEDULES_INX  : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX;

  @RFCParameterType: 'Table'
  INQUIRY_TEXT           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT;

  @RFCParameterType: 'Table'
  PARTNERADDRESSES       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1;

  @RFCParameterType: 'Table'
  RETURN                 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1 {
  REFOBJTYPE           : String(10);
  REFOBJKEY            : String(70);
  REFDOCTYPE           : String(10);
  DOC_TYPE             : String(4);
  COLLECT_NO           : String(10);
  SALES_ORG            : String(4);
  DISTR_CHAN           : String(2);
  DIVISION             : String(2);
  SALES_GRP            : String(3);
  SALES_OFF            : String(4);
  REQ_DATE_H           : Date;
  DATE_TYPE            : String(1);
  PURCH_DATE           : Date;
  PO_METHOD            : String(4);
  PO_SUPPLEM           : String(4);
  REF_1                : String(12);
  NAME                 : String(35);
  TELEPHONE            : String(16);
  PRICE_GRP            : String(2);
  CUST_GROUP           : String(2);
  SALES_DIST           : String(6);
  PRICE_LIST           : String(2);
  INCOTERMS1           : String(3);
  INCOTERMS2           : String(28);
  PMNTTRMS             : String(4);
  DLV_BLOCK            : String(2);
  BILL_BLOCK           : String(2);
  ORD_REASON           : String(3);
  COMPL_DLV            : String(1);
  PRICE_DATE           : Date;
  QT_VALID_F           : Date;
  QT_VALID_T           : Date;
  CT_VALID_F           : Date;
  CT_VALID_T           : Date;
  CUST_GRP1            : String(3);
  CUST_GRP2            : String(3);
  CUST_GRP3            : String(3);
  CUST_GRP4            : String(3);
  CUST_GRP5            : String(3);
  PURCH_NO_C           : String(35);
  PURCH_NO_S           : String(35);
  PO_DAT_S             : Date;
  PO_METH_S            : String(4);
  REF_1_S              : String(12);
  SD_DOC_CAT           : String(1);
  DOC_DATE             : Date;
  WAR_DATE             : Date;
  SHIP_COND            : String(2);
  PP_SEARCH            : String(40);
  DUN_COUNT            : Decimal;
  DUN_DATE             : Date;
  DLVSCHDUSE           : String(3);
  PLDLVSTYP            : String(1);
  REF_DOC              : String(10);
  COMP_CDE_B           : String(4);
  ALTTAX_CLS           : String(1);
  TAX_CLASS2           : String(1);
  TAX_CLASS3           : String(1);
  TAX_CLASS4           : String(1);
  TAX_CLASS5           : String(1);
  TAX_CLASS6           : String(1);
  TAX_CLASS7           : String(1);
  TAX_CLASS8           : String(1);
  TAX_CLASS9           : String(1);
  REF_DOC_L            : String(16);
  ASS_NUMBER           : String(18);
  REFDOC_CAT           : String(1);
  ORDCOMB_IN           : String(1);
  BILL_SCHED           : String(2);
  INVO_SCHED           : String(2);
  MN_INVOICE           : String(1);
  EXRATE_FI            : Decimal;

  @RFCAbapType: 'N'
  ADD_VAL_DY           : String(2);
  FIX_VAL_DY           : Date;
  PYMT_METH            : String(1);
  ACCNT_ASGN           : String(2);
  EXCHG_RATE           : Decimal;
  BILL_DATE            : Date;
  SERV_DATE            : Date;
  DUNN_KEY             : String(1);
  DUNN_BLOCK           : String(1);
  PMTGAR_PRO           : String(6);
  DEPARTM_NO           : String(4);
  REC_POINT            : String(25);
  DOC_NUM_FI           : String(10);
  CSTCNDGRP1           : String(2);
  CSTCNDGRP2           : String(2);
  CSTCNDGRP3           : String(2);
  CSTCNDGRP4           : String(2);
  CSTCNDGRP5           : String(2);
  DLV_TIME             : String(3);
  CURRENCY             : String(5);
  CURR_ISO             : String(3);
  CREATED_BY           : String(12);
  TAXDEP_CTY           : String(3);
  TAXDST_CTY           : String(3);
  EUTRI_DEAL           : String(1);
  MAST_CONTR           : String(10);
  REF_PROC             : String(4);
  CHKPRTAUTH           : String(1);
  CMLQTY_DAT           : Date;
  VERSION              : String(12);
  NOTIF_NO             : String(12);
  WBS_ELEM             : String(24);
  EXCH_RATE_FI_V       : Decimal;
  EXCHG_RATE_V         : Decimal;
  FKK_CONACCT          : String(12);
  CAMPAIGN             : Binary(16);
  DOC_CLASS            : String(9);
  H_CURR               : String(5);
  H_CURR_ISO           : String(3);
  SHIP_TYPE            : String(2);
  S_PROC_IND           : String(4);
  REF_DOC_L_LONG       : String(35);
  LINE_TIME            : Time;
  CALC_MOTIVE          : String(2);
  PSM_PSTNG_DATE       : Date;
  TREASURY_ACC_SYMBOL  : String(30);
  BUSINESS_EVENT_TCODE : String(10);
  MODIFICATION_ALLOWED : String(1);
  CANCELLATION_ALLOWED : String(1);
  PAYMENT_METHODS      : String(10);
  BUSINESS_PARTNER_NO  : String(6);
  REPORTING_FREQ       : String(3);
  SEPA_MANDATE_ID      : String(35);
  SD_DOC_CAT_LONG      : String(4);
  REFDOC_CAT_LONG      : String(4);
  INCOTERMSV           : String(4);
  INCOTERMS2L          : String(70);
  INCOTERMS3L          : String(70);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHD1X {
  UPDATEFLAG           : String(1);
  DOC_TYPE             : String(1);
  COLLECT_NO           : String(1);
  SALES_ORG            : String(1);
  DISTR_CHAN           : String(1);
  DIVISION             : String(1);
  SALES_GRP            : String(1);
  SALES_OFF            : String(1);
  REQ_DATE_H           : String(1);
  DATE_TYPE            : String(1);
  PURCH_DATE           : String(1);
  PO_METHOD            : String(1);
  PO_SUPPLEM           : String(1);
  REF_1                : String(1);
  NAME                 : String(1);
  TELEPHONE            : String(1);
  PRICE_GRP            : String(1);
  CUST_GROUP           : String(1);
  SALES_DIST           : String(1);
  PRICE_LIST           : String(1);
  INCOTERMS1           : String(1);
  INCOTERMS2           : String(1);
  PMNTTRMS             : String(1);
  DLV_BLOCK            : String(1);
  BILL_BLOCK           : String(1);
  ORD_REASON           : String(1);
  COMPL_DLV            : String(1);
  PRICE_DATE           : String(1);
  QT_VALID_F           : String(1);
  QT_VALID_T           : String(1);
  CT_VALID_F           : String(1);
  CT_VALID_T           : String(1);
  CUST_GRP1            : String(1);
  CUST_GRP2            : String(1);
  CUST_GRP3            : String(1);
  CUST_GRP4            : String(1);
  CUST_GRP5            : String(1);
  PURCH_NO_C           : String(1);
  PURCH_NO_S           : String(1);
  PO_DAT_S             : String(1);
  PO_METH_S            : String(1);
  REF_1_S              : String(1);
  SD_DOC_CAT           : String(1);
  DOC_DATE             : String(1);
  WAR_DATE             : String(1);
  SHIP_COND            : String(1);
  PP_SEARCH            : String(1);
  DUN_COUNT            : String(1);
  DUN_DATE             : String(1);
  DLVSCHDUSE           : String(1);
  PLDLVSTYP            : String(1);
  REF_DOC              : String(1);
  COMP_CDE_B           : String(1);
  ALTTAX_CLS           : String(1);
  TAX_CLASS2           : String(1);
  TAX_CLASS3           : String(1);
  TAX_CLASS4           : String(1);
  TAX_CLASS5           : String(1);
  TAX_CLASS6           : String(1);
  TAX_CLASS7           : String(1);
  TAX_CLASS8           : String(1);
  TAX_CLASS9           : String(1);
  REF_DOC_L            : String(1);
  ASS_NUMBER           : String(1);
  REFDOC_CAT           : String(1);
  ORDCOMB_IN           : String(1);
  BILL_SCHED           : String(1);
  INVO_SCHED           : String(1);
  MN_INVOICE           : String(1);
  EXRATE_FI            : String(1);
  ADD_VAL_DY           : String(1);
  FIX_VAL_DY           : String(1);
  PYMT_METH            : String(1);
  ACCNT_ASGN           : String(1);
  EXCHG_RATE           : String(1);
  BILL_DATE            : String(1);
  SERV_DATE            : String(1);
  DUNN_KEY             : String(1);
  DUNN_BLOCK           : String(1);
  PROMOTION            : String(1);
  PMTGAR_PRO           : String(1);
  DEPARTM_NO           : String(1);
  REC_POINT            : String(1);
  POITM_NO_S           : String(1);
  DOC_NUM_FI           : String(1);
  CSTCNDGRP1           : String(1);
  CSTCNDGRP2           : String(1);
  CSTCNDGRP3           : String(1);
  CSTCNDGRP4           : String(1);
  CSTCNDGRP5           : String(1);
  DLV_TIME             : String(1);
  CURRENCY             : String(1);
  TAXDEP_CTY           : String(1);
  TAXDST_CTY           : String(1);
  EUTRI_DEAL           : String(1);
  MAST_CONTR           : String(1);
  REF_PROC             : String(1);
  CHKPRTAUTH           : String(1);
  CMLQTY_DAT           : String(1);
  VERSION              : String(1);
  NOTIF_NO             : String(1);
  WBS_ELEM             : String(1);
  EXCH_RATE_FI_V       : String(1);
  EXCHG_RATE_V         : String(1);
  FKK_CONACCT          : String(1);
  CAMPAIGN             : String(1);
  DOC_CLASS            : String(1);
  H_CURR               : String(1);
  SHIP_TYPE            : String(1);
  S_PROC_IND           : String(1);
  LINE_TIME            : String(1);
  CALC_MOTIVE          : String(1);
  PSM_PSTNG_DATE       : String(1);
  TREASURY_ACC_SYMBOL  : String(1);
  BUSINESS_EVENT_TCODE : String(1);
  MODIFICATION_ALLOWED : String(1);
  CANCELLATION_ALLOWED : String(1);
  PAYMENT_METHODS      : String(1);
  BUSINESS_PARTNER_NO  : String(1);
  REPORTING_FREQ       : String(1);
  SEPA_MANDATE_ID      : String(1);
  SD_DOC_CAT_LONG      : String(1);
  REFDOC_CAT_LONG      : String(1);
  INCOTERMSV           : String(1);
  INCOTERMS2L          : String(1);
  INCOTERMS3L          : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDLS {
  PRICING         : String(1);
  ATP_WRKMOD      : String(1);
  SCHEDULING      : String(1);
  NOSTRUCTURE     : String(1);
  COND_HANDL      : String(1);
  ADDR_CHECK      : String(1);
  FSH_COPY_REF    : String(1);
  NO_CREDIT_CHECK : String(1);
  NO_ATP          : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPI_SENDER {
  LOG_SYSTEM : String(10);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF {
  POSEX     : String(6);
  CONFIG_ID : String(6);
  INST_ID   : String(8);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK {
  CONFIG_ID : String(6);
  INST_ID   : String(8);
  VKEY      : String(26);
  FACTOR    : String(15);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX {
  @RFCAbapType: 'N'
  ITM_NUMBER      : String(6);

  @RFCAbapType: 'N'
  COND_ST_NO      : String(3);

  @RFCAbapType: 'N'
  COND_COUNT      : String(2);
  COND_TYPE       : String(4);
  UPDATEFLAG      : String(1);
  COND_VALUE      : String(1);
  CURRENCY        : String(1);
  COND_UNIT       : String(1);
  COND_P_UNT      : String(1);
  VARCOND         : String(26);

  @RFCAbapType: 'N'
  COND_COUNT_LONG : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM {
  @RFCAbapType: 'N'
  ITM_NUMBER               : String(6);

  @RFCAbapType: 'N'
  HG_LV_ITEM               : String(6);
  PO_ITM_NO                : String(6);
  MATERIAL                 : String(18);

  @RFCAbapType: 'N'
  ALT_TO_ITM               : String(6);
  CUST_MAT22               : String(22);
  BATCH                    : String(10);

  @RFCAbapType: 'N'
  DLV_GROUP                : String(3);
  PART_DLV                 : String(1);
  REASON_REJ               : String(2);
  BILL_BLOCK               : String(2);
  BILL_DATE                : Date;
  PLANT                    : String(4);
  STORE_LOC                : String(4);
  TARGET_QTY               : Decimal;
  TARGET_QU                : String(3);
  T_UNIT_ISO               : String(3);
  ITEM_CATEG               : String(4);
  SHORT_TEXT               : String(40);
  PRC_GROUP1               : String(3);
  PRC_GROUP2               : String(3);
  PRC_GROUP3               : String(3);
  PRC_GROUP4               : String(3);
  PRC_GROUP5               : String(3);
  PROD_HIERA               : String(18);
  MATL_GROUP               : String(9);
  PURCH_NO_C               : String(35);
  PURCH_DATE               : Date;
  PO_METHOD                : String(4);
  REF_1                    : String(12);
  PURCH_NO_S               : String(35);
  PO_DAT_S                 : Date;
  PO_METH_S                : String(4);
  REF_1_S                  : String(12);
  POITM_NO_S               : String(6);
  PRICE_GRP                : String(2);
  CUST_GROUP               : String(2);
  SALES_DIST               : String(6);
  PRICE_LIST               : String(2);
  INCOTERMS1               : String(3);
  INCOTERMS2               : String(28);
  ORDCOMP_IN               : String(1);
  BILL_SCHED               : String(2);
  INVO_SCHED               : String(2);
  MN_INVOICE               : String(1);
  EX_RATE_FI               : Decimal;

  @RFCAbapType: 'N'
  ADD_VAL_DY               : String(2);
  FIX_VAL_DY               : Date;
  PMNTTRMS                 : String(4);
  PYMT_METH                : String(1);
  ACCNT_ASGN               : String(2);
  EXCHG_RATE               : Decimal;
  PRICE_DATE               : Date;
  SERV_DATE                : Date;
  DUNN_KEY                 : String(1);
  DUNN_BLOCK               : String(1);
  PROMOTION                : String(10);
  PMTGAR_PRO               : String(6);
  DOC_NUM_FI               : String(10);
  DEPARTM_NO               : String(4);
  REC_POINT                : String(25);
  CSTCNDGRP1               : String(2);
  CSTCNDGRP2               : String(2);
  CSTCNDGRP3               : String(2);
  CSTCNDGRP4               : String(2);
  CSTCNDGRP5               : String(2);
  DLV_TIME                 : String(3);
  SALES_UNIT               : String(3);
  S_UNIT_ISO               : String(3);
  TRG_QTY_NO               : Decimal;
  TRGQTY_DEN               : Decimal;
  RNDDLV_QTY               : Decimal;
  MAXDEVAMNT               : Decimal;
  MAXDEVPER                : Decimal;
  MAXDEV_DAY               : Decimal;
  USAGE_IND                : String(3);
  FIXED_QUAN               : String(1);
  UNLMT_DLV                : String(1);
  OVERDLVTOL               : Decimal;
  UNDDLV_TOL               : Decimal;
  DIVISION                 : String(2);
  SALQTYNUM                : Decimal;
  SALQTYDEN                : Decimal;
  GROSS_WGHT               : Decimal;
  NET_WEIGHT               : Decimal;
  UNTOF_WGHT               : String(3);
  UNOF_WTISO               : String(3);
  VOLUME                   : Decimal;
  VOLUNIT                  : String(3);
  VOLUNITISO               : String(3);

  @RFCAbapType: 'N'
  DLV_PRIO                 : String(2);
  SHIP_POINT               : String(4);
  ROUTE                    : String(6);
  CREATED_BY               : String(12);
  TAX_CLASS1               : String(1);
  TAX_CLASS2               : String(1);
  TAX_CLASS3               : String(1);
  TAX_CLASS4               : String(1);
  TAX_CLASS5               : String(1);
  TAX_CLASS6               : String(1);
  TAX_CLASS7               : String(1);
  TAX_CLASS8               : String(1);
  TAX_CLASS9               : String(1);
  MAT_PR_GRP               : String(2);
  VAL_TYPE                 : String(10);
  FIXDAT_QTY               : String(1);
  BOMEXPL_NO               : String(8);
  RESANALKEY               : String(6);
  REQMTS_TYP               : String(4);
  NO_GR_POST               : String(1);
  BUS_TRANST               : String(2);
  OVERHD_KEY               : String(6);
  CSTG_SHEET               : String(6);
  MATFRGTGRP               : String(8);
  PLDLVSHDIN               : String(4);
  SEQ_NO                   : String(35);
  BIL_FORM                 : String(2);
  DLI_PROFIL               : String(8);
  REV_TYPE                 : String(1);
  BEGDEM_PER               : String(1);
  PR_REF_MAT               : String(18);
  REFOBJTYPE               : String(10);
  REFOBJKEY                : String(70);
  REFLOGSYS                : String(10);

  @RFCAbapType: 'N'
  ORDER_PROB               : String(3);
  MAX_PL_DLV               : Decimal;
  CFOP_CODE                : String(5);
  TAXLAWICMS               : String(3);
  TAXLAWIPI                : String(3);
  SD_TAXCODE               : String(2);
  ASSORT_MOD               : String(18);
  COMP_QUANT               : Decimal;
  TARGET_VAL               : Decimal;
  CURRENCY                 : String(5);
  CURR_ISO                 : String(3);
  PROFIT_CTR               : String(10);
  ORDERID                  : String(12);
  WBS_ELEM                 : String(24);
  DEPREC_PER               : Decimal;
  REF_DOC                  : String(10);

  @RFCAbapType: 'N'
  REF_DOC_IT               : String(6);
  REF_DOC_CA               : String(1);
  CUST_MAT35               : String(35);
  EXCH_RATE_FI_V           : Decimal;
  EXCHG_RATE_V             : Decimal;
  ITEMGUID_ATP             : String(22);
  VAL_CONTR                : String(10);

  @RFCAbapType: 'N'
  VAL_CON_I                : String(6);
  CONFIG_ID                : String(6);
  INST_ID                  : String(8);
  MAT_EXT                  : String(40);
  MAT_GUID                 : String(32);
  MAT_VERS                 : String(10);
  P_MAT_EXT                : String(40);
  P_MAT_GUID               : String(32);
  P_MAT_VERS               : String(10);
  FUNC_AREA                : String(4);
  ALTERN_BOM               : String(2);
  FKK_CONACCT              : String(12);
  EAN_UPC                  : String(18);
  PRODCAT                  : String(10);
  SHIP_TYPE                : String(2);
  S_PROC_IND               : String(4);
  FUNC_AREA_LONG           : String(16);
  BILL_REL                 : String(1);
  VW_UEPOS                 : String(1);
  CAMPAIGN                 : Binary(16);
  DLVSCHDUSE               : String(3);
  CFOP_LONG                : String(10);
  SELECTION                : String(32);
  MAT_ENTRD                : String(18);
  LOG_SYSTEM_OWN           : String(10);
  ITM_TYPE_USAGE           : String(4);
  TAXLAWISS                : String(3);
  MAT_ENTRD_EXTERNAL       : String(40);
  MAT_ENTRD_GUID           : String(32);
  MAT_ENTRD_VERSION        : String(10);
  LOC_TAXCAT               : String(2);
  LOC_ZEROVAT              : String(1);
  LOC_ACTCODE              : String(2);
  LOC_DISTTYPE             : String(2);
  LOC_TXRELCLAS            : String(10);
  CALC_MOTIVE              : String(2);
  COMPREAS                 : String(4);
  FUND                     : String(10);
  FUNDS_CTR                : String(16);
  CMMT_ITEM                : String(24);
  GRANT_NBR                : String(20);
  BUDGET_PERIOD            : String(10);
  TAXLAWCOFINS             : String(3);
  TAXLAWPIS                : String(3);
  TREASURY_ACC_SYMBOL      : String(30);
  BUSINESS_EVENT_TCODE     : String(10);
  MODIFICATION_ALLOWED     : String(1);
  CANCELLATION_ALLOWED     : String(1);
  PAYMENT_METHODS          : String(10);
  BUSINESS_PARTNER_NO      : String(6);
  REPORTING_FREQ           : String(3);
  SEPA_MANDATE_ID          : String(35);
  REQ_SEGMENT              : String(16);
  TP_SUBLEVL               : String(2);
  TP_AGENCID               : String(3);
  TP_ALTRAID               : String(3);

  @RFCAbapType: 'N'
  TP_BEGPER                : String(4);

  @RFCAbapType: 'N'
  TP_ENDPER                : String(4);
  TP_AVTYPE                : String(1);
  TP_MAIN_ACCT             : String(4);
  TP_SUB_ACCT              : String(3);
  TP_BETC                  : String(10);
  REVACC_REFID             : String(30);
  REVACC_REFTYPE           : String(3);
  REF_DOC_CA_LONG          : String(4);
  INCOTERMSV               : String(4);
  INCOTERMS2L              : String(70);
  INCOTERMS3L              : String(70);
  MATERIAL_LONG            : String(40);
  PR_REF_MAT_LONG          : String(40);
  MAT_ENTRD_LONG           : String(40);
  PO_QUAN                  : Decimal;
  PO_UNIT                  : String(3);
  REQ_SEG_LONG             : String(40);
  TXS_BUSINESS_TRANSACTION : String(4);
  TXS_MATERIAL_USAGE       : String(1);
  TXS_USAGE_PURPOSE        : String(25);
  SERVICE_DOC_TYPE         : String(4);
  SERVICE_DOC_ID           : String(10);

  @RFCAbapType: 'N'
  SERVICE_DOC_ITEM_ID      : String(6);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX {
  @RFCAbapType: 'N'
  ITM_NUMBER               : String(6);
  UPDATEFLAG               : String(1);
  HG_LV_ITEM               : String(1);
  PO_ITM_NO                : String(1);
  MATERIAL                 : String(1);
  ALT_TO_ITM               : String(1);
  CUST_MAT22               : String(1);
  BATCH                    : String(1);
  DLV_GROUP                : String(1);
  PART_DLV                 : String(1);
  REASON_REJ               : String(1);
  BILL_BLOCK               : String(1);
  BILL_DATE                : String(1);
  PLANT                    : String(1);
  STORE_LOC                : String(1);
  TARGET_QTY               : String(1);
  TARGET_QU                : String(1);
  T_UNIT_ISO               : String(1);
  ITEM_CATEG               : String(1);
  SHORT_TEXT               : String(1);
  PRC_GROUP1               : String(1);
  PRC_GROUP2               : String(1);
  PRC_GROUP3               : String(1);
  PRC_GROUP4               : String(1);
  PRC_GROUP5               : String(1);
  PROD_HIERA               : String(1);
  MATL_GROUP               : String(1);
  PURCH_NO_C               : String(1);
  PURCH_DATE               : String(1);
  PO_METHOD                : String(1);
  REF_1                    : String(1);
  PURCH_NO_S               : String(1);
  PO_DAT_S                 : String(1);
  PO_METH_S                : String(1);
  REF_1_S                  : String(1);
  POITM_NO_S               : String(1);
  PRICE_GRP                : String(1);
  CUST_GROUP               : String(1);
  SALES_DIST               : String(1);
  PRICE_LIST               : String(1);
  INCOTERMS1               : String(1);
  INCOTERMS2               : String(1);
  ORDCOMP_IN               : String(1);
  BILL_SCHED               : String(1);
  INVO_SCHED               : String(1);
  MN_INVOICE               : String(1);
  EX_RATE_FI               : String(1);
  ADD_VAL_DY               : String(1);
  FIX_VAL_DY               : String(1);
  PMNTTRMS                 : String(1);
  PYMT_METH                : String(1);
  ACCNT_ASGN               : String(1);
  EXCHG_RATE               : String(1);
  PRICE_DATE               : String(1);
  SERV_DATE                : String(1);
  DUNN_KEY                 : String(1);
  DUNN_BLOCK               : String(1);
  PROMOTION                : String(1);
  PMTGAR_PRO               : String(1);
  DOC_NUM_FI               : String(1);
  DEPARTM_NO               : String(1);
  REC_POINT                : String(1);
  CSTCNDGRP1               : String(1);
  CSTCNDGRP2               : String(1);
  CSTCNDGRP3               : String(1);
  CSTCNDGRP4               : String(1);
  CSTCNDGRP5               : String(1);
  DLV_TIME                 : String(1);
  SALES_UNIT               : String(1);
  TRG_QTY_NO               : String(1);
  TRGQTY_DEN               : String(1);
  RNDDLV_QTY               : String(1);
  MAXDEVAMNT               : String(1);
  MAXDEVPER                : String(1);
  MAXDEV_DAY               : String(1);
  USAGE_IND                : String(1);
  FIXED_QUAN               : String(1);
  UNLMT_DLV                : String(1);
  OVERDLVTOL               : String(1);
  UNDDLV_TOL               : String(1);
  DIVISION                 : String(1);
  SALQTYNUM                : String(1);
  SALQTYDEN                : String(1);
  GROSS_WGHT               : String(1);
  NET_WEIGHT               : String(1);
  UNTOF_WGHT               : String(1);
  VOLUME                   : String(1);
  VOLUNIT                  : String(1);
  DLV_PRIO                 : String(1);
  SHIP_POINT               : String(1);
  ROUTE                    : String(1);
  TAX_CLASS1               : String(1);
  TAX_CLASS2               : String(1);
  TAX_CLASS3               : String(1);
  TAX_CLASS4               : String(1);
  TAX_CLASS5               : String(1);
  TAX_CLASS6               : String(1);
  TAX_CLASS7               : String(1);
  TAX_CLASS8               : String(1);
  TAX_CLASS9               : String(1);
  MAT_PR_GRP               : String(1);
  VAL_TYPE                 : String(1);
  FIXDAT_QTY               : String(1);
  BOMEXPL_NO               : String(1);
  RESANALKEY               : String(1);
  REQMTS_TYP               : String(1);
  NO_GR_POST               : String(1);
  BUS_TRANST               : String(1);
  OVERHD_KEY               : String(1);
  CSTG_SHEET               : String(1);
  MATFRGTGRP               : String(1);
  PLDLVSHDIN               : String(1);
  SEQ_NO                   : String(1);
  BIL_FORM                 : String(1);
  DLI_PROFIL               : String(1);
  REV_TYPE                 : String(1);
  BEGDEM_PER               : String(1);
  PR_REF_MAT               : String(1);
  REFOBJTYPE               : String(1);
  REFOBJKEY                : String(1);
  REFLOGSYS                : String(1);
  ORDER_PROB               : String(1);
  MAX_PL_DLV               : String(1);
  CFOP_CODE                : String(1);
  TAXLAWICMS               : String(1);
  TAXLAWIPI                : String(1);
  SD_TAXCODE               : String(1);
  ASSORT_MOD               : String(1);
  COMP_QUANT               : String(1);
  TARGET_VAL               : String(1);
  PROFIT_CTR               : String(1);
  ORDERID                  : String(1);
  WBS_ELEM                 : String(1);
  DEPREC_PER               : String(1);
  REF_DOC                  : String(1);
  REF_DOC_IT               : String(1);
  REF_DOC_CA               : String(1);
  CUST_MAT35               : String(1);
  EXCH_RATE_FI_V           : String(1);
  EXCHG_RATE_V             : String(1);
  ITEMGUID_ATP             : String(1);
  VAL_CONTR                : String(1);
  VAL_CON_I                : String(1);
  CONFIG_ID                : String(1);
  INST_ID                  : String(1);
  MAT_EXT                  : String(1);
  MAT_GUID                 : String(1);
  MAT_VERS                 : String(1);
  P_MAT_EXT                : String(1);
  P_MAT_GUID               : String(1);
  P_MAT_VERS               : String(1);
  FUNC_AREA                : String(1);
  ALTERN_BOM               : String(1);
  FKK_CONACCT              : String(1);
  EAN_UPC                  : String(1);
  PRODCAT                  : String(1);
  SHIP_TYPE                : String(1);
  S_PROC_IND               : String(1);
  BILL_REL                 : String(1);
  VW_UEPOS                 : String(1);
  CAMPAIGN                 : String(1);
  DLVSCHDUSE               : String(1);
  SELECTION                : String(1);
  MAT_ENTRD                : String(1);
  LOG_SYSTEM_OWN           : String(1);
  ITM_TYPE_USAGE           : String(1);
  MAT_ENTRD_EXTERNAL       : String(1);
  MAT_ENTRD_GUID           : String(1);
  MAT_ENTRD_VERSION        : String(1);
  LOC_TAXCAT               : String(1);
  LOC_ZEROVAT              : String(1);
  LOC_ACTCODE              : String(1);
  LOC_DISTTYPE             : String(1);
  LOC_TXRELCLAS            : String(1);
  CALC_MOTIVE              : String(1);
  FUND                     : String(1);
  FUNDS_CTR                : String(1);
  CMMT_ITEM                : String(1);
  GRANT_NBR                : String(1);
  BUDGET_PERIOD            : String(1);
  TAXLAWISS                : String(1);
  TAXLAWCOFINS             : String(1);
  TAXLAWPIS                : String(1);
  TREASURY_ACC_SYMBOL      : String(1);
  BUSINESS_EVENT_TCODE     : String(1);
  MODIFICATION_ALLOWED     : String(1);
  CANCELLATION_ALLOWED     : String(1);
  PAYMENT_METHODS          : String(1);
  BUSINESS_PARTNER_NO      : String(1);
  REPORTING_FREQ           : String(1);
  CFOP_LONG                : String(1);
  SEPA_MANDATE_ID          : String(1);
  REQ_SEGMENT              : String(1);
  TP_SUBLEVL               : String(1);
  TP_AGENCID               : String(1);
  TP_ALTRAID               : String(1);
  TP_BEGPER                : String(1);
  TP_ENDPER                : String(1);
  TP_AVTYPE                : String(1);
  TP_MAIN_ACCT             : String(1);
  TP_SUB_ACCT              : String(1);
  TP_BETC                  : String(1);
  REVACC_REFID             : String(1);
  REVACC_REFTYPE           : String(1);
  REF_DOC_CA_LONG          : String(1);
  INCOTERMSV               : String(1);
  INCOTERMS2L              : String(1);
  INCOTERMS3L              : String(1);
  MATERIAL_LONG            : String(1);
  PR_REF_MAT_LONG          : String(1);
  MAT_ENTRD_LONG           : String(1);
  PO_QUAN                  : String(1);
  PO_UNIT                  : String(1);
  REQ_SEG_LONG             : String(1);
  TXS_BUSINESS_TRANSACTION : String(1);
  TXS_MATERIAL_USAGE       : String(1);
  TXS_USAGE_PURPOSE        : String(1);
  SERVICE_DOC_TYPE         : String(1);
  SERVICE_DOC_ID           : String(1);
  SERVICE_DOC_ITEM_ID      : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY {
  REFOBJTYP       : String(10);
  REFOBJECT       : String(32);
  REFOBJKEY       : String(70);
  REFLOGSYS       : String(10);
  DOC_NUMBER      : String(10);

  @RFCAbapType: 'N'
  ITM_NUMBER      : String(6);

  @RFCAbapType: 'N'
  SCHED_LIN       : String(4);
  COND_NO         : String(10);

  @RFCAbapType: 'N'
  CONDITEMNO      : String(6);

  @RFCAbapType: 'N'
  COND_ST_NO      : String(3);

  @RFCAbapType: 'N'
  COND_COUNT      : String(2);
  COND_TYPE       : String(4);
  STATUS          : String(1);

  @RFCAbapType: 'N'
  TINDEX          : String(6);
  ADDRESS         : String(10);

  @RFCAbapType: 'N'
  ABRLI           : String(4);
  ABART           : String(1);

  @RFCAbapType: 'N'
  COND_COUNT_LONG : String(3);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR {
  PARTN_ROLE            : String(2);
  PARTN_NUMB            : String(10);

  @RFCAbapType: 'N'
  ITM_NUMBER            : String(6);
  TITLE                 : String(15);
  NAME                  : String(35);
  NAME_2                : String(35);
  NAME_3                : String(35);
  NAME_4                : String(35);
  STREET                : String(35);
  COUNTRY               : String(3);
  COUNTR_ISO            : String(2);
  POSTL_CODE            : String(10);
  POBX_PCD              : String(10);
  POBX_CTY              : String(35);
  CITY                  : String(35);
  DISTRICT              : String(35);
  REGION                : String(3);
  PO_BOX                : String(10);
  TELEPHONE             : String(16);
  TELEPHONE2            : String(16);
  TELEBOX               : String(15);
  FAX_NUMBER            : String(31);
  TELETEX_NO            : String(30);
  TELEX_NO              : String(30);
  LANGU                 : String(1);
  LANGU_ISO             : String(2);
  UNLOAD_PT             : String(25);
  TRANSPZONE            : String(10);
  TAXJURCODE            : String(15);
  ADDRESS               : String(10);
  PRIV_ADDR             : String(10);
  ADDR_TYPE             : String(1);
  ADDR_ORIG             : String(1);
  ADDR_LINK             : String(10);
  REFOBJTYPE            : String(10);
  REFOBJKEY             : String(70);
  REFLOGSYS             : String(10);
  VAT_REG_NO            : String(20);
  ADDRESSGUID           : String(32);
  EXTERNALADDRESSNUMBER : String(20);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX {
  @RFCAbapType: 'N'
  ITM_NUMBER      : String(6);

  @RFCAbapType: 'N'
  SCHED_LINE      : String(4);
  UPDATEFLAG      : String(1);
  REQ_DATE        : String(1);
  DATE_TYPE       : String(1);
  REQ_TIME        : String(1);
  REQ_QTY         : String(1);
  REQ_DLV_BL      : String(1);
  SCHED_TYPE      : String(1);
  TP_DATE         : String(1);
  MS_DATE         : String(1);
  LOAD_DATE       : String(1);
  GI_DATE         : String(1);
  TP_TIME         : String(1);
  MS_TIME         : String(1);
  LOAD_TIME       : String(1);
  GI_TIME         : String(1);
  REFOBJTYPE      : String(10);
  REFOBJKEY       : String(70);
  DLV_DATE        : String(1);
  DLV_TIME        : String(1);
  REL_TYPE        : String(1);
  PLAN_SCHED_TYPE : String(1);
};

type SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT {
  DOC_NUMBER : String(10);

  @RFCAbapType: 'N'
  ITM_NUMBER : String(6);
  TEXT_ID    : String(4);
  LANGU      : String(1);
  LANGU_ISO  : String(2);
  FORMAT_COL : String(2);
  TEXT_LINE  : String(132);
  FUNCTION   : String(3);
};

type SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2.ResultType {
  /** Number of Generated Document */
  @RFCParameterType: 'Export'
  SALESDOCUMENT        :      String(10);

  /** Reference Structure for BAPI Parameters ExtensionIn/ExtensionOut */
  @RFCParameterType: 'Table'
  EXTENSIONEX          : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;

  /** Customer Enhancement for VBAK, VBAP, VBEP */
  @RFCParameterType: 'Table'
  EXTENSIONIN          : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX;

  /** Credit Card Data */
  @RFCParameterType: 'Table'
  ORDER_CCARD          : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARD;

  /** Configuration: BLOB Internal Data (SCE) */
  @RFCParameterType: 'Table'
  ORDER_CFGS_BLOB      : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLB;

  /** Configuration: Instances */
  @RFCParameterType: 'Table'
  ORDER_CFGS_INST      : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINS;

  /** Configuration: Part-of Specifications */
  @RFCParameterType: 'Table'
  ORDER_CFGS_PART_OF   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRT;

  /** Configuration: Reference Data */
  @RFCParameterType: 'Table'
  ORDER_CFGS_REF       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFG;

  /** Configuration: Reference Item / Instance */
  @RFCParameterType: 'Table'
  ORDER_CFGS_REFINST   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREF;

  /** Configuration: Characteristic Values */
  @RFCParameterType: 'Table'
  ORDER_CFGS_VALUE     : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVAL;

  /** Configuration: Variant Condition Key */
  @RFCParameterType: 'Table'
  ORDER_CFGS_VK        : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVK;

  /** Conditions */
  @RFCParameterType: 'Table'
  ORDER_CONDITIONS_IN  : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOND;

  /** Conditions Checkbox */
  @RFCParameterType: 'Table'
  ORDER_CONDITIONS_INX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDX;

  /** Item Data */
  @RFCParameterType: 'Table'
  ORDER_ITEMS_IN       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITM;

  /** Item Data Checkbox */
  @RFCParameterType: 'Table'
  ORDER_ITEMS_INX      : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITMX;

  /** Output Table of Reference Keys */
  @RFCParameterType: 'Table'
  ORDER_KEYS           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDKEY;

  /** Document Partner */
  @RFCParameterType: 'Table'
  ORDER_PARTNERS       : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARNR;

  /** Schedule Line Data */
  @RFCParameterType: 'Table'
  ORDER_SCHEDULES_IN   : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDL;

  /** Checkbox Schedule Line Data */
  @RFCParameterType: 'Table'
  ORDER_SCHEDULES_INX  : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISCHDLX;

  /** Texts */
  @RFCParameterType: 'Table'
  ORDER_TEXT           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEXT;

  /** BAPI Reference Structure for Addresses (Org./Company) */
  @RFCParameterType: 'Table'
  PARTNERADDRESSES     : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR1;

  /** Return Messages */
  @RFCParameterType: 'Table'
  RETURN               : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
};
