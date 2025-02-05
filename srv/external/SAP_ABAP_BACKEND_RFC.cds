/* checksum : 953f3872a26eabddf4e000967879d48a */
@cds.external: true
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
                                              USERLIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME)            returns SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST.ResultType;

action SAP_ABAP_BACKEND_RFC.BAPI_USER_GET_DETAIL(
                                                 /** Temporarily buffer results in work process */
                                                 @RFCParameterType:'Import'
                                                 CACHE_RESULTS : String(1) default 'X',
                                                 /** Read Flags for External User ID */
                                                 @RFCParameterType:'Import'
                                                 EXTUID_GET : SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUIDGET,
                                                 /** User Name */
                                                 @RFCParameterType:'Import'
                                                 USERNAME : String(12) not null,
                                                 /** Activity Groups */
                                                 @RFCParameterType:'Table'
                                                 ACTIVITYGROUPS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIAGR,
                                                 /** BAPI Structure Communication Comments */
                                                 @RFCParameterType:'Table'
                                                 ADDCOMREM : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOMREM,
                                                 /** BAPI Structure Fax Numbers */
                                                 @RFCParameterType:'Table'
                                                 ADDFAX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADFAX,
                                                 /** BAPI Structure Pager Numbers */
                                                 @RFCParameterType:'Table'
                                                 ADDPAG : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPAG,
                                                 /** BAPI Structure Printer Addresses */
                                                 @RFCParameterType:'Table'
                                                 ADDPRT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPRT,
                                                 /** BAPI Structure RFC Addresses */
                                                 @RFCParameterType:'Table'
                                                 ADDRFC : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRFC,
                                                 /** Inhouse Mail BAPI Structure */
                                                 @RFCParameterType:'Table'
                                                 ADDRML : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRML,
                                                 /** E-Mail Addresses BAPI Structure */
                                                 @RFCParameterType:'Table'
                                                 ADDSMTP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSMTP,
                                                 /** BAPI Structure SSF Addresses */
                                                 @RFCParameterType:'Table'
                                                 ADDSSF : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSSF,
                                                 /** BAPI Structure Telephone Numbers */
                                                 @RFCParameterType:'Table'
                                                 ADDTEL : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTEL,
                                                 /** BAPI Structure Telex Numbers */
                                                 @RFCParameterType:'Table'
                                                 ADDTLX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTLX,
                                                 /** BAPI Structure Teletex Numbers */
                                                 @RFCParameterType:'Table'
                                                 ADDTTX : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTTX,
                                                 /** BAPI Structure: URL, FTP, and so on */
                                                 @RFCParameterType:'Table'
                                                 ADDURI : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADURI,
                                                 /** BAPI Structure X400 Addresses */
                                                 @RFCParameterType:'Table'
                                                 ADDX400 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADX400,
                                                 /** Header Data for External ID of a User */
                                                 @RFCParameterType:'Table'
                                                 EXTIDHEAD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDHEAD,
                                                 /** Part of a Long Field for the External ID of a User */
                                                 @RFCParameterType:'Table'
                                                 EXTIDPART : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDPART,
                                                 /** User: Transfer Structure External User ID */
                                                 @RFCParameterType:'Table'
                                                 EXTUID : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUID,
                                                 /** Transfer Structure for a List of User Groups */
                                                 @RFCParameterType:'Table'
                                                 GROUPS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIGROUPS,
                                                 /** Table with User Parameters */
                                                 @RFCParameterType:'Table'
                                                 PARAMETER : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM,
                                                 /** Replaces Parameter (Length 18 -> 40) */
                                                 @RFCParameterType:'Table'
                                                 PARAMETER1 : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM1,
                                                 /** Profiles */
                                                 @RFCParameterType:'Table'
                                                 PROFILES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPROF,
                                                 /** Return Structure */
                                                 @RFCParameterType:'Table'
                                                 RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2,
                                                 /** Global User ID History (Not Supported) */
                                                 @RFCParameterType:'Table'
                                                 SAPUSER_UUID_HIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUIDHIST,
                                                 /** BAPI Structure for CUA Target Systems */
                                                 @RFCParameterType:'Table'
                                                 SYSTEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRCVSYS,
                                                 /** System-Specific License-Related User Classification */
                                                 @RFCParameterType:'Table'
                                                 UCLASSSYS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASSSYS,
                                                 /** User: Transfer Structure for User Attributes */
                                                 @RFCParameterType:'Table'
                                                 USATTRIBUTE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSATTRIBUTE) returns SAP_ABAP_BACKEND_RFC.BAPI_USER_GET_DETAIL.ResultType;

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
  /** Address Data */
  @RFCParameterType: 'Export'
  ADDRESS           :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIADDR3;

  /** User: Administration Data */
  @RFCParameterType: 'Export'
  ADMINDATA         :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERADMIN;

  /** User Name Alias */
  @RFCParameterType: 'Export'
  ALIAS             :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIALIAS;

  /** Company for Company Address */
  @RFCParameterType: 'Export'
  COMPANY           :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSCOMP;

  /** Structure with User Defaults */
  @RFCParameterType: 'Export'
  DEFAULTS          :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIDEFAUL;

  /** Description */
  @RFCParameterType: 'Export'
  DESCRIPTION       :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSDESC;

  /** Person Assignment of an Identity */
  @RFCParameterType: 'Export'
  IDENTITY          :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIIDENTITY;

  /** User Lock */
  @RFCParameterType: 'Export'
  ISLOCKED          :      SAP_ABAP_BACKEND_RFC.DDIC.BAPISLOCKD;

  /** User: Last Change (Date and Time) */
  @RFCParameterType: 'Export'
  LASTMODIFIED      :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIMODDAT;

  /** Structure with Logon Data */
  @RFCParameterType: 'Export'
  LOGONDATA         :      SAP_ABAP_BACKEND_RFC.DDIC.BAPILOGOND;

  /** User Name of the Reference User */
  @RFCParameterType: 'Export'
  REF_USER          :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIREFUS;

  /** Global User ID */
  @RFCParameterType: 'Export'
  SAPUSER_UUID      :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUID;

  /** Secure Network Communication Data */
  @RFCParameterType: 'Export'
  SNC               :      SAP_ABAP_BACKEND_RFC.DDIC.BAPISNCU;

  /** Technical User */
  @RFCParameterType: 'Export'
  TECH_USER         :      SAP_ABAP_BACKEND_RFC.DDIC.BAPITECHUSER;

  /** License-Related User Classification */
  @RFCParameterType: 'Export'
  UCLASS            :      SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASS;

  /** Activity Groups */
  @RFCParameterType: 'Table'
  ACTIVITYGROUPS    : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIAGR;

  /** BAPI Structure Communication Comments */
  @RFCParameterType: 'Table'
  ADDCOMREM         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICOMREM;

  /** BAPI Structure Fax Numbers */
  @RFCParameterType: 'Table'
  ADDFAX            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADFAX;

  /** BAPI Structure Pager Numbers */
  @RFCParameterType: 'Table'
  ADDPAG            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPAG;

  /** BAPI Structure Printer Addresses */
  @RFCParameterType: 'Table'
  ADDPRT            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADPRT;

  /** BAPI Structure RFC Addresses */
  @RFCParameterType: 'Table'
  ADDRFC            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRFC;

  /** Inhouse Mail BAPI Structure */
  @RFCParameterType: 'Table'
  ADDRML            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADRML;

  /** E-Mail Addresses BAPI Structure */
  @RFCParameterType: 'Table'
  ADDSMTP           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSMTP;

  /** BAPI Structure SSF Addresses */
  @RFCParameterType: 'Table'
  ADDSSF            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADSSF;

  /** BAPI Structure Telephone Numbers */
  @RFCParameterType: 'Table'
  ADDTEL            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTEL;

  /** BAPI Structure Telex Numbers */
  @RFCParameterType: 'Table'
  ADDTLX            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTLX;

  /** BAPI Structure Teletex Numbers */
  @RFCParameterType: 'Table'
  ADDTTX            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADTTX;

  /** BAPI Structure: URL, FTP, and so on */
  @RFCParameterType: 'Table'
  ADDURI            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADURI;

  /** BAPI Structure X400 Addresses */
  @RFCParameterType: 'Table'
  ADDX400           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIADX400;

  /** Header Data for External ID of a User */
  @RFCParameterType: 'Table'
  EXTIDHEAD         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDHEAD;

  /** Part of a Long Field for the External ID of a User */
  @RFCParameterType: 'Table'
  EXTIDPART         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSEXTIDPART;

  /** User: Transfer Structure External User ID */
  @RFCParameterType: 'Table'
  EXTUID            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIEXTUID;

  /** Transfer Structure for a List of User Groups */
  @RFCParameterType: 'Table'
  GROUPS            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIGROUPS;

  /** Table with User Parameters */
  @RFCParameterType: 'Table'
  PARAMETER         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM;

  /** Replaces Parameter (Length 18 -> 40) */
  @RFCParameterType: 'Table'
  PARAMETER1        : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPARAM1;

  /** Profiles */
  @RFCParameterType: 'Table'
  PROFILES          : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPROF;

  /** Return Structure */
  @RFCParameterType: 'Table'
  RETURN            : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;

  /** Global User ID History (Not Supported) */
  @RFCParameterType: 'Table'
  SAPUSER_UUID_HIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSERUUIDHIST;

  /** BAPI Structure for CUA Target Systems */
  @RFCParameterType: 'Table'
  SYSTEMS           : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRCVSYS;

  /** System-Specific License-Related User Classification */
  @RFCParameterType: 'Table'
  UCLASSSYS         : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUCLASSSYS;

  /** User: Transfer Structure for User Attributes */
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
