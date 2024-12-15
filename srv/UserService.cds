using {SAP_ABAP_BACKEND_RFC.DDIC.BAPIUSNAME as BAPIUSNAME} from './external/SAP_ABAP_BACKEND_RFC';

service UserService {
    @cds.persistence.skip
    entity Users : BAPIUSNAME {

    }

    function getUsers() returns array of BAPIUSNAME;

}
