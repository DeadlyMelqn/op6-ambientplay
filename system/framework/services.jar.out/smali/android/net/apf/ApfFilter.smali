.class public Landroid/net/apf/ApfFilter;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfFilter$InvalidRaException;,
        Landroid/net/apf/ApfFilter$ProcessRaResult;,
        Landroid/net/apf/ApfFilter$Ra;,
        Landroid/net/apf/ApfFilter$ReceiveThread;
    }
.end annotation


# static fields
.field private static final APF_PROGRAM_EVENT_LIFETIME_THRESHOLD:I = 0x2

.field private static final ARP_HEADER_OFFSET:I = 0xe

.field private static final ARP_IPV4_HEADER:[B

.field private static final ARP_OPCODE_OFFSET:I = 0x14

.field private static final ARP_OPCODE_REPLY:S = 0x2s

.field private static final ARP_OPCODE_REQUEST:S = 0x1s

.field private static final ARP_TARGET_IP_ADDRESS_OFFSET:I = 0x26

.field private static final DBG:Z = true

.field private static final DHCP_CLIENT_MAC_OFFSET:I = 0x32

.field private static final DHCP_CLIENT_PORT:I = 0x44

.field private static final ETH_BROADCAST_MAC_ADDRESS:[B

.field private static final ETH_DEST_ADDR_OFFSET:I = 0x0

.field private static final ETH_ETHERTYPE_OFFSET:I = 0xc

.field private static final ETH_HEADER_LEN:I = 0xe

.field private static final ETH_TYPE_MIN:I = 0x600

.field private static final FRACTION_OF_LIFETIME_TO_FILTER:I = 0x6

.field private static final ICMP6_NEIGHBOR_ANNOUNCEMENT:I = 0x88

.field private static final ICMP6_NEIGHBOR_SOLICITATION:I = 0x87

.field private static final ICMP6_ROUTER_ADVERTISEMENT:I = 0x86

.field private static final ICMP6_ROUTER_SOLICITATION:I = 0x85

.field private static final ICMP6_TYPE_OFFSET:I = 0x36

.field private static final IPV4_ANY_HOST_ADDRESS:I = 0x0

.field private static final IPV4_BROADCAST_ADDRESS:I = -0x1

.field private static final IPV4_DEST_ADDR_OFFSET:I = 0x1e

.field private static final IPV4_FRAGMENT_OFFSET_MASK:I = 0x1fff

.field private static final IPV4_FRAGMENT_OFFSET_OFFSET:I = 0x14

.field private static final IPV4_PROTOCOL_OFFSET:I = 0x17

.field private static final IPV6_ALL_NODES_ADDRESS:[B

.field private static final IPV6_DEST_ADDR_OFFSET:I = 0x26

.field private static final IPV6_FLOW_LABEL_LEN:I = 0x3

.field private static final IPV6_FLOW_LABEL_OFFSET:I = 0xf

.field private static final IPV6_HEADER_LEN:I = 0x28

.field private static final IPV6_NEXT_HEADER_OFFSET:I = 0x14

.field private static final IPV6_SRC_ADDR_OFFSET:I = 0x16

.field private static final MAX_PROGRAM_LIFETIME_WORTH_REFRESHING:J = 0x1eL

.field private static final MAX_RAS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ApfFilter"

.field private static final UDP_DESTINATION_PORT_OFFSET:I = 0x10

.field private static final UDP_HEADER_LEN:I = 0x8

.field private static final VDBG:Z


# instance fields
.field private final mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field private final mDrop802_3Frames:Z

.field mHardwareAddress:[B

.field private mIPv4Address:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mIPv4PrefixLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

.field private mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgram:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgramMinLifetime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTimeInstalledProgram:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mMulticastFilter:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNetworkInterface:Ljava/net/NetworkInterface;

.field private mNumProgramUpdates:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNumProgramUpdatesAllowingMulticast:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRas:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/apf/ApfFilter$Ra;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

.field private mUniqueCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;
    .locals 1
    .param p0, "-this"    # Landroid/net/apf/ApfFilter;

    .prologue
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;
    .locals 1
    .param p0, "-this"    # Landroid/net/apf/ApfFilter;

    .prologue
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/apf/ApfFilter;)I
    .locals 1
    .param p0, "-this"    # Landroid/net/apf/ApfFilter;

    .prologue
    iget v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    return v0
.end method

.method static synthetic -get3(Landroid/net/apf/ApfFilter;)I
    .locals 1
    .param p0, "-this"    # Landroid/net/apf/ApfFilter;

    .prologue
    iget v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/net/apf/ApfFilter;)J
    .locals 2
    .param p0, "-this"    # Landroid/net/apf/ApfFilter;

    .prologue
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Landroid/net/apf/ApfFilter;J)V
    .locals 1
    .param p0, "-this"    # Landroid/net/apf/ApfFilter;
    .param p1, "now"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->logApfProgramEventLocked(J)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/apf/ApfFilter;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 184
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 183
    sput-object v0, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    .line 206
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 205
    sput-object v0, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    .line 226
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    .line 87
    return-void

    .line 184
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 206
    nop

    :array_1
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 226
    :array_2
    .array-data 1
        0x0t
        0x1t
        0x8t
        0x0t
        0x6t
        0x4t
    .end array-data
.end method

.method constructor <init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;ZZLandroid/net/metrics/IpConnectivityLog;)V
    .locals 2
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "multicastFilter"    # Z
    .param p5, "ieee802_3Filter"    # Z
    .param p6, "log"    # Landroid/net/metrics/IpConnectivityLog;

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    .line 707
    iput v1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    .line 710
    iput v1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    .line 261
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 262
    iput-object p3, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    .line 263
    iput-object p2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    .line 264
    iput-boolean p4, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 265
    iput-boolean p5, p0, Landroid/net/apf/ApfFilter;->mDrop802_3Frames:Z

    .line 266
    iput-object p6, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 269
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->maybeStartFilter()V

    .line 270
    return-void
.end method

.method private beginProgramLocked()Landroid/net/apf/ApfGenerator;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 909
    new-instance v0, Landroid/net/apf/ApfGenerator;

    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    .line 911
    .local v0, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v4, v4, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    .line 927
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v5, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 929
    iget-boolean v4, p0, Landroid/net/apf/ApfFilter;->mDrop802_3Frames:Z

    if-eqz v4, :cond_0

    .line 931
    const-string/jumbo v4, "__DROP__"

    const/16 v5, 0x600

    invoke-virtual {v0, v5, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 935
    :cond_0
    const-string/jumbo v2, "skipArpFilters"

    .line 936
    .local v2, "skipArpFiltersLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-virtual {v0, v4, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 937
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 938
    invoke-virtual {v0, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 941
    const-string/jumbo v3, "skipIPv4Filters"

    .line 945
    .local v3, "skipIPv4FiltersLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-virtual {v0, v4, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 946
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 947
    invoke-virtual {v0, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 953
    const-string/jumbo v1, "IPv6Filters"

    .line 954
    .local v1, "ipv6FilterLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-virtual {v0, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 957
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 958
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v5, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v6, "__PASS__"

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 959
    const-string/jumbo v4, "__DROP__"

    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 962
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 963
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 964
    return-object v0
.end method

.method private static findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;
    .locals 5
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v4, 0x0

    .line 1160
    const/4 v2, 0x0

    .line 1161
    .local v2, "ipv4Address":Landroid/net/LinkAddress;
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "ipv4Address":Landroid/net/LinkAddress;
    .local v1, "address$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1162
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 1165
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 1167
    return-object v4

    .line 1169
    :cond_1
    move-object v2, v0

    .local v2, "ipv4Address":Landroid/net/LinkAddress;
    goto :goto_0

    .line 1171
    .end local v0    # "address":Landroid/net/LinkAddress;
    .end local v2    # "ipv4Address":Landroid/net/LinkAddress;
    :cond_2
    return-object v2
.end method

.method private generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 6
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x26

    const/4 v4, 0x0

    .line 736
    const-string/jumbo v0, "checkTargetIPv4"

    .line 739
    .local v0, "checkTargetIPv4":Ljava/lang/String;
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 740
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v2, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    const-string/jumbo v3, "__PASS__"

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 743
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v2, 0x14

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 744
    const/4 v1, 0x1

    const-string/jumbo v2, "checkTargetIPv4"

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 745
    const/4 v1, 0x2

    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 748
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v1, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 749
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v2, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v3, "__PASS__"

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 752
    const-string/jumbo v1, "checkTargetIPv4"

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 753
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-nez v1, :cond_0

    .line 755
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v1, v5}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 756
    const-string/jumbo v1, "__DROP__"

    invoke-virtual {p1, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 764
    :goto_0
    const-string/jumbo v1, "__PASS__"

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 765
    return-void

    .line 760
    :cond_0
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v1, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 761
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    const-string/jumbo v3, "__DROP__"

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_0
.end method

.method private generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 6
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1e

    .line 788
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v2, :cond_1

    .line 789
    const-string/jumbo v1, "skip_dhcp_v4_filter"

    .line 793
    .local v1, "skipDhcpv4Filter":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x17

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 794
    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string/jumbo v3, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 796
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 797
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    const/16 v3, 0x1fff

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 799
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0xd

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 800
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 801
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    const/16 v3, 0x44

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 803
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 805
    invoke-virtual {p1}, Landroid/net/apf/ApfGenerator;->addAddR1()Landroid/net/apf/ApfGenerator;

    .line 806
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    const-string/jumbo v4, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 807
    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 810
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 813
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v5}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 814
    const/16 v2, 0xf0

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addAnd(I)Landroid/net/apf/ApfGenerator;

    .line 815
    const-string/jumbo v2, "__DROP__"

    const/16 v3, 0xe0

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 818
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v5}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 819
    const-string/jumbo v2, "__DROP__"

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 820
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_0

    .line 821
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    iget v3, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->ipv4BroadcastAddress([BI)I

    move-result v0

    .line 822
    .local v0, "broadcastAddr":I
    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v0, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 826
    .end local v0    # "broadcastAddr":I
    :cond_0
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 827
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v4, "__PASS__"

    invoke-virtual {p1, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 828
    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 832
    .end local v1    # "skipDhcpv4Filter":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 833
    return-void
.end method

.method private generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 5
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x26

    .line 855
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 858
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v2, :cond_0

    .line 860
    const-string/jumbo v0, "skipIPv6MulticastFilter"

    .line 861
    .local v0, "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-virtual {p1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 864
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 865
    const-string/jumbo v2, "__DROP__"

    const/16 v3, 0xff

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 867
    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 868
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 875
    .end local v0    # "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "skipUnsolicitedMulticastNA"

    .line 876
    .local v1, "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x36

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 878
    const-string/jumbo v2, "__DROP__"

    const/16 v3, 0x85

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 880
    const/16 v2, 0x88

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 883
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 884
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    invoke-virtual {p1, v2, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 886
    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 887
    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 888
    return-void

    .line 871
    .end local v1    # "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    :cond_0
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    const-string/jumbo v3, "__PASS__"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_0
.end method

.method private getUniqueNumberLocked()J
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 278
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    return-wide v0
.end method

.method private hexDump(Ljava/lang/String;[BI)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v1, p3, v1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method public static ipv4BroadcastAddress([BI)I
    .locals 4
    .param p0, "addrBytes"    # [B
    .param p1, "prefixLength"    # I

    .prologue
    .line 1233
    invoke-static {p0}, Lcom/android/internal/util/BitUtils;->bytesToBEInt([B)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v2

    ushr-long/2addr v2, p1

    long-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private logApfProgramEventLocked(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v2, 0x0

    .line 1018
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    if-nez v1, :cond_0

    .line 1019
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1022
    .local v0, "ev":Landroid/net/metrics/ApfProgramEvent;
    iput-object v2, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1023
    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long v2, p1, v2

    iput-wide v2, v0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    .line 1024
    iget-wide v2, v0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1025
    return-void

    .line 1027
    :cond_1
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    invoke-virtual {v1, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    .line 1028
    return-void
.end method

.method public static maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;ZZ)Landroid/net/apf/ApfFilter;
    .locals 7
    .param p0, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p3, "multicastFilter"    # Z
    .param p4, "ieee802_3Filter"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1119
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v3

    .line 1120
    :cond_1
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v0, :cond_2

    return-object v3

    .line 1121
    :cond_2
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_3

    .line 1122
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unacceptably small APF limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    return-object v3

    .line 1129
    :cond_3
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    sget v1, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    if-eq v0, v1, :cond_4

    return-object v3

    .line 1130
    :cond_4
    new-instance v0, Landroid/net/apf/ApfGenerator;

    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1131
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported APF version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return-object v3

    .line 1134
    :cond_5
    new-instance v0, Landroid/net/apf/ApfFilter;

    .line 1135
    new-instance v6, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v6}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1134
    invoke-direct/range {v0 .. v6}, Landroid/net/apf/ApfFilter;-><init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;ZZLandroid/net/metrics/IpConnectivityLog;)V

    return-object v0
.end method

.method private purgeExpiredRasLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 1044
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1045
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expiring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1047
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1049
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    :cond_1
    return-void
.end method

.method private shouldInstallnewProgram()Z
    .locals 6

    .prologue
    .line 1034
    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    add-long v0, v2, v4

    .line 1035
    .local v0, "expiry":J
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected currentTimeSeconds()J
    .locals 4

    .prologue
    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    monitor-enter p0

    .line 1188
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Capabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receive thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RUNNING"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Multicast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "DROP"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IPv4 address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    :goto_2
    :try_start_2
    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1196
    const-string/jumbo v3, "No program installed."

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1197
    return-void

    .line 1189
    :cond_0
    :try_start_3
    const-string/jumbo v3, "STOPPED"

    goto :goto_0

    .line 1190
    :cond_1
    const-string/jumbo v3, "ALLOW"

    goto :goto_1

    .line 1199
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Program updates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    const-string/jumbo v3, "Last program length %d, installed %ds ago, lifetime %ds"

    .line 1200
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1202
    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1203
    iget-wide v6, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 1200
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v3, "RA filters:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1207
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ra$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    .line 1208
    .local v1, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1209
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1211
    const-string/jumbo v3, "Seen: %d, last %ds ago"

    .line 1210
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1211
    iget v5, v1, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v6

    iget-wide v8, v1, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1210
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v3, "Last match:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1215
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->getLastMatchingPacket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1218
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .end local v1    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1220
    .restart local v2    # "ra$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1223
    const-string/jumbo v3, "Last program:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1225
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 1228
    return-void

    .line 1193
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method installNewProgramLocked()V
    .locals 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 973
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 974
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v9, "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    const-wide v6, 0x7fffffffffffffffL

    .line 979
    .local v6, "programMinLifetime":J
    :try_start_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v1

    .line 980
    .local v1, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ra$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/apf/ApfFilter$Ra;

    .line 981
    .local v5, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v5, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    .line 983
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    move-result v10

    iget-object v11, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v11, v11, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    if-le v10, v11, :cond_1

    .line 987
    .end local v5    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v1

    .line 988
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/apf/ApfFilter$Ra;

    .line 989
    .restart local v5    # "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v5, v1}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 984
    :cond_1
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 994
    .end local v1    # "gen":Landroid/net/apf/ApfGenerator;
    .end local v5    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v8    # "ra$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "ApfFilter"

    const-string/jumbo v11, "Failed to generate APF program."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    return-void

    .line 993
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "gen":Landroid/net/apf/ApfGenerator;
    .restart local v8    # "ra$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator;->generate()[B
    :try_end_1
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 998
    .local v4, "program":[B
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v2

    .line 999
    .local v2, "now":J
    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    .line 1000
    iput-wide v6, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    .line 1001
    iput-object v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    .line 1002
    iget v10, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    .line 1007
    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v10, v4}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    .line 1008
    invoke-direct {p0, v2, v3}, Landroid/net/apf/ApfFilter;->logApfProgramEventLocked(J)V

    .line 1009
    new-instance v10, Landroid/net/metrics/ApfProgramEvent;

    invoke-direct {v10}, Landroid/net/metrics/ApfProgramEvent;-><init>()V

    iput-object v10, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    .line 1010
    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iput-wide v6, v10, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 1011
    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v10, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 1012
    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iget-object v11, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v10, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 1013
    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    array-length v11, v4

    iput v11, v10, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 1014
    iget-object v11, p0, Landroid/net/apf/ApfFilter;->mLastInstallEvent:Landroid/net/metrics/ApfProgramEvent;

    iget-object v10, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    iget-boolean v12, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    invoke-static {v10, v12}, Landroid/net/metrics/ApfProgramEvent;->flagsFor(ZZ)I

    move-result v10

    iput v10, v11, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 1015
    return-void

    .line 1014
    :cond_3
    const/4 v10, 0x0

    goto :goto_2
.end method

.method maybeStartFilter()V
    .locals 6

    .prologue
    .line 289
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    .line 290
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :try_start_1
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 294
    sget v3, Landroid/system/OsConstants;->AF_PACKET:I

    sget v4, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v5, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-static {v3, v4, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 295
    .local v2, "socket":Ljava/io/FileDescriptor;
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    int-to-short v3, v3

    .line 296
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    .line 295
    invoke-direct {v0, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 297
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 298
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v3, v3, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->attachRaFilter(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    new-instance v3, Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-direct {v3, p0, v2}, Landroid/net/apf/ApfFilter$ReceiveThread;-><init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 304
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v3}, Landroid/net/apf/ApfFilter$ReceiveThread;->start()V

    .line 305
    return-void

    .line 290
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    .end local v2    # "socket":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0

    throw v3
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ApfFilter"

    const-string/jumbo v4, "Error starting filter"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    return-void
.end method

.method declared-synchronized processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 6
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    monitor-enter p0

    .line 1064
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1065
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfFilter$Ra;

    .line 1066
    .local v2, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1069
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    .line 1070
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    .line 1071
    iget v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 1080
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1083
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->shouldInstallnewProgram()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1084
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 1085
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1087
    :cond_0
    :try_start_1
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1064
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1090
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 1092
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 1093
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1097
    :cond_3
    :try_start_3
    new-instance v2, Landroid/net/apf/ApfFilter$Ra;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/apf/ApfFilter$Ra;-><init>(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1103
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :try_start_4
    invoke-virtual {v2}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1104
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1098
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v3, "ApfFilter"

    const-string/jumbo v4, "Error parsing RA"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1106
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_4
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1107
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 1109
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v3

    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    monitor-enter p0

    .line 1176
    :try_start_0
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;

    move-result-object v1

    .line 1177
    .local v1, "ipv4Address":Landroid/net/LinkAddress;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1178
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 1179
    .local v2, "prefix":I
    :goto_1
    iget v3, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit p0

    .line 1180
    return-void

    .line 1177
    .end local v2    # "prefix":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "addr":[B
    goto :goto_0

    .line 1178
    .end local v0    # "addr":[B
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "prefix":I
    goto :goto_1

    .line 1182
    :cond_2
    :try_start_1
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    .line 1183
    iput v2, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    .line 1184
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1185
    return-void

    .end local v1    # "ipv4Address":Landroid/net/LinkAddress;
    .end local v2    # "prefix":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setMulticastFilter(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    monitor-enter p0

    .line 1148
    :try_start_0
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    .line 1149
    return-void

    .line 1151
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 1152
    if-nez p1, :cond_1

    .line 1153
    iget v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdatesAllowingMulticast:I

    .line 1155
    :cond_1
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1156
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1139
    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v0, :cond_0

    .line 1140
    const-string/jumbo v0, "shutting down"

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->halt()V

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 1144
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1145
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
