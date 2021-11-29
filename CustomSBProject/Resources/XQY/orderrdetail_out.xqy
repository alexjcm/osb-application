xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://TargetNamespace.com/MainPS_OrderrDetailPSOperation_response";
(:: import schema at "../Schema/orderrdetail_response_ps.xsd" ::)
declare namespace ns1="http://TargetNamespace.com/POST_OrderrDetailBIZ_POSTOrderrDetailBIZOperation_response";
(:: import schema at "../Schema/orderrdetail_response_biz.xsd" ::)

declare variable $orderrdetail_xq_out_source as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($orderrdetail_xq_out_source as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns2:Root-Element) ::) {
    <ns2:Root-Element>
        <ns2:orderrDetail>
            <ns2:id>{fn:data($orderrdetail_xq_out_source/ns1:id)}</ns2:id>
        </ns2:orderrDetail>
    </ns2:Root-Element>
};

local:func($orderrdetail_xq_out_source)
