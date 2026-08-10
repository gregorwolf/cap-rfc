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

### Optional: use open-rfc for direct RFC connections

The SAP connector above remains the default for this sample. As an opt-in
alternative, [`open-rfc`](https://github.com/marianfoo/open-rfc) implements the
low-level compatibility API used by `@sap/cds-rfc`. The CAP models and service
handlers in this repository therefore stay unchanged.

`open-rfc` 0.x is beta software without a production SLA. The recipe below is
currently limited to a direct application-server connection (`ashost` and
`sysnr`) with user/password authentication, supplied directly or through a
direct application-server destination. It does not cover the Cloud Connector/BAS
setup, the Connectivity RFC proxy, or principal propagation.

Use Node.js 22.14 or newer within the 22.x release line and npm 11. In a separate
checkout or branch, update the root `package.json` with these commands:

```bash
npm pkg set dependencies.@sap/cds-rfc=2.2.1
npm pkg set 'dependencies.@sap-rfc/node-rfc-library=npm:open-rfc@0.2.3'
npm pkg set 'overrides.@sap/cds-rfc.@sap-rfc/node-rfc-library=$@sap-rfc/node-rfc-library'
npm install
```

The npm alias exposes `open-rfc` under the module ID expected by both this
repository's `rfc-test.js` and `@sap/cds-rfc`. The override makes the optional
transitive dependency use that same alias. Verify the installed dependency
before starting the application:

```bash
npm ls @sap-rfc/node-rfc-library --all
npm start
```

`npm ls` must show `@sap-rfc/node-rfc-library@npm:open-rfc@0.2.3` for the root
dependency and the deduplicated dependency below `@sap/cds-rfc`. See the
[open-rfc CAP compatibility
boundary](https://github.com/marianfoo/open-rfc#cap-compatibility-boundary) for
supported routes, value semantics, and current limitations.

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
