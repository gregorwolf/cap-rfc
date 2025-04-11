// read environment variables from .env file
require("dotenv").config();
// console.log("SAP RFC Library Version: ", process.env.SAP_ABAP_BACKEND_RFC);
// SAP_ABAP_BACKEND_RFC must be filled with the credentials to connect to the ABAP system
// Example: { "user": "user", "passwd": "password", "ashost": "host", "sysnr": "00", "client": "100" }
const credentials = JSON.parse(process.env.SAP_ABAP_BACKEND_RFC);

const {
  RFCClient,
  RFCUtility,
  RFCError,
  NodeRFCLibraryError,
  RFCUtilityError,
  NodeRFCLibraryErrorCode,
  RFCErrorCode,
} = require("@sap-rfc/node-rfc-library");
(async () => {
  //Logger is an optional parameter
  const rfcClient = new RFCClient();
  try {
    // signature: open(connectionParams): connection.
    // Result
    // connectionObject: Object representing the connection to the backend system.
    const connection = await rfcClient.open(credentials);

    // execute(rfcName: string, input: RFCInputParams, enableValidation: boolean ,excludeParamsFromOutput?: string[]): {}
    // Input:
    // RFCname: The name of the RFC you need to execute.
    // inputParams: It is of the type of the following interface InputParams: {import: {}, changing: {}, table: {}}
    // enableValidation : If set to true, before executing the RFC mandatory parameter validation and datatype of Parameters and fields are validated. Note: This validation will happen inside Node RFC Library not inside SAP system.
    // excludeParamsFromOutput: List of parameters names you want excluded from the output from the ABAP System.
    // Output:
    // executionResult: A javascript object representing the output from the ABAP System.
    const executionResult = await connection.execute("RSAU_API_GET_LOG_DATA", {
      import: {
        IS_INTERVAL: {
          DAT_FROM: "20250410",
          DAT_TO: "20250412",
          TIM_FROM: "000000",
          TIM_TO: "235959",
        },
      },
      changing: {},
      table: {},
    });

    console.log("Execution Result: ", executionResult);

    // commit(): void
    await connection.commit();

    const metadata = await connection.getMetadata("RSAU_API_GET_LOG_DATA");

    // close(): void
    await connection.close();
    // Convert ABAP Type to Javascript Type
    const javascriptType = RFCUtility.convertAbapTypeToJavaScriptType("p"); //Javascript : 'string'
  } catch (error) {
    if (error instanceof RFCError) {
      if (error.code === RFCErrorCode.RFC_LOGON_FAILURE) {
        console.log("Logon Failure" + error.message);
      }
    } else if (error instanceof RFCUtilityError) {
      console.log("error from utility" + error.message);
    } else if (error instanceof NodeRFCLibraryError) {
      if (error.code === NodeRFCLibraryErrorCode.UNKNOW_ERROR)
        console.log("error from node rfc library" + error.message);
    }
    console.log(error);
  }
})();
