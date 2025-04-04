using {S4H} from './external/S4H';

@(requires: 'authenticated-user')
service PurchaseReqService {
  action createPurchaseReq(
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
}
