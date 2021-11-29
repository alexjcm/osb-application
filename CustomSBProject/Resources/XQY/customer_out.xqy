xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/GET_CustomerBIZ_GETCustomerBIZOperation_response";
(:: import schema at "../Schema/customer_response_biz.xsd" ::)
declare namespace ns2="http://TargetNamespace.com/MainPS_CustomerPSOperation_response";
(:: import schema at "../Schema/customer_response_ps.xsd" ::)

declare variable $customer_xq_source as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($customer_xq_source as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:customer>
            <ns2:birthDate>{fn:data($customer_xq_source/ns1:birthDate)}</ns2:birthDate>
            <ns2:customerCode>{fn:data($customer_xq_source/ns1:customerCode)}</ns2:customerCode>
            <ns2:firstName>{fn:data($customer_xq_source/ns1:firstName)}</ns2:firstName>
            <ns2:id>{fn:data($customer_xq_source/ns1:id)}</ns2:id>
            <ns2:lastName>{fn:data($customer_xq_source/ns1:lastName)}</ns2:lastName>
            <ns2:taxIdentificationNumber>{fn:data($customer_xq_source/ns1:taxIdentificationNumber)}</ns2:taxIdentificationNumber>
        </ns2:customer>
    </ns2:Root-Element>
};

local:func($customer_xq_source)
