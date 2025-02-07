const cds = require("@sap/cds");
class SalesquoteService extends cds.ApplicationService {
  async init() {
    const sys = await cds.connect.to("SAP_ABAP_BACKEND_RFC");

    this.on("getQuotation", async (req) => {
      const bapiInquiryCreate = await sys.BAPI_QUOTATION_GETDETAILBOS(
        req.data
      );
      if (bapiInquiryCreate.RETURN.length > 0) {
        // Check all return messages if any of them is an error
        bapiInquiryCreate.RETURN.forEach((ret) => {
          if (ret.TYPE === "E") {
            throw new Error(ret.MESSAGE);
          }
        });
      }
      return bapiInquiryCreate;
    });

    return super.init();
  }
}
module.exports = SalesquoteService;
