xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/MainPS_OrderrPSOperation_request";
(:: import schema at "../Schema/orderr_request_ps.xsd" ::)
declare namespace ns2="http://TargetNamespace.com/POST_OrderrBIZ_POSTOrderrBIZOperation_request";
(:: import schema at "../Schema/orderr_request_biz.xsd" ::)

declare variable $orderr_xq_in_source as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($orderr_xq_in_source as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:documentNumber>{fn:data($orderr_xq_in_source/ns1:orderr/ns1:documentNumber)}</ns2:documentNumber>
        <ns2:orderrDate>{fn:data($orderr_xq_in_source/ns1:orderr/ns1:orderrDate)}</ns2:orderrDate>
        <ns2:customer>
            <ns2:id>{fn:data($orderr_xq_in_source/ns1:orderr/ns1:customerId)}</ns2:id>
        </ns2:customer>
    </ns2:Root-Element>
};

local:func($orderr_xq_in_source)
