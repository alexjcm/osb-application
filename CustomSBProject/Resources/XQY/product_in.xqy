xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/GET_ProductBIZ_GETProductBIZOperation_request";
(:: import schema at "../Schema/product_request_biz.xsd" ::)

declare variable $prod_source_in as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($prod_source_in as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns1:Root-Element) ::) {
    <ns1:Root-Element>
        <ns1:product>
            <ns1:productCode>{fn:data($prod_source_in/ns1:product/ns1:productCode)}</ns1:productCode>
        </ns1:product>
    </ns1:Root-Element>
};

local:func($prod_source_in)
