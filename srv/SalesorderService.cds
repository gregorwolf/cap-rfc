using {cuid} from '@sap/cds/common';
using {SAP_ABAP_BACKEND_RFC} from './external/SAP_ABAP_BACKEND_RFC';

@(requires: 'authenticated-user')
service SalesorderService {
    action simulate() returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE.ResultType;
    action create()   returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2.ResultType;

}
