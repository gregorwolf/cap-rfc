# CAP with RFC

## Preperation

If you can reach the ABAP backend system from your network then you can configure the connection details in an `.env` file:

```
cds.requires.SAP_ABAP_BACKEND_RFC.credentials={"ashost": "<fqdn>","client": "001","sysnr": "00",  "user": "<username>",  "passwd": "<password>"}
```

The package @sap-rfc/node-rfc-library is provided via the [Repository-Based Shipment Channel](https://help.sap.com/docs/RBSC/0a64be17478d4f5ba45d14ab62b0d74c/175673b12feb41739df4f041db52fe76.html). The Product Name used is [SPA BAPI NODE LIBRARY](https://ui.repositories.cloud.sap/www/webapp/licenses/73554900100900009091). You have to [define a user](https://ui.repositories.cloud.sap/www/webapp/users) for the Repository-Based Shipment Channel and set it by running:

```bash
export SAP_NPM_AUTH="<NPM Base64 Credentials>"
```

## Connect to the ABAP backend system via a Cloud Connector in SAP Business Application Studio (BAS)

Create a `.cdsrc-private.json` file in the root folder of your project with the following structure and fill it with the values also maintained in the Subaccount Destination:

```json
{
  "requires": {
    "SAP_ABAP_BACKEND_RFC": {
      "credentials": {
        "destinationBack": "",
        "connectivity_subaccount": "<Subaccount GUID>",
        "connectivity_proxy_host": "localhost",
        "connectivity_proxy_port": "",
        "ashost": "",
        "client": "",
        "sysnr": "",
        "connectivity_location_id": "",
        "user": "",
        "passwd": ""
      }
    }
  }
}
```

## Add additional RFC enabled function modules

```bash
cds import --from rfc --as cds --name BAPI_USER_GET_DETAIL --destination SAP_ABAP_BACKEND_RFC
```
