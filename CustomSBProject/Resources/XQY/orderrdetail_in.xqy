xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/MainPS_OrderrDetailPSOperation_request";
(:: import schema at "../Schema/orderrdetail_request_ps.xsd" ::)
declare namespace ns3="http://TargetNamespace.com/POST_OrderrDetailBIZ_POSTOrderrDetailBIZOperation_request";
(:: import schema at "../Schema/orderrdetail_request_biz.xsd" ::)

declare variable $orderrdetail_xq_in_source as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($orderrdetail_xq_in_source as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns3:Root-Element) ::) {
    <ns3:Root-Element>
        <ns3:orderr>
            <ns3:id>{fn:data($orderrdetail_xq_in_source/ns1:orderrDetail/ns1:orderrId)}</ns3:id>
        </ns3:orderr>
        <ns3:product>
            <ns3:id>{fn:data($orderrdetail_xq_in_source/ns1:orderrDetail/ns1:productId)}</ns3:id>
        </ns3:product>
        <ns3:quantity>{fn:data($orderrdetail_xq_in_source/ns1:orderrDetail/ns1:quantity)}</ns3:quantity>
    </ns3:Root-Element>
};

local:func($orderrdetail_xq_in_source)
