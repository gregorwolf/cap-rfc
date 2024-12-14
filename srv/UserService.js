const cds = require("@sap/cds");
class UserService extends cds.ApplicationService {
  init() {
    this.on("getUsers", async (req) => {
      const sys = await cds.connect.to("SAP_ABAP_BACKEND_RFC");
      const userData = await sys.BAPI_USER_GETLIST({ MAX_ROWS: 10 });
      return userData.USERLIST;
    });
    return super.init();
  }
}
module.exports = UserService;
