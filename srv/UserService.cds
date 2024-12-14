using {SAP_ABAP_BACKEND_RFC as external} from './external/SAP_ABAP_BACKEND_RFC';

service UserService {

    function getUsers() returns array of external.BAPI_USER_GETLIST.ResultType;

}
