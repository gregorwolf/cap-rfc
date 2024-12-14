using {SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME as BAPIUSNAME} from './external/SAP_ABAP_BACKEND_RFC';

service UserService {

    function getUsers() returns array of BAPIUSNAME;

}
