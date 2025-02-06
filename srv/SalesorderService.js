const cds = require("@sap/cds");
class SalesorderService extends cds.ApplicationService {
  async init() {
    const sys = await cds.connect.to("SAP_ABAP_BACKEND_RFC");

    this.on("simulateOrder", async (req) => {
      // read default-salesorder.json file
      // const salesOrder = require("./default-salesorder-simulate.json");
      const bapiSalesorderSimulate = await sys.BAPI_SALESORDER_SIMULATE(
        req.data
      );
      if (bapiSalesorderSimulate.RETURN.TYPE === "E") {
        throw new Error(bapiSalesorderSimulate.RETURN.MESSAGE);
      }
      return bapiSalesorderSimulate;
    });

    this.on("createOrder", async (req) => {
      // read default-salesorder.json file
      // const salesOrder = require("./default-salesorder.json");
      const bapiSalesorderCreate = await sys.BAPI_SALESORDER_CREATEFROMDAT2(
        req.data
      );
      if (bapiSalesorderCreate.RETURN.length > 0) {
        // Check all return messages if any of them is an error
        bapiSalesorderCreate.RETURN.forEach((ret) => {
          if (ret.TYPE === "E") {
            throw new Error(ret.MESSAGE);
          }
        });
      }
      return bapiSalesorderCreate;
    });

    return super.init();
  }
}
module.exports = SalesorderService;
