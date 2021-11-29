xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://TargetNamespace.com/MainPS_OrderrPSOperation_response";
(:: import schema at "../Schema/orderr_response_ps.xsd" ::)
declare namespace ns1="http://TargetNamespace.com/POST_OrderrBIZ_POSTOrderrBIZOperation_response";
(:: import schema at "../Schema/orderr_response_biz.xsd" ::)

declare variable $orderr_xq_out_source as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($orderr_xq_out_source as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:orderr>
            <ns2:documentNumber>{fn:data($orderr_xq_out_source/ns1:documentNumber)}</ns2:documentNumber>
            <ns2:id>{fn:data($orderr_xq_out_source/ns1:id)}</ns2:id>
        </ns2:orderr>
    </ns2:Root-Element>
};

local:func($orderr_xq_out_source)
