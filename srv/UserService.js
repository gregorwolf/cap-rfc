const cds = require("@sap/cds");
class UserService extends cds.ApplicationService {
  async init() {
    const sys = await cds.connect.to("SAP_ABAP_BACKEND_RFC");

    this.on('READ', 'Users', async req => {
      const userData = await sys.BAPI_USER_GETLIST({ MAX_ROWS: 10 });
      return userData.USERLIST;
    });

    this.on("getUsers", async (req) => {
      const userData = await sys.BAPI_USER_GETLIST({ MAX_ROWS: 10 });
      return userData.USERLIST;
    });

    this.on("salesOrderSimulate", async (req) => {
      const bapiSalesorderSimulate = await sys.BAPI_SALESORDER_SIMULATE({});
      return bapiSalesorderSimulate;
    });

    return super.init();
  }
}
module.exports = UserService;
