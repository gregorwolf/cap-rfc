using {SAP_ABAP_BACKEND_RFC} from './external/SAP_ABAP_BACKEND_RFC';

@(requires: 'authenticated-user')
service SalesorderService {
    action simulateOrder() returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE.ResultType;

    action createOrder(
                       /** Error Handling */
                       /*
                       Value range
                       Space = If an error occurs, processing stops and the sales document
                               is not saved.
                       P    = If an error occurs, the sales document can be saved.
                               Problematic items are not processed but they are logged.
                       R    = As for P but the document is not saved.
                       */  
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
                       /*
                       Space = Document should be saved
                       X     = Document should not be saved
                       */
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
                       RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2

    )                      returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2.ResultType;

}
