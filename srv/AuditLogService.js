const cds = require("@sap/cds");
class AuditLogService extends cds.ApplicationService {
  async init() {
    const sys = await cds.connect.to("SAP_ABAP_BACKEND_RFC");

    this.on("getAuditLog", async (req) => {
      return await sys.RSAU_API_GET_LOG_DATA(req.data);
    });

    return super.init();
  }
}
module.exports = AuditLogService;
