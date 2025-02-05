using {cuid} from '@sap/cds/common';
using {SAP_ABAP_BACKEND_RFC} from './external/SAP_ABAP_BACKEND_RFC';

@(requires: 'authenticated-user')
service UserService {
    @cds.persistence.skip
    entity Users : cuid, SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME {

    }

    function getUsers()           returns array of SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME;
    function salesOrderSimulate() returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_SIMULATE.ResultType;
    function salesOrderCreate()   returns SAP_ABAP_BACKEND_RFC.BAPI_SALESORDER_CREATEFROMDAT2.ResultType;

}
