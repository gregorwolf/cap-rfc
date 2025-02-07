using {SAP_ABAP_BACKEND_RFC} from './external/SAP_ABAP_BACKEND_RFC';

@(requires: 'authenticated-user')
service SalesinquiryService {

        action createInquiry(
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
                             RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2) returns SAP_ABAP_BACKEND_RFC.BAPI_INQUIRY_CREATEFROMDATA2.ResultType;
}
