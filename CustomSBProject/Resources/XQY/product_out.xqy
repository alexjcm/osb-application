xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/GET_ProductBIZ_GETProductBIZOperation_response";
(:: import schema at "../Schema/product_response_biz.xsd" ::)
declare namespace ns2="http://TargetNamespace.com/MainPS_ProductPSOperation_response";
(:: import schema at "../Schema/product_response_ps.xsd" ::)

declare variable $product_xq_source as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($product_xq_source as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:product>
            <ns2:description>{fn:data($product_xq_source/ns1:description)}</ns2:description>
            <ns2:id>{fn:data($product_xq_source/ns1:id)}</ns2:id>
            <ns2:productCode>{fn:data($product_xq_source/ns1:productCode)}</ns2:productCode>
        </ns2:product>
    </ns2:Root-Element>
};

local:func($product_xq_source)
