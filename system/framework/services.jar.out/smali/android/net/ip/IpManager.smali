.class public Landroid/net/ip/IpManager;
.super Lcom/android/internal/util/StateMachine;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$Callback;,
        Landroid/net/ip/IpManager$InitialConfiguration;,
        Landroid/net/ip/IpManager$LoggingCallbackWrapper;,
        Landroid/net/ip/IpManager$MessageHandlingLogger;,
        Landroid/net/ip/IpManager$ProvisioningConfiguration;,
        Landroid/net/ip/IpManager$RunningState;,
        Landroid/net/ip/IpManager$StartedState;,
        Landroid/net/ip/IpManager$StoppedState;,
        Landroid/net/ip/IpManager$StoppingState;,
        Landroid/net/ip/IpManager$WaitForProvisioningCallback;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I = null

.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final CMD_CONFIRM:I = 0x3

.field private static final CMD_SET_MULTICAST_FILTER:I = 0x8

.field private static final CMD_START:I = 0x2

.field private static final CMD_STOP:I = 0x1

.field private static final CMD_UPDATE_HTTP_PROXY:I = 0x7

.field private static final CMD_UPDATE_TCP_BUFFER_SIZES:I = 0x6

.field private static final DBG:Z = false

.field public static final DUMP_ARG:Ljava/lang/String; = "ipmanager"

.field public static final DUMP_ARG_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final EVENT_DHCPACTION_TIMEOUT:I = 0xa

.field private static final EVENT_NETLINK_LINKPROPERTIES_CHANGED:I = 0x5

.field private static final EVENT_PRE_DHCP_ACTION_COMPLETE:I = 0x4

.field private static final EVENT_PROVISIONING_TIMEOUT:I = 0x9

.field private static final MAX_LOG_RECORDS:I = 0x1f4

.field private static final MAX_PACKET_RECORDS:I = 0x64

.field private static final NO_CALLBACKS:Z = false

.field private static final SEND_CALLBACKS:Z = true

.field private static final VDBG:Z

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApfFilter:Landroid/net/apf/ApfFilter;

.field protected final mCallback:Landroid/net/ip/IpManager$Callback;

.field private final mClatInterfaceName:Ljava/lang/String;

.field private mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

.field private final mConnectivityPacketLog:Landroid/util/LocalLog;

.field private final mContext:Landroid/content/Context;

.field private final mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mDhcpClient:Landroid/net/dhcp/DhcpClient;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

.field private mMulticastFiltering:Z

.field private final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field private final mNetd:Landroid/net/INetd;

.field private final mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private final mNwService:Landroid/os/INetworkManagementService;

.field private final mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private final mRunningState:Lcom/android/internal/util/State;

.field private mStartTimeMillis:J

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mStoppedState:Lcom/android/internal/util/State;

.field private final mStoppingState:Lcom/android/internal/util/State;

.field private final mTag:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static synthetic -android_net_ip_IpManager-mthref-0(Landroid/net/LinkAddress;)Z
    .locals 1

    .prologue
    .line 1295
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager-mthref-1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1775
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Landroid/net/ip/IpManager;)Landroid/net/util/SharedLog;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic -get11(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    return-object v0
.end method

.method static synthetic -get12(Landroid/net/ip/IpManager;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-boolean v0, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    return v0
.end method

.method static synthetic -get13(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method static synthetic -get14(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic -get15(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get16(Landroid/net/ip/IpManager;)J
    .locals 2
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-wide v0, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    return-wide v0
.end method

.method static synthetic -get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get18(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-object v0
.end method

.method static synthetic -get20(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/ip/IpManager;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic -get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object v0
.end method

.method static synthetic -get7(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object v0
.end method

.method static synthetic -get9(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method private static synthetic -getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/LinkProperties$ProvisioningChange;->values()[Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "-value"    # Landroid/net/apf/ApfFilter;

    .prologue
    iput-object p1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$ProvisioningConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "-value"    # Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .prologue
    iput-object p1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "-value"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    iput-object p1, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "-value"    # Landroid/net/ProxyInfo;

    .prologue
    iput-object p1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "-value"    # Landroid/net/ip/IpReachabilityMonitor;

    .prologue
    iput-object p1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object p1
.end method

.method static synthetic -set5(Landroid/net/ip/IpManager;Z)Z
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    return p1
.end method

.method static synthetic -set6(Landroid/net/ip/IpManager;J)J
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    return-wide p1
.end method

.method static synthetic -set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$InitialConfiguration;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "config"    # Landroid/net/ip/IpManager$InitialConfiguration;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->applyInitialConfig(Landroid/net/ip/IpManager$InitialConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/IpManager;Z)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "sendCallbacks"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleLinkPropertiesUpdate(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    return-void
.end method

.method static synthetic -wrap12(Landroid/net/ip/IpManager;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/net/ip/IpManager;I)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->recordMetric(I)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager;->resetLinkProperties()V

    return-void
.end method

.method static synthetic -wrap15(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager;->stopAllIP()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/net/ip/IpManager;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/net/ip/IpManager;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/net/ip/IpManager;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIpReachabilityMonitor()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "delta"    # Landroid/net/LinkProperties$ProvisioningChange;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/net/ip/IpManager;I)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;
    .param p1, "failureType"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->doImmediateProvisioningFailure(I)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/IpManager;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleIPv4Failure()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/ip/IpManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    .line 103
    sget-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    .line 102
    sput-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;

    .prologue
    .line 596
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 595
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 597
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 595
    invoke-direct/range {v0 .. v5}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;Landroid/net/INetd;)V

    .line 598
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "nwService"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 606
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;Landroid/net/INetd;)V

    .line 607
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;Landroid/net/INetd;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "nwService"    # Landroid/os/INetworkManagementService;
    .param p5, "netd"    # Landroid/net/INetd;

    .prologue
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/ip/IpManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 556
    new-instance v0, Landroid/net/ip/IpManager$StoppedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StoppedState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    .line 557
    new-instance v0, Landroid/net/ip/IpManager$StoppingState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StoppingState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    .line 558
    new-instance v0, Landroid/net/ip/IpManager$StartedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StartedState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    .line 559
    new-instance v0, Landroid/net/ip/IpManager$RunningState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$RunningState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    .line 575
    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 613
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    .line 615
    iput-object p1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    .line 616
    iput-object p2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    .line 618
    new-instance v0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;

    invoke-direct {v0, p0, p3}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;-><init>(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    .line 619
    iput-object p4, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 620
    iput-object p5, p0, Landroid/net/ip/IpManager;->mNetd:Landroid/net/INetd;

    .line 622
    new-instance v0, Landroid/net/util/SharedLog;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v1}, Landroid/net/util/SharedLog;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    .line 623
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    .line 624
    new-instance v0, Landroid/net/ip/IpManager$MessageHandlingLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;-><init>(Landroid/net/ip/IpManager$MessageHandlingLogger;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    .line 626
    new-instance v0, Landroid/net/ip/IpManager$2;

    .line 627
    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 628
    new-instance v2, Landroid/net/ip/IpManager$1;

    invoke-direct {v2, p0}, Landroid/net/ip/IpManager$1;-><init>(Landroid/net/ip/IpManager;)V

    .line 626
    invoke-direct {v0, p0, v1, v2}, Landroid/net/ip/IpManager$2;-><init>(Landroid/net/ip/IpManager;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    .line 671
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 672
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 674
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 675
    new-instance v3, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$2;

    invoke-direct {v3, p0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$2;-><init>(Ljava/lang/Object;)V

    .line 674
    invoke-direct {v0, v1, v2, v3}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 677
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".EVENT_PROVISIONING_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    .line 677
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 679
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".EVENT_DHCPACTION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    .line 679
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 684
    invoke-direct {p0}, Landroid/net/ip/IpManager;->configureAndStartStateMachine()V

    .line 688
    invoke-direct {p0}, Landroid/net/ip/IpManager;->startStateMachineUpdaters()V

    .line 689
    return-void
.end method

.method private static addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V
    .locals 3
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p1, "dnses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dns$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1143
    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_0

    .line 1147
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_1
    return-void
.end method

.method static all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1767
    .local p0, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p1}, Landroid/net/ip/IpManager;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1758
    .local p0, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1759
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1760
    const/4 v2, 0x1

    return v2

    .line 1763
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private applyInitialConfig(Landroid/net/ip/IpManager$InitialConfiguration;)Z
    .locals 10
    .param p1, "config"    # Landroid/net/ip/IpManager$InitialConfiguration;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1289
    iget-object v3, p0, Landroid/net/ip/IpManager;->mNetd:Landroid/net/INetd;

    if-nez v3, :cond_0

    .line 1290
    const-string/jumbo v3, "tried to add %s to %s but INetd was null"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v7

    iget-object v5, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-direct {p0, v3, v4}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1291
    return v7

    .line 1295
    :cond_0
    iget-object v3, p1, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$4:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v3, v4}, Landroid/net/ip/IpManager;->findAll(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1297
    .local v0, "addr":Landroid/net/LinkAddress;
    :try_start_0
    iget-object v3, p0, Landroid/net/ip/IpManager;->mNetd:Landroid/net/INetd;

    .line 1298
    iget-object v4, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    .line 1297
    invoke-interface {v3, v4, v5, v6}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v2

    .line 1300
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "failed to add %s to %s: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    iget-object v5, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    aput-object v5, v4, v8

    aput-object v2, v4, v9

    invoke-direct {p0, v3, v4}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1301
    return v7

    .line 1305
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v8
.end method

.method private assembleLinkProperties()Landroid/net/LinkProperties;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1070
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 1071
    .local v2, "newLp":Landroid/net/LinkProperties;
    iget-object v8, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1083
    iget-object v8, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v8}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1084
    .local v1, "netlinkLinkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 1085
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "route$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 1086
    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_0

    .line 1088
    .end local v6    # "route":Landroid/net/RouteInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/net/ip/IpManager;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1094
    iget-object v8, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v8, :cond_2

    .line 1095
    iget-object v8, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v9, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 1096
    .restart local v6    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1

    .line 1098
    .end local v6    # "route":Landroid/net/RouteInfo;
    :cond_1
    iget-object v8, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v8, v8, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {v2, v8}, Landroid/net/ip/IpManager;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1099
    iget-object v8, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v8, v8, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1101
    iget-object v8, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget v8, v8, Landroid/net/DhcpResults;->mtu:I

    if-eqz v8, :cond_2

    .line 1102
    iget-object v8, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget v8, v8, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {v2, v8}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1107
    :cond_2
    iget-object v8, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1108
    iget-object v8, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 1110
    :cond_3
    iget-object v8, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v8, :cond_4

    .line 1111
    iget-object v8, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2, v8}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1115
    :cond_4
    iget-object v8, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v8, v8, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    if-eqz v8, :cond_6

    .line 1116
    iget-object v8, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v8, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    .line 1119
    .local v0, "config":Landroid/net/ip/IpManager$InitialConfiguration;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8, v10}, Landroid/net/ip/IpManager$InitialConfiguration;->isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1120
    iget-object v8, v0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "prefix$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpPrefix;

    .line 1121
    .local v4, "prefix":Landroid/net/IpPrefix;
    new-instance v8, Landroid/net/RouteInfo;

    iget-object v9, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v8, v4, v10, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_2

    .line 1124
    .end local v4    # "prefix":Landroid/net/IpPrefix;
    .end local v5    # "prefix$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v8, v0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-static {v2, v8}, Landroid/net/ip/IpManager;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1126
    .end local v0    # "config":Landroid/net/ip/IpManager$InitialConfiguration;
    :cond_6
    iget-object v3, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1134
    .local v3, "oldLp":Landroid/net/LinkProperties;
    return-object v2
.end method

.method public static buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 1

    .prologue
    .line 725
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;-><init>()V

    return-object v0
.end method

.method private clearIPv4Address()V
    .locals 6

    .prologue
    .line 1177
    :try_start_0
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1178
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    new-instance v2, Landroid/net/LinkAddress;

    const-string/jumbo v3, "0.0.0.0/0"

    invoke-direct {v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1179
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Failed to clear IPv4 address on interface %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {p0, v2, v3}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 9
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 947
    iget-object v8, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v8, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    .line 948
    :goto_0
    invoke-static {p1, v0}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpManager$InitialConfiguration;)Z

    move-result v7

    .line 949
    .local v7, "wasProvisioned":Z
    invoke-static {p2, v0}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpManager$InitialConfiguration;)Z

    move-result v3

    .line 951
    .local v3, "isProvisioned":Z
    if-nez v7, :cond_2

    if-eqz v3, :cond_2

    .line 952
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 971
    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :goto_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v8

    xor-int/lit8 v5, v8, 0x1

    .line 972
    :goto_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v8

    xor-int/lit8 v4, v8, 0x1

    .line 973
    :goto_3
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v8

    xor-int/lit8 v6, v8, 0x1

    .line 989
    :goto_4
    const/4 v2, 0x1

    .line 1008
    .local v2, "ignoreIPv6ProvisioningLoss":Z
    if-nez v4, :cond_8

    .line 1017
    :goto_5
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1021
    :cond_0
    return-object v1

    .line 947
    .end local v1    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    .end local v2    # "ignoreIPv6ProvisioningLoss":Z
    .end local v3    # "isProvisioned":Z
    .end local v7    # "wasProvisioned":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "config":Landroid/net/ip/IpManager$InitialConfiguration;
    goto :goto_0

    .line 953
    .end local v0    # "config":Landroid/net/ip/IpManager$InitialConfiguration;
    .restart local v3    # "isProvisioned":Z
    .restart local v7    # "wasProvisioned":Z
    :cond_2
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    .line 954
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    .restart local v1    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_1

    .line 955
    .end local v1    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :cond_3
    if-nez v7, :cond_4

    xor-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_4

    .line 956
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    .restart local v1    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_1

    .line 968
    .end local v1    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :cond_4
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .restart local v1    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_1

    .line 971
    :cond_5
    const/4 v5, 0x0

    .local v5, "lostIPv6":Z
    goto :goto_2

    .line 972
    .end local v5    # "lostIPv6":Z
    :cond_6
    const/4 v4, 0x0

    .local v4, "lostIPv4Address":Z
    goto :goto_3

    .line 973
    .end local v4    # "lostIPv4Address":Z
    :cond_7
    const/4 v6, 0x0

    .local v6, "lostIPv6Router":Z
    goto :goto_4

    .line 1009
    .end local v6    # "lostIPv6Router":Z
    .restart local v2    # "ignoreIPv6ProvisioningLoss":Z
    :cond_8
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_5
.end method

.method private configureAndStartStateMachine()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    .line 693
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    .line 694
    iget-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 695
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    .line 697
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->setInitialState(Lcom/android/internal/util/State;)V

    .line 699
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 700
    return-void
.end method

.method private dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "delta"    # Landroid/net/LinkProperties$ProvisioningChange;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1025
    invoke-static {}, Landroid/net/ip/IpManager;->-getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1040
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 1043
    :goto_0
    return-void

    .line 1028
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 1029
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 1034
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 1035
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doImmediateProvisioningFailure(I)V
    .locals 4
    .param p1, "failureType"    # I

    .prologue
    .line 1234
    const-string/jumbo v0, "onProvisioningFailure(): %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 1236
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 1237
    return-void
.end method

.method static find(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1779
    .local p0, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1780
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1781
    return-object v0

    .line 1784
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method static findAll(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1788
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private getNetworkInterface()V
    .locals 4

    .prologue
    .line 894
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Failed to get interface object: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleIPv4Failure()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1204
    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    .line 1205
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 1207
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 1209
    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    .line 1210
    return-void
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .locals 3
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    .line 1186
    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2, p1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    iput-object v2, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 1187
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1188
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 1193
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v2, p1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 1194
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1195
    return-void
.end method

.method private handleLinkPropertiesUpdate(Z)Z
    .locals 4
    .param p1, "sendCallbacks"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1151
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1152
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget-object v3, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    return v2

    .line 1155
    :cond_0
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 1156
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    if-eqz p1, :cond_1

    .line 1157
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1159
    :cond_1
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-eq v0, v3, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleProvisioningFailure()V
    .locals 3

    .prologue
    .line 1213
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1214
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 1223
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v2, :cond_0

    .line 1224
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1227
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1228
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v2, :cond_1

    .line 1229
    iget-object v2, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1231
    :cond_1
    return-void
.end method

.method static isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpManager$InitialConfiguration;)Z
    .locals 2
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "config"    # Landroid/net/ip/IpManager$InitialConfiguration;

    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 930
    :cond_1
    if-nez p1, :cond_2

    .line 931
    const/4 v0, 0x0

    return v0

    .line 936
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/ip/IpManager$InitialConfiguration;->isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .param p0, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1775
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ;->$INST$0:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$-android_net_ip_IpManager_68447(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1771
    .local p0, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method static not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate",
            "<TT;>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1771
    .local p0, "fn":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    new-instance v0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method private recordMetric(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 917
    iget-wide v2, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "Start time undefined!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    sub-long v0, v2, v4

    .line 919
    .local v0, "duration":J
    iget-object v2, p0, Landroid/net/ip/IpManager;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    new-instance v4, Landroid/net/metrics/IpManagerEvent;

    invoke-direct {v4, p1, v0, v1}, Landroid/net/metrics/IpManagerEvent;-><init>(IJ)V

    invoke-virtual {v2, v3, v4}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 920
    return-void
.end method

.method private resetLinkProperties()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 906
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 907
    iput-object v1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 908
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 909
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    .line 910
    iput-object v1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 912
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 913
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method private setIPv4Address(Landroid/net/LinkAddress;)Z
    .locals 6
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1163
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1164
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1166
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    return v5

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "IPv4 configuration failed: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {p0, v2, v3}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    return v4
.end method

.method private setIPv6AddrGenModeIfSupported()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1265
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget v3, v3, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v2, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v1, v2, :cond_0

    .line 1268
    const-string/jumbo v1, "Unable to set IPv6 addrgen mode: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1049
    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    if-eqz v1, :cond_0

    .line 1050
    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    invoke-virtual {v1, p1}, Landroid/net/apf/ApfFilter;->setLinkProperties(Landroid/net/LinkProperties;)V

    .line 1052
    :cond_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v1, :cond_1

    .line 1053
    iget-object v1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    invoke-virtual {v1, p1}, Landroid/net/ip/IpReachabilityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 1056
    :cond_1
    iget-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, p1}, Landroid/net/ip/IpManager;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 1057
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1059
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_2

    .line 1062
    iget-object v1, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1065
    :cond_2
    return-object v0
.end method

.method private startIPv4()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1242
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    .line 1260
    :goto_0
    return v1

    .line 1246
    :cond_0
    return v2

    .line 1250
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v3}, Landroid/net/dhcp/DhcpClient;->makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    .line 1251
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->registerForPreDhcpNotification()V

    .line 1252
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRapidCommit:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mDiscoverSent:Z

    if-eqz v0, :cond_5

    .line 1253
    :cond_2
    iget-object v3, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    .line 1254
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRapidCommit:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 1255
    :goto_1
    iget-object v4, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-boolean v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mDiscoverSent:Z

    if-eqz v4, :cond_3

    move v2, v1

    .line 1253
    :cond_3
    const v4, 0x3000a

    invoke-virtual {v3, v4, v0, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(III)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1254
    goto :goto_1

    .line 1257
    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    const v2, 0x30001

    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto :goto_0
.end method

.method private startIPv6()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1276
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1278
    invoke-direct {p0}, Landroid/net/ip/IpManager;->setIPv6AddrGenModeIfSupported()V

    .line 1279
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    return v4

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Unable to change interface settings: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1282
    return v5
.end method

.method private startIpReachabilityMonitor()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1310
    :try_start_0
    new-instance v0, Landroid/net/ip/IpReachabilityMonitor;

    .line 1311
    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    .line 1312
    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 1313
    iget-object v3, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    .line 1314
    new-instance v4, Landroid/net/ip/IpManager$3;

    invoke-direct {v4, p0}, Landroid/net/ip/IpManager$3;-><init>(Landroid/net/ip/IpManager;)V

    .line 1320
    iget-object v5, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 1310
    invoke-direct/range {v0 .. v5}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v0, :cond_0

    move v0, v7

    :goto_1
    return v0

    .line 1321
    :catch_0
    move-exception v6

    .line 1326
    .local v6, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "IpReachabilityMonitor failure: %s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v6, v1, v8

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1327
    iput-object v9, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    goto :goto_0

    .end local v6    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_0
    move v0, v8

    .line 1330
    goto :goto_1
.end method

.method private startStateMachineUpdaters()V
    .locals 4

    .prologue
    .line 704
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v1}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 710
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Couldn\'t register NetlinkTracker: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private stopAllIP()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1345
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1355
    :goto_1
    return-void

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Failed to disable IPv6: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1352
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1353
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Failed to clear addresses: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public completedPreDhcpAction()V
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    .line 761
    return-void
.end method

.method public confirmConfiguration()V
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    .line 757
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 792
    if-eqz p3, :cond_0

    array-length v4, p3

    if-lez v4, :cond_0

    const-string/jumbo v4, "confirm"

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 794
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->confirmConfiguration()V

    .line 795
    return-void

    .line 799
    :cond_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    .line 800
    .local v1, "apfFilter":Landroid/net/apf/ApfFilter;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 801
    .local v2, "provisioningConfig":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    if-eqz v2, :cond_1

    .line 802
    iget-object v0, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 804
    :goto_0
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 805
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " APF dump:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 807
    if-eqz v1, :cond_2

    .line 808
    invoke-virtual {v1, v3}, Landroid/net/apf/ApfFilter;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 819
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 821
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " current ProvisioningConfiguration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 824
    const-string/jumbo v4, "N/A"

    invoke-static {v2, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 827
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " StateMachine dump:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 830
    iget-object v4, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v4, p1, v3, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 831
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 833
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connectivity packet log:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 836
    const-string/jumbo v4, "Debug with python and scapy via:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 837
    const-string/jumbo v4, "shell$ python"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 838
    const-string/jumbo v4, ">>> from scapy import all as scapy"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 839
    const-string/jumbo v4, ">>> scapy.Ether(\"<paste_hex_string>\".decode(\"hex\")).show2()"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 842
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 843
    iget-object v4, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    invoke-virtual {v4}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 844
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 845
    return-void

    .line 802
    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_1
    const/4 v0, 0x0

    .local v0, "apfCapabilities":Landroid/net/apf/ApfCapabilities;
    goto/16 :goto_0

    .line 810
    .end local v0    # "apfCapabilities":Landroid/net/apf/ApfCapabilities;
    .restart local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_2
    const-string/jumbo v4, "No active ApfFilter; "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 811
    if-nez v2, :cond_3

    .line 812
    const-string/jumbo v4, "IpManager not yet started."

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 813
    :cond_3
    if-eqz v0, :cond_4

    iget v4, v0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v4, :cond_5

    .line 814
    :cond_4
    const-string/jumbo v4, "Hardware does not support APF."

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 816
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ApfFilter not yet started, APF capabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 860
    const-string/jumbo v3, "%s/%d %d %d %s [%s]"

    .line 859
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/Object;

    .line 861
    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 862
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    iget-object v2, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 859
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "logLine":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Landroid/net/ip/IpManager;->getWhatToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "richerLogLine":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 870
    iget-object v2, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    invoke-virtual {v2}, Landroid/net/ip/IpManager$MessageHandlingLogger;->reset()V

    .line 871
    return-object v0

    .line 861
    .end local v0    # "logLine":Ljava/lang/String;
    .end local v1    # "richerLogLine":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    goto :goto_0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 854
    sget-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UNKNOWN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$-android_net_ip_IpManager_26807()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "OBSERVED AvoidBadWifi changed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onQuit()V

    .line 715
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 879
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 880
    .local v0, "shouldLog":Z
    :goto_0
    if-nez v0, :cond_0

    .line 881
    iget-object v1, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    invoke-virtual {v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->reset()V

    .line 883
    :cond_0
    return v0

    .line 879
    .end local v0    # "shouldLog":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "shouldLog":Z
    goto :goto_0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 780
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    .line 781
    return-void
.end method

.method public setMulticastFilter(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 788
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    .line 789
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 1
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    .prologue
    .line 770
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    .line 771
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->stop()V

    .line 720
    iget-object v0, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->shutdown()V

    .line 721
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->quit()V

    .line 722
    return-void
.end method

.method public startProvisioning()V
    .locals 1

    .prologue
    .line 748
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    .line 749
    return-void
.end method

.method public startProvisioning(Landroid/net/StaticIpConfiguration;)V
    .locals 1
    .param p1, "staticIpConfig"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 742
    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    .line 745
    return-void
.end method

.method public startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .locals 2
    .param p1, "req"    # Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .prologue
    .line 729
    invoke-virtual {p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->doImmediateProvisioningFailure(I)V

    .line 731
    return-void

    .line 734
    :cond_0
    invoke-direct {p0}, Landroid/net/ip/IpManager;->getNetworkInterface()V

    .line 736
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    .line 737
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    .line 738
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    .line 753
    return-void
.end method
