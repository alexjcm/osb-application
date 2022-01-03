xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/GET_CustomerBIZ_GETCustomerBIZOperation_request";
(:: import schema at "../Schema/customer_request_biz.xsd" ::)

declare variable $cust_sourcer_in as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($cust_sourcer_in as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns1:Root-Element) ::) {
    <ns1:Root-Element>
        <ns1:customer>
            <ns1:taxIdentificationNumber>{fn:data($cust_sourcer_in/ns1:customer/ns1:taxIdentificationNumber)}</ns1:taxIdentificationNumber>
        </ns1:customer>
    </ns1:Root-Element>
};

local:func($cust_sourcer_in)
