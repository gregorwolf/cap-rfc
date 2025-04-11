using {cuid} from '@sap/cds/common';
using {SAP_ABAP_BACKEND_RFC} from './external/SAP_ABAP_BACKEND_RFC';

@(requires: 'authenticated-user')
service AuditLogService {


    action getAuditLog( /** Time interval to read */
    @RFCParameterType: 'Import'
    IS_INTERVAL : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_SEL_INTV not null,
    /** Selection option: Application instance */
    @RFCParameterType: 'Import'
    IT_R_INSTANCE : SAP_ABAP_BACKEND_RFC.DDIC.RSDSSELOPT_T,
    /** Selection option: Client */
    @RFCParameterType: 'Import'
    IT_R_MANDT : SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_MANDT_RANGE,
    /** Selection option: Event selection */
    @RFCParameterType: 'Import'
    IT_R_MSG : SAP_ABAP_BACKEND_RFC.DDIC.RSAU_SEL_OPT_T_EVTS,
    /** Selection option: Program */
    @RFCParameterType: 'Import'
    IT_R_REPS : SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_PROGN_RANGE,
    /** Selection option: Transaction */
    @RFCParameterType: 'Import'
    IT_R_TCD : SAP_ABAP_BACKEND_RFC.DDIC.AUT_T_TCODE_RANGE,
    /** Selection option: User */
    @RFCParameterType: 'Import'
    IT_R_USER : SAP_ABAP_BACKEND_RFC.DDIC.SUSR_T_RANGE_4_XUBNAME) returns SAP_ABAP_BACKEND_RFC.RSAU_API_GET_LOG_DATA.ResultType;

}
