.class public final Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.super Ljava/lang/Object;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    }
.end annotation


# static fields
.field private static final NODE_AAA_SERVER_TRUST_ROOT:Ljava/lang/String; = "AAAServerTrustRoot"

.field private static final NODE_ABLE_TO_SHARE:Ljava/lang/String; = "AbleToShare"

.field private static final NODE_CERTIFICATE_TYPE:Ljava/lang/String; = "CertificateType"

.field private static final NODE_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "CertSHA256Fingerprint"

.field private static final NODE_CERT_URL:Ljava/lang/String; = "CertURL"

.field private static final NODE_CHECK_AAA_SERVER_CERT_STATUS:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field private static final NODE_COUNTRY:Ljava/lang/String; = "Country"

.field private static final NODE_CREATION_DATE:Ljava/lang/String; = "CreationDate"

.field private static final NODE_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final NODE_CREDENTIAL_PRIORITY:Ljava/lang/String; = "CredentialPriority"

.field private static final NODE_DATA_LIMIT:Ljava/lang/String; = "DataLimit"

.field private static final NODE_DIGITAL_CERTIFICATE:Ljava/lang/String; = "DigitalCertificate"

.field private static final NODE_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "DLBandwidth"

.field private static final NODE_EAP_METHOD:Ljava/lang/String; = "EAPMethod"

.field private static final NODE_EAP_TYPE:Ljava/lang/String; = "EAPType"

.field private static final NODE_EXPIRATION_DATE:Ljava/lang/String; = "ExpirationDate"

.field private static final NODE_EXTENSION:Ljava/lang/String; = "Extension"

.field private static final NODE_FQDN:Ljava/lang/String; = "FQDN"

.field private static final NODE_FQDN_MATCH:Ljava/lang/String; = "FQDN_Match"

.field private static final NODE_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final NODE_HESSID:Ljava/lang/String; = "HESSID"

.field private static final NODE_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final NODE_HOME_OI:Ljava/lang/String; = "HomeOI"

.field private static final NODE_HOME_OI_LIST:Ljava/lang/String; = "HomeOIList"

.field private static final NODE_HOME_OI_REQUIRED:Ljava/lang/String; = "HomeOIRequired"

.field private static final NODE_ICON_URL:Ljava/lang/String; = "IconURL"

.field private static final NODE_INNER_EAP_TYPE:Ljava/lang/String; = "InnerEAPType"

.field private static final NODE_INNER_METHOD:Ljava/lang/String; = "InnerMethod"

.field private static final NODE_INNER_VENDOR_ID:Ljava/lang/String; = "InnerVendorID"

.field private static final NODE_INNER_VENDOR_TYPE:Ljava/lang/String; = "InnerVendorType"

.field private static final NODE_IP_PROTOCOL:Ljava/lang/String; = "IPProtocol"

.field private static final NODE_MACHINE_MANAGED:Ljava/lang/String; = "MachineManaged"

.field private static final NODE_MAXIMUM_BSS_LOAD_VALUE:Ljava/lang/String; = "MaximumBSSLoadValue"

.field private static final NODE_MIN_BACKHAUL_THRESHOLD:Ljava/lang/String; = "MinBackhaulThreshold"

.field private static final NODE_NETWORK_ID:Ljava/lang/String; = "NetworkID"

.field private static final NODE_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field private static final NODE_OTHER:Ljava/lang/String; = "Other"

.field private static final NODE_OTHER_HOME_PARTNERS:Ljava/lang/String; = "OtherHomePartners"

.field private static final NODE_PASSWORD:Ljava/lang/String; = "Password"

.field private static final NODE_PER_PROVIDER_SUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field private static final NODE_POLICY:Ljava/lang/String; = "Policy"

.field private static final NODE_POLICY_UPDATE:Ljava/lang/String; = "PolicyUpdate"

.field private static final NODE_PORT_NUMBER:Ljava/lang/String; = "PortNumber"

.field private static final NODE_PREFERRED_ROAMING_PARTNER_LIST:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field private static final NODE_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final NODE_REALM:Ljava/lang/String; = "Realm"

.field private static final NODE_REQUIRED_PROTO_PORT_TUPLE:Ljava/lang/String; = "RequiredProtoPortTuple"

.field private static final NODE_RESTRICTION:Ljava/lang/String; = "Restriction"

.field private static final NODE_ROAMING_CONSORTIUM_OI:Ljava/lang/String; = "RoamingConsortiumOI"

.field private static final NODE_SIM:Ljava/lang/String; = "SIM"

.field private static final NODE_SIM_IMSI:Ljava/lang/String; = "IMSI"

.field private static final NODE_SOFT_TOKEN_APP:Ljava/lang/String; = "SoftTokenApp"

.field private static final NODE_SP_EXCLUSION_LIST:Ljava/lang/String; = "SPExclusionList"

.field private static final NODE_SSID:Ljava/lang/String; = "SSID"

.field private static final NODE_START_DATE:Ljava/lang/String; = "StartDate"

.field private static final NODE_SUBSCRIPTION_PARAMETER:Ljava/lang/String; = "SubscriptionParameter"

.field private static final NODE_SUBSCRIPTION_UPDATE:Ljava/lang/String; = "SubscriptionUpdate"

.field private static final NODE_TIME_LIMIT:Ljava/lang/String; = "TimeLimit"

.field private static final NODE_TRUST_ROOT:Ljava/lang/String; = "TrustRoot"

.field private static final NODE_TYPE_OF_SUBSCRIPTION:Ljava/lang/String; = "TypeOfSubscription"

.field private static final NODE_UPDATE_IDENTIFIER:Ljava/lang/String; = "UpdateIdentifier"

.field private static final NODE_UPDATE_INTERVAL:Ljava/lang/String; = "UpdateInterval"

.field private static final NODE_UPDATE_METHOD:Ljava/lang/String; = "UpdateMethod"

.field private static final NODE_UPLINK_BANDWIDTH:Ljava/lang/String; = "ULBandwidth"

.field private static final NODE_URI:Ljava/lang/String; = "URI"

.field private static final NODE_USAGE_LIMITS:Ljava/lang/String; = "UsageLimits"

.field private static final NODE_USAGE_TIME_PERIOD:Ljava/lang/String; = "UsageTimePeriod"

.field private static final NODE_USERNAME:Ljava/lang/String; = "Username"

.field private static final NODE_USERNAME_PASSWORD:Ljava/lang/String; = "UsernamePassword"

.field private static final NODE_VENDOR_ID:Ljava/lang/String; = "VendorId"

.field private static final NODE_VENDOR_TYPE:Ljava/lang/String; = "VendorType"

.field private static final PPS_MO_URN:Ljava/lang/String; = "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

.field private static final TAG:Ljava/lang/String; = "PpsMoParser"

.field private static final TAG_DDF_NAME:Ljava/lang/String; = "DDFName"

.field private static final TAG_MANAGEMENT_TREE:Ljava/lang/String; = "MgmtTree"

.field private static final TAG_NODE:Ljava/lang/String; = "Node"

.field private static final TAG_NODE_NAME:Ljava/lang/String; = "NodeName"

.field private static final TAG_RT_PROPERTIES:Ljava/lang/String; = "RTProperties"

.field private static final TAG_TYPE:Ljava/lang/String; = "Type"

.field private static final TAG_VALUE:Ljava/lang/String; = "Value"

.field private static final TAG_VER_DTD:Ljava/lang/String; = "VerDTD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .locals 11
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 534
    const/4 v3, 0x0

    .line 535
    .local v3, "nodeName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 536
    .local v4, "nodeValue":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v2, "childNodes":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 540
    .local v5, "parsedNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 541
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 542
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v8, "NodeName"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 543
    if-eqz v3, :cond_0

    .line 544
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v9, "Duplicate NodeName node"

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 546
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v3

    .local v3, "nodeName":Ljava/lang/String;
    goto :goto_0

    .line 547
    .end local v3    # "nodeName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "Node"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 548
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    move-result-object v6

    .line 549
    .local v6, "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 550
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Duplicate node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 552
    :cond_2
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    .end local v6    # "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    const-string/jumbo v8, "Value"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 555
    if-eqz v4, :cond_4

    .line 556
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v9, "Duplicate Value node"

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 558
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v4

    .local v4, "nodeValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 560
    .end local v4    # "nodeValue":Ljava/lang/String;
    :cond_5
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 564
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .end local v7    # "tag":Ljava/lang/String;
    :cond_6
    if-nez v3, :cond_7

    .line 565
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v9, "Invalid node: missing NodeName"

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 567
    :cond_7
    if-nez v4, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_8

    .line 568
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 569
    const-string/jumbo v10, " missing both value and children"

    .line 568
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 571
    :cond_8
    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 572
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 573
    const-string/jumbo v10, " contained both value and children"

    .line 572
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 576
    :cond_9
    if-eqz v4, :cond_a

    .line 577
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;

    invoke-direct {v8, v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 579
    :cond_a
    new-instance v8, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;

    invoke-direct {v8, v3, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v8
.end method

.method private static convertFromLongList(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1651
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Long;

    invoke-interface {p0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 1652
    .local v1, "objectArray":[Ljava/lang/Long;
    array-length v3, v1

    new-array v2, v3, [J

    .line 1653
    .local v2, "primitiveArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1654
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1656
    :cond_0
    return-object v2
.end method

.method private static getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 3
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot get value from a non-leaf node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1493
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1494
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for AAAServerTrustRoot"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1496
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1497
    .local v0, "certList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1498
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v1

    .line 1499
    .local v1, "certTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1501
    .end local v1    # "certTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_1
    return-object v0
.end method

.method private static parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1027
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for DigitalCertificate"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1030
    :cond_0
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    .line 1031
    .local v0, "certCred":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1032
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CertificateType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1034
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_1
    const-string/jumbo v4, "CertSHA256Fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1037
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    goto :goto_0

    .line 1040
    :cond_2
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under DigitalCertificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1041
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1040
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1044
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    return-object v0
.end method

.method private static parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 899
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for HomeSP"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 902
    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 903
    .local v2, "credential":Landroid/net/wifi/hotspot2/pps/Credential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 904
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CreationDate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 906
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    goto :goto_0

    .line 904
    :cond_1
    const-string/jumbo v4, "ExpirationDate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 909
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    goto :goto_0

    .line 904
    :cond_2
    const-string/jumbo v4, "UsernamePassword"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 912
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    goto :goto_0

    .line 904
    :cond_3
    const-string/jumbo v4, "DigitalCertificate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 915
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    goto :goto_0

    .line 904
    :cond_4
    const-string/jumbo v4, "Realm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 918
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_5
    const-string/jumbo v4, "CheckAAAServerCertStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 922
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 921
    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    goto/16 :goto_0

    .line 904
    :cond_6
    const-string/jumbo v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 925
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    goto/16 :goto_0

    .line 928
    :cond_7
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under Credential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 929
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 928
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 932
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_8
    return-object v2
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 5
    .param p0, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1607
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1608
    .local v0, "format":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1609
    .end local v0    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 1610
    .local v1, "pe":Ljava/text/ParseException;
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Badly formatted time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "userCred"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Leaf node not expected for EAPMethod"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 993
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 994
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EAPType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 996
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    goto :goto_0

    .line 994
    :cond_1
    const-string/jumbo v3, "InnerMethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 999
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_2
    const-string/jumbo v3, "VendorId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1008
    :cond_3
    const-string/jumbo v2, "PpsMoParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore unsupported EAP method parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 994
    :cond_4
    const-string/jumbo v3, "VendorType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "InnerEAPType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "InnerVendorID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "InnerVendorType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1011
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown node under EAPMethod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1014
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_5
    return-void
.end method

.method private static parseHexString(Ljava/lang/String;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1582
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1583
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Odd length hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1586
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 1587
    .local v3, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 1588
    mul-int/lit8 v2, v1, 0x2

    .line 1590
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1591
    :catch_0
    move-exception v0

    .line 1592
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1595
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "index":I
    :cond_1
    return-object v3
.end method

.method private static parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 8
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 806
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "Leaf node not expected for HomeOI instance"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 809
    :cond_0
    const/4 v3, 0x0

    .line 810
    .local v3, "oi":Ljava/lang/Long;
    const/4 v4, 0x0

    .line 811
    .local v4, "required":Ljava/lang/Boolean;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "oi":Ljava/lang/Long;
    .end local v4    # "required":Ljava/lang/Boolean;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 812
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "HomeOI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 815
    :try_start_0
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "oi":Ljava/lang/Long;
    goto :goto_0

    .line 812
    .end local v3    # "oi":Ljava/lang/Long;
    :cond_1
    const-string/jumbo v6, "HomeOIRequired"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 821
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .local v4, "required":Ljava/lang/Boolean;
    goto :goto_0

    .line 816
    .end local v4    # "required":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 817
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid HomeOI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 824
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown node under NetworkID instance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 825
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 828
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    if-nez v3, :cond_4

    .line 829
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "HomeOI instance missing OI field"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 831
    :cond_4
    if-nez v4, :cond_5

    .line 832
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "HomeOI instance missing required field"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 834
    :cond_5
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private static parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 778
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "Leaf node not expected for HomeOIList"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 781
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v3, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v4, "matchAnyOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 784
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    .line 785
    .local v2, "homeOI":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 786
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    :cond_1
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 791
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v2    # "homeOI":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_2
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private static parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 654
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for HomeSP"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 657
    :cond_0
    new-instance v3, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 658
    .local v3, "homeSp":Landroid/net/wifi/hotspot2/pps/HomeSp;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 659
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FQDN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 661
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_1
    const-string/jumbo v5, "FriendlyName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 664
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_2
    const-string/jumbo v5, "RoamingConsortiumOI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 668
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRoamingConsortiumOI(Ljava/lang/String;)[J

    move-result-object v4

    .line 667
    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    goto :goto_0

    .line 659
    :cond_3
    const-string/jumbo v5, "IconURL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 671
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_4
    const-string/jumbo v5, "NetworkID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 674
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    goto :goto_0

    .line 659
    :cond_5
    const-string/jumbo v5, "HomeOIList"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 677
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    .line 678
    .local v2, "homeOIs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/Long;>;Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    .line 679
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    goto/16 :goto_0

    .line 659
    .end local v2    # "homeOIs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/Long;>;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_6
    const-string/jumbo v5, "OtherHomePartners"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 682
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 685
    :cond_7
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under HomeSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 688
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_8
    return-object v3
.end method

.method private static parseInteger(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1623
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseLong(Ljava/lang/String;I)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1638
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid long integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 4
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Leaf node not expected for MinBackhaulThreshold"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1203
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1204
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    goto :goto_0

    .line 1206
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_1
    return-void
.end method

.method private static parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 10
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 1219
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1220
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v8, "Leaf node not expected for MinBackhaulThreshold instance"

    invoke-direct {v5, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1222
    :cond_0
    const/4 v4, 0x0

    .line 1223
    .local v4, "networkType":Ljava/lang/String;
    const-wide/high16 v2, -0x8000000000000000L

    .line 1224
    .local v2, "downlinkBandwidth":J
    const-wide/high16 v6, -0x8000000000000000L

    .line 1225
    .local v6, "uplinkBandwidth":J
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "networkType":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1226
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "NetworkType"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1228
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    .local v4, "networkType":Ljava/lang/String;
    goto :goto_0

    .line 1226
    .end local v4    # "networkType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "DLBandwidth"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1231
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    .line 1226
    :cond_2
    const-string/jumbo v8, "ULBandwidth"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1234
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    goto :goto_0

    .line 1237
    :cond_3
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown node under MinBackhaulThreshold instance "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1238
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1237
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1241
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_4
    if-nez v4, :cond_5

    .line 1242
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v8, "Missing NetworkType field"

    invoke-direct {v5, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1245
    :cond_5
    const-string/jumbo v5, "home"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1246
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    .line 1247
    invoke-virtual {p1, v6, v7}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    .line 1254
    :goto_1
    return-void

    .line 1248
    :cond_6
    const-string/jumbo v5, "roaming"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1249
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    .line 1250
    invoke-virtual {p1, v6, v7}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    goto :goto_1

    .line 1252
    :cond_7
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid network type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static parseMoText(Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 12
    .param p0, "xmlString"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 342
    new-instance v7, Landroid/net/wifi/hotspot2/omadm/XMLParser;

    invoke-direct {v7}, Landroid/net/wifi/hotspot2/omadm/XMLParser;-><init>()V

    .line 343
    .local v7, "xmlParser":Landroid/net/wifi/hotspot2/omadm/XMLParser;
    const/4 v5, 0x0

    .line 345
    .local v5, "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :try_start_0
    invoke-virtual {v7, p0}, Landroid/net/wifi/hotspot2/omadm/XMLParser;->parse(Ljava/lang/String;)Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 349
    .local v5, "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    if-nez v5, :cond_0

    .line 350
    return-object v11

    .line 346
    .local v5, "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :catch_0
    move-exception v4

    .line 347
    .local v4, "e":Ljava/lang/Exception;
    return-object v11

    .line 354
    .end local v4    # "e":Ljava/lang/Exception;
    .local v5, "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_0
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "MgmtTree"

    if-eq v8, v9, :cond_1

    .line 355
    const-string/jumbo v8, "PpsMoParser"

    const-string/jumbo v9, "Root is not a MgmtTree"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-object v11

    .line 359
    :cond_1
    const/4 v6, 0x0

    .line 360
    .local v6, "verDtd":Ljava/lang/String;
    const/4 v2, 0x0

    .line 361
    .local v2, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .end local v6    # "verDtd":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 362
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "VerDTD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 364
    if-eqz v6, :cond_3

    .line 365
    const-string/jumbo v8, "PpsMoParser"

    const-string/jumbo v9, "Duplicate VerDTD element"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v11

    .line 362
    :cond_2
    const-string/jumbo v9, "Node"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 371
    if-eqz v2, :cond_4

    .line 372
    const-string/jumbo v8, "PpsMoParser"

    const-string/jumbo v9, "Unexpected multiple Node element under MgmtTree"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-object v11

    .line 368
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v6

    .local v6, "verDtd":Ljava/lang/String;
    goto :goto_0

    .line 376
    .end local v6    # "verDtd":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :try_end_1
    .catch Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    goto :goto_0

    .line 377
    .end local v2    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :catch_1
    move-exception v3

    .line 378
    .local v3, "e":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    const-string/jumbo v8, "PpsMoParser"

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v11

    .line 383
    .end local v3    # "e":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    :cond_5
    const-string/jumbo v8, "PpsMoParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-object v11

    .line 387
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_6
    return-object v2
.end method

.method private static parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for NetworkID instance"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 746
    :cond_0
    const/4 v3, 0x0

    .line 747
    .local v3, "ssid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 748
    .local v2, "hessid":Ljava/lang/Long;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "hessid":Ljava/lang/Long;
    .end local v3    # "ssid":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 749
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SSID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 751
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    .local v3, "ssid":Ljava/lang/String;
    goto :goto_0

    .line 749
    .end local v3    # "ssid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "HESSID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 754
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, "hessid":Ljava/lang/Long;
    goto :goto_0

    .line 757
    .end local v2    # "hessid":Ljava/lang/Long;
    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under NetworkID instance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 758
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    .line 757
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    if-nez v3, :cond_4

    .line 762
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "NetworkID instance missing SSID"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 764
    :cond_4
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for NetworkID"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 722
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 723
    .local v3, "networkIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 724
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    .line 725
    .local v2, "networkId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 727
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v2    # "networkId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    return-object v3
.end method

.method private static parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 871
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for OtherHomePartner instance"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 873
    :cond_0
    const/4 v2, 0x0

    .line 874
    .local v2, "fqdn":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "fqdn":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 875
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FQDN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 877
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    .local v2, "fqdn":Ljava/lang/String;
    goto :goto_0

    .line 880
    .end local v2    # "fqdn":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    .line 881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under OtherHomePartner instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 880
    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 884
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_2
    if-nez v2, :cond_3

    .line 885
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "OtherHomePartner instance missing FQDN field"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 887
    :cond_3
    return-object v2
.end method

.method private static parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 849
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for OtherHomePartners"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 851
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v3, "otherHomePartners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 853
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, "fqdn":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 856
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v2    # "fqdn":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method private static parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1085
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1086
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for Policy"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1089
    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    .line 1090
    .local v2, "policy":Landroid/net/wifi/hotspot2/pps/Policy;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1091
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PreferredRoamingPartnerList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1093
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    goto :goto_0

    .line 1091
    :cond_1
    const-string/jumbo v4, "MinBackhaulThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1096
    invoke-static {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    goto :goto_0

    .line 1091
    :cond_2
    const-string/jumbo v4, "PolicyUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1099
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    goto :goto_0

    .line 1091
    :cond_3
    const-string/jumbo v4, "SPExclusionList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1102
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_4
    const-string/jumbo v4, "RequiredProtoPortTuple"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1105
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1091
    :cond_5
    const-string/jumbo v4, "MaximumBSSLoadValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1108
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    goto :goto_0

    .line 1111
    :cond_6
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under Policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1114
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_7
    return-object v2
.end method

.method private static parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 6
    .param p0, "root"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for PPS instance"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 611
    .local v2, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 612
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HomeSP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 614
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    goto :goto_0

    .line 612
    :cond_1
    const-string/jumbo v4, "Credential"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 617
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    goto :goto_0

    .line 612
    :cond_2
    const-string/jumbo v4, "Policy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 620
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    goto :goto_0

    .line 612
    :cond_3
    const-string/jumbo v4, "AAAServerTrustRoot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 623
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    goto :goto_0

    .line 612
    :cond_4
    const-string/jumbo v4, "SubscriptionUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 626
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    goto :goto_0

    .line 612
    :cond_5
    const-string/jumbo v4, "SubscriptionParameter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 629
    invoke-static {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    goto :goto_0

    .line 612
    :cond_6
    const-string/jumbo v4, "CredentialPriority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 632
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    goto/16 :goto_0

    .line 612
    :cond_7
    const-string/jumbo v4, "Extension"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 636
    const-string/jumbo v3, "PpsMoParser"

    const-string/jumbo v4, "Ignore Extension node for vendor specific information"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 639
    :cond_8
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 642
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_9
    return-object v2
.end method

.method private static parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 10
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    const/high16 v9, -0x80000000

    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    const/4 v3, 0x0

    .line 416
    .local v3, "nodeName":Ljava/lang/String;
    const/high16 v5, -0x80000000

    .line 417
    .local v5, "updateIdentifier":I
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .end local v3    # "nodeName":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 418
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "NodeName"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 420
    if-eqz v3, :cond_3

    .line 421
    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Duplicate NodeName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 418
    :cond_1
    const-string/jumbo v8, "Node"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 432
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    move-result-object v4

    .line 433
    .local v4, "ppsNodeRoot":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UpdateIdentifier"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 434
    if-eq v5, v9, :cond_4

    .line 435
    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v8, "Multiple node for UpdateIdentifier"

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 418
    .end local v4    # "ppsNodeRoot":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_2
    const-string/jumbo v8, "RTProperties"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 448
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, "urn":Ljava/lang/String;
    const-string/jumbo v7, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 450
    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown URN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 423
    .end local v6    # "urn":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "nodeName":Ljava/lang/String;
    const-string/jumbo v7, "PerProviderSubscription"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 425
    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected NodeName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 437
    .end local v3    # "nodeName":Ljava/lang/String;
    .restart local v4    # "ppsNodeRoot":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_4
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 440
    :cond_5
    if-eqz v2, :cond_6

    .line 441
    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v8, "Multiple PPS instance"

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 443
    :cond_6
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v2

    .local v2, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    goto/16 :goto_0

    .line 454
    .end local v2    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .end local v4    # "ppsNodeRoot":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_7
    new-instance v7, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown tag under PPS node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 457
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_8
    if-eqz v2, :cond_9

    if-eq v5, v9, :cond_9

    .line 458
    invoke-virtual {v2, v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 460
    :cond_9
    return-object v2
.end method

.method private static parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .locals 9
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1149
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1150
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "Leaf node not expected for PreferredRoamingPartner instance"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1154
    :cond_0
    new-instance v4, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-direct {v4}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    .line 1155
    .local v4, "roamingPartner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1156
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FQDN_Match"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1161
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, "fqdnMatch":Ljava/lang/String;
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, "fqdnMatchArray":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 1164
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid FQDN_Match: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1156
    .end local v2    # "fqdnMatch":Ljava/lang/String;
    .end local v3    # "fqdnMatchArray":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "Priority"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1176
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    goto :goto_0

    .line 1156
    :cond_2
    const-string/jumbo v6, "Country"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1179
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    .restart local v2    # "fqdnMatch":Ljava/lang/String;
    .restart local v3    # "fqdnMatchArray":[Ljava/lang/String;
    :cond_3
    aget-object v5, v3, v8

    invoke-virtual {v4, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    .line 1167
    aget-object v5, v3, v7

    const-string/jumbo v6, "exactMatch"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1168
    invoke-virtual {v4, v7}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    goto :goto_0

    .line 1169
    :cond_4
    aget-object v5, v3, v7

    const-string/jumbo v6, "includeSubdomains"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1170
    invoke-virtual {v4, v8}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    goto/16 :goto_0

    .line 1172
    :cond_5
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid FQDN_Match: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1182
    .end local v2    # "fqdnMatch":Ljava/lang/String;
    .end local v3    # "fqdnMatchArray":[Ljava/lang/String;
    :cond_6
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown node under PreferredRoamingPartnerList instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1183
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1186
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_7
    return-object v4
.end method

.method private static parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1128
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1129
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for PreferredRoamingPartnerList"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .local v2, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1133
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1135
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_1
    return-object v2
.end method

.method private static parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1455
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1456
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for RequiredProtoPortTuple instance"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1459
    :cond_0
    const/high16 v3, -0x80000000

    .line 1460
    .local v3, "proto":I
    const/4 v2, 0x0

    .line 1461
    .local v2, "ports":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "ports":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1462
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "IPProtocol"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1464
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1462
    :cond_1
    const-string/jumbo v5, "PortNumber"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1467
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ports":Ljava/lang/String;
    goto :goto_0

    .line 1470
    .end local v2    # "ports":Ljava/lang/String;
    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under RequiredProtoPortTuple instance"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1471
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1470
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1474
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_4

    .line 1475
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Missing IPProtocol field"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1477
    :cond_4
    if-nez v2, :cond_5

    .line 1478
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Missing PortNumber field"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1480
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1433
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1434
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for RequiredProtoPortTuple"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1436
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1437
    .local v3, "protoPortTupleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1438
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    .line 1439
    .local v2, "protoPortTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1441
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v2    # "protoPortTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-object v3
.end method

.method private static parseRoamingConsortiumOI(Ljava/lang/String;)[J
    .locals 6
    .param p0, "oiStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 700
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "oiStrArray":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [J

    .line 702
    .local v1, "oiArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 703
    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    return-object v1
.end method

.method private static parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1058
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for SIM"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1061
    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    .line 1062
    .local v2, "simCred":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1063
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "IMSI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1065
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    goto :goto_0

    .line 1063
    :cond_1
    const-string/jumbo v4, "EAPType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    goto :goto_0

    .line 1071
    :cond_2
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under SIM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1074
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    return-object v2
.end method

.method private static parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1408
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for SPExclusion instance"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1410
    :cond_0
    const/4 v2, 0x0

    .line 1411
    .local v2, "ssid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "ssid":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1412
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SSID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1414
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ssid":Ljava/lang/String;
    goto :goto_0

    .line 1417
    .end local v2    # "ssid":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Unknown node under SPExclusion instance"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1420
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_2
    return-object v2
.end method

.method private static parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1388
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1389
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for SPExclusionList"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1391
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v2, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1393
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1395
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private static parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1514
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1515
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Leaf node not expected for SubscriptionParameter"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1517
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1518
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CreationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1520
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    goto :goto_0

    .line 1518
    :cond_1
    const-string/jumbo v3, "ExpirationDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1523
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    goto :goto_0

    .line 1518
    :cond_2
    const-string/jumbo v3, "TypeOfSubscription"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1526
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    goto :goto_0

    .line 1518
    :cond_3
    const-string/jumbo v3, "UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1529
    invoke-static {v0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    goto :goto_0

    .line 1532
    :cond_4
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown node under SubscriptionParameter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1533
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1532
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1536
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_5
    return-void
.end method

.method private static parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1358
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for TrustRoot"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1361
    :cond_0
    const/4 v1, 0x0

    .line 1362
    .local v1, "certUrl":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1363
    .local v0, "certFingerprint":[B
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "certFingerprint":[B
    .end local v1    # "certUrl":Ljava/lang/String;
    .local v3, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1364
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CertURL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1366
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v1

    .local v1, "certUrl":Ljava/lang/String;
    goto :goto_0

    .line 1364
    .end local v1    # "certUrl":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "CertSHA256Fingerprint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1369
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "certFingerprint":[B
    goto :goto_0

    .line 1372
    .end local v0    # "certFingerprint":[B
    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under TrustRoot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1373
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1372
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1376
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 8
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1269
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v6, "Leaf node not expected for Update Parameters"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1272
    :cond_0
    new-instance v3, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    .line 1273
    .local v3, "updateParam":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1274
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UpdateInterval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1276
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    goto :goto_0

    .line 1274
    :cond_1
    const-string/jumbo v6, "UpdateMethod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1279
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 1274
    :cond_2
    const-string/jumbo v6, "Restriction"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1282
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    goto :goto_0

    .line 1274
    :cond_3
    const-string/jumbo v6, "URI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1285
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    goto :goto_0

    .line 1274
    :cond_4
    const-string/jumbo v6, "UsernamePassword"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1288
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v4

    .line 1289
    .local v4, "usernamePassword":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    .line 1290
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 1274
    .end local v4    # "usernamePassword":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v6, "TrustRoot"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1293
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v2

    .line 1294
    .local v2, "trustRoot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    .line 1295
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v3, v5}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    goto/16 :goto_0

    .line 1274
    .end local v2    # "trustRoot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_6
    const-string/jumbo v6, "Other"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1298
    const-string/jumbo v5, "PpsMoParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignore unsupported paramter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1301
    :cond_7
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown node under Update Parameters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1302
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1305
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_8
    return-object v3
.end method

.method private static parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .locals 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 1320
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1321
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v5, "Leaf node not expected for UsernamePassword"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1324
    :cond_0
    const/4 v3, 0x0

    .line 1325
    .local v3, "username":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1326
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "username":Ljava/lang/String;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1327
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Username"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1329
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    .local v3, "username":Ljava/lang/String;
    goto :goto_0

    .line 1327
    .end local v3    # "username":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "Password"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1332
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    .local v2, "password":Ljava/lang/String;
    goto :goto_0

    .line 1335
    .end local v2    # "password":Ljava/lang/String;
    :cond_2
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown node under UsernamePassword: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1336
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1335
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1339
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_3
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 477
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 478
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Expect RTPProperties node to only have one child"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 481
    .local v1, "typeNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 482
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Expect Type node to only have one child"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Type"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected tag for Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 489
    .local v0, "ddfNameNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 490
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Expect DDFName node to have no child"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DDFName"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 493
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected tag for DDFName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 1549
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1550
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v3, "Leaf node not expected for UsageLimits"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1552
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1553
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DataLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1555
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    goto :goto_0

    .line 1553
    :cond_1
    const-string/jumbo v3, "StartDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1558
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    goto :goto_0

    .line 1553
    :cond_2
    const-string/jumbo v3, "TimeLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1561
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    goto :goto_0

    .line 1553
    :cond_3
    const-string/jumbo v3, "UsageTimePeriod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1565
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1564
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    goto :goto_0

    .line 1568
    :cond_4
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown node under UsageLimits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1569
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1568
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1572
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_5
    return-void
.end method

.method private static parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string/jumbo v4, "Leaf node not expected for UsernamePassword"

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 949
    :cond_0
    new-instance v2, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    .line 950
    .local v2, "userCred":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 951
    .local v0, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Username"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 953
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_1
    const-string/jumbo v4, "Password"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 956
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_2
    const-string/jumbo v4, "MachineManaged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 959
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    goto :goto_0

    .line 951
    :cond_3
    const-string/jumbo v4, "SoftTokenApp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 962
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_4
    const-string/jumbo v4, "AbleToShare"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 965
    invoke-static {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    goto :goto_0

    .line 951
    :cond_5
    const-string/jumbo v4, "EAPMethod"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 968
    invoke-static {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    goto :goto_0

    .line 971
    :cond_6
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown node under UsernamPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 972
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 971
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 975
    .end local v0    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_7
    return-object v2
.end method
