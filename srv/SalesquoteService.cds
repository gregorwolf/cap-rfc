using {SAP_ABAP_BACKEND_RFC} from './external/SAP_ABAP_BACKEND_RFC';

@(requires: 'authenticated-user')
service SalesquoteService {

        function getQuotation(
                              /** Checkbox Field - Internal Line */
                              @RFCParameterType:'Import'
                              INTERNALUSE : String(1) default 'SPACE',
                              /** Sales and Distribution Document Number */
                              @RFCParameterType:'Import'
                              SALESDOCUMENT : String(10) not null,
                              /** Customer Enhancement for Export */
                              @RFCParameterType:'Table'
                              EXTENSIONOUT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIPAREX,
                              /** Address Data */
                              @RFCParameterType:'Table'
                              QUOTATIONADDRESS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCOAD,
                              /** Billing Data */
                              @RFCParameterType:'Table'
                              QUOTATIONBILLINGDATES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBPLD,
                              /** Billing plan */
                              @RFCParameterType:'Table'
                              QUOTATIONBILLINGPLANS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBPL,
                              /** Business Data */
                              @RFCParameterType:'Table'
                              QUOTATIONBUSINESS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDBUSI,
                              /** Configuration BLOB */
                              @RFCParameterType:'Table'
                              QUOTATIONCFGSCUBLBS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUBLBM,
                              /** Configuration Data */
                              @RFCParameterType:'Table'
                              QUOTATIONCFGSCUCFGS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUCFGM,
                              /** Instance Data for Configuration */
                              @RFCParameterType:'Table'
                              QUOTATIONCFGSCUINS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUINSM,
                              /** Detail Data (Part_of Entries) for Configuration */
                              @RFCParameterType:'Table'
                              QUOTATIONCFGSCUPRTS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUPRTM,
                              /** Instance in Configuration */
                              @RFCParameterType:'Table'
                              QUOTATIONCFGSCUREFS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUREFM,
                              /** Characteristic Values for Configuration */
                              @RFCParameterType:'Table'
                              QUOTATIONCFGSCUVALS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVALM,
                              /** Variant Condition Key in Configuration */
                              @RFCParameterType:'Table'
                              QUOTATIONCFGSCUVKS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICUVKM,
                              /** Conditions Header Data */
                              @RFCParameterType:'Table'
                              QUOTATIONCONDHEAD : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDHD,
                              /** Conditions Item Data */
                              @RFCParameterType:'Table'
                              QUOTATIONCONDITEM : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDIT,
                              /** Conditions */
                              @RFCParameterType:'Table'
                              QUOTATIONCONDITIONS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCOND,
                              /** Condition Scale Quantity */
                              @RFCParameterType:'Table'
                              QUOTATIONCONDQTYSCALE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDQS,
                              /** Condition Scale Value */
                              @RFCParameterType:'Table'
                              QUOTATIONCONDVALSCALE : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICONDVS,
                              /** Contract data */
                              @RFCParameterType:'Table'
                              QUOTATIONCONTRACTS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDCNTR,
                              /** Credit Card Data */
                              @RFCParameterType:'Table'
                              QUOTATIONCREDITCARDS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPICCARDM,
                              /** Document Flow */
                              @RFCParameterType:'Table'
                              QUOTATIONFLOWS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDFLOW,
                              /** Item Data */
                              @RFCParameterType:'Table'
                              QUOTATIONITEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITBOS,
                              /** Partner Data */
                              @RFCParameterType:'Table'
                              QUOTATIONPARTNERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDPART,
                              /** Schedule Lines */
                              @RFCParameterType:'Table'
                              QUOTATIONSCHEDULELINES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHEDU,
                              /** Services */
                              @RFCParameterType:'Table'
                              QUOTATIONSERVICES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDESLLBOS,
                              /** Service Conditions */
                              @RFCParameterType:'Table'
                              QUOTATIONSERVICESCOND : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIBOSCD,
                              /** Communication Fields: Sales Document Item With BOS & Costing */
                              @RFCParameterType:'Table'
                              QUOTATIONSERVICESCOST : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIBOSCOST,
                              /** Service Texts */
                              @RFCParameterType:'Table'
                              QUOTATIONSERVICESTEXT : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIESLLTX,
                              /** Header Status */
                              @RFCParameterType:'Table'
                              QUOTATIONSTATUSHEADERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDHDST,
                              /** Item Status */
                              @RFCParameterType:'Table'
                              QUOTATIONSTATUSITEMS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDITST,
                              /** Text Header Info. */
                              @RFCParameterType:'Table'
                              QUOTATIONTEXTHEADERS : many SAP_ABAP_BACKEND_RFC.DDIC.BAPISDTEHD,
                              /** Text Lines for Document */
                              @RFCParameterType:'Table'
                              QUOTATIONTEXTLINES : many SAP_ABAP_BACKEND_RFC.DDIC.BAPITEXTLI,
                              /** Return Messages */
                              @RFCParameterType:'Table'
                              RETURN : many SAP_ABAP_BACKEND_RFC.DDIC.BAPIRET2) returns SAP_ABAP_BACKEND_RFC.BAPI_QUOTATION_GETDETAILBOS.ResultType;

}
