/* checksum : c816e9a551b123f25cb8bef0eab59115 */
@cds.external : true
service SAP_ABAP_BACKEND_RFC {};

action SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST(
  /** Maximum Number of Lines of Hits */
  @RFCParameterType : 'Import'
  MAX_ROWS : Integer default '0',
  /** Read User with Name */
  @RFCParameterType : 'Import'
  WITH_USERNAME : String(1) default 'SPACE',
  /** Return Parameter */
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2,
  /** Find Users with Dynamic Selections */
  @RFCParameterType : 'Table'
  SELECTION_EXP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSEXP,
  /** Search for Users with a Ranges Table */
  @RFCParameterType : 'Table'
  SELECTION_RANGE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSRGE,
  /** User List */
  @RFCParameterType : 'Table'
  USERLIST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME
) returns SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST.ResultType;

type SAP_ABAP_BACKEND_RFC.BAPI_USER_GETLIST.ResultType {
  /** No. of users selected */
  @RFCParameterType : 'Export'
  ROWS : Integer;
  /** Return Parameter */
  @RFCParameterType : 'Table'
  RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2;
  /** Find Users with Dynamic Selections */
  @RFCParameterType : 'Table'
  SELECTION_EXP : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSEXP;
  /** Search for Users with a Ranges Table */
  @RFCParameterType : 'Table'
  SELECTION_RANGE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSSRGE;
  /** User List */
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

