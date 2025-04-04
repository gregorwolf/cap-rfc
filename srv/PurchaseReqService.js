const cds = require("@sap/cds");
class PurchaseReqService extends cds.ApplicationService {
  async init() {
    const sys = await cds.connect.to("S4H");

    this.on("createPurchaseReq", async (req) => {
      const bapiCreatePurchaseReq = await sys.BAPI_PR_CREATE(req.data);
      if (bapiCreatePurchaseReq.RETURN.length > 0) {
        // Check all return messages if any of them is an error
        bapiCreatePurchaseReq.RETURN.forEach((ret) => {
          if (ret.TYPE === "E") {
            throw new Error(ret.MESSAGE);
          }
        });
      }
      return bapiCreatePurchaseReq;
    });

    return super.init();
  }
}
module.exports = PurchaseReqService;
