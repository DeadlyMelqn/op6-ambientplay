.class public Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;
    }
.end annotation


# static fields
.field private static final BASE_IFACE:I = 0x50064

.field public static final CMD_INTERFACE_DOWN:I = 0x50068

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x50071

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x5006c

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x5006b

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x5006f

.field public static final CMD_START_TETHERING_ERROR:I = 0x5006d

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x5006e

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x50070

.field public static final CMD_TETHER_REQUESTED:I = 0x50066

.field public static final CMD_TETHER_UNREQUESTED:I = 0x50067

.field private static final DBG:Z = false

.field private static final LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

.field private static final TAG:Ljava/lang/String; = "TetherInterfaceSM"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = false

.field private static final WIFI_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.43.1"

.field private static final WIFI_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final WIGIG_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.50.1"

.field private static final WIGIG_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
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
.field private mHwAddr:[B

.field private final mIfaceName:Ljava/lang/String;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceType:I

.field private mLastError:I

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/internal/util/State;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mMyUpstreamIfaceName:Ljava/lang/String;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private mServingMode:I

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

.field private final mTetheredState:Lcom/android/internal/util/State;

.field private final mUnavailableState:Lcom/android/internal/util/State;

.field private mV6OnlyTetherEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mV6OnlyTetherEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mMyUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mMyUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p1, "newInterfaceState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendInterfaceState(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv4()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p1, "v6only"    # Landroid/net/LinkProperties;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/net/IpPrefix;

    const-string/jumbo v1, "fe80::/64"

    invoke-direct {v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 78
    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    .line 81
    sget-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    .line 80
    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;)V
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "interfaceType"    # I
    .param p4, "log"    # Landroid/net/util/SharedLog;
    .param p5, "nMService"    # Landroid/os/INetworkManagementService;
    .param p6, "statsService"    # Landroid/net/INetworkStatsService;
    .param p7, "tetherController"    # Lcom/android/server/connectivity/tethering/IControlsTethering;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 140
    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    .line 141
    iput-object p5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    .line 142
    iput-object p6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    .line 143
    iput-object p7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    .line 144
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    .line 145
    iput p3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    .line 146
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 147
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    .line 148
    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mV6OnlyTetherEnabled:Z

    .line 149
    iput v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    .line 151
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 152
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    .line 153
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 154
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    .line 155
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Z)V
    .locals 1
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "interfaceType"    # I
    .param p4, "log"    # Landroid/net/util/SharedLog;
    .param p5, "nMService"    # Landroid/os/INetworkManagementService;
    .param p6, "statsService"    # Landroid/net/INetworkStatsService;
    .param p7, "tetherController"    # Lcom/android/server/connectivity/tethering/IControlsTethering;
    .param p8, "V6OnlyTetherEnabled"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 168
    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    .line 169
    iput-object p5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    .line 170
    iput-object p6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    .line 171
    iput-object p7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    .line 172
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    .line 173
    iput p3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    .line 174
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 175
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    .line 176
    iput-boolean p8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mV6OnlyTetherEnabled:Z

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    .line 180
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 181
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    .line 182
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 183
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    .line 184
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 190
    return-void
.end method

.method private configureIPv4(Z)Z
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, "ipAsString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 221
    .local v5, "prefixLen":I
    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-ne v7, v9, :cond_0

    .line 222
    const-string/jumbo v3, "192.168.42.129"

    .line 223
    .local v3, "ipAsString":Ljava/lang/String;
    const/16 v5, 0x18

    .line 237
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 238
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    if-nez v2, :cond_3

    .line 239
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v8, "Received null interface config"

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    return v10

    .line 224
    .end local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    .local v3, "ipAsString":Ljava/lang/String;
    :cond_0
    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-nez v7, :cond_1

    .line 225
    const-string/jumbo v3, "192.168.43.1"

    .line 226
    .local v3, "ipAsString":Ljava/lang/String;
    const/16 v5, 0x18

    goto :goto_0

    .line 227
    .local v3, "ipAsString":Ljava/lang/String;
    :cond_1
    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 228
    const-string/jumbo v3, "192.168.50.1"

    .line 229
    .local v3, "ipAsString":Ljava/lang/String;
    const/16 v5, 0x18

    goto :goto_0

    .line 232
    .local v3, "ipAsString":Ljava/lang/String;
    :cond_2
    return v9

    .line 243
    .restart local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    .local v3, "ipAsString":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 244
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 245
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v2, v4}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 246
    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-nez v7, :cond_4

    .line 250
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->ignoreInterfaceUpDownStatus()V

    .line 258
    :goto_1
    const-string/jumbo v7, "running"

    invoke-virtual {v2, v7}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 259
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    new-instance v6, Landroid/net/RouteInfo;

    invoke-direct {v6, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;)V

    .line 267
    .local v6, "route":Landroid/net/RouteInfo;
    if-eqz p1, :cond_6

    .line 268
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 269
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 274
    :goto_2
    return v9

    .line 252
    .end local v6    # "route":Landroid/net/RouteInfo;
    :cond_4
    if-eqz p1, :cond_5

    .line 253
    :try_start_2
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 260
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v4    # "linkAddr":Landroid/net/LinkAddress;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error configuring interface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 262
    return v10

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v4    # "linkAddr":Landroid/net/LinkAddress;
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 271
    .restart local v6    # "route":Landroid/net/RouteInfo;
    :cond_6
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v4}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 272
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v6}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_2
.end method

.method private configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deprecatedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    .local p2, "newDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    const/16 v9, 0x40

    .line 419
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v5

    .line 420
    .local v5, "netd":Landroid/net/INetd;
    if-nez v5, :cond_1

    .line 421
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 422
    :cond_0
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v7, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 423
    return-void

    .line 427
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 428
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dns$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 429
    .local v1, "dns":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "dnsString":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v1, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    .line 432
    :catch_0
    move-exception v4

    .line 433
    .local v4, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to remove local dns IP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 441
    .end local v1    # "dns":Ljava/net/Inet6Address;
    .end local v2    # "dns$iterator":Ljava/util/Iterator;
    .end local v3    # "dnsString":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 442
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 443
    .local v0, "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v6, :cond_3

    .line 444
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 447
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "dns$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 448
    .restart local v1    # "dns":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 450
    .restart local v3    # "dnsString":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    const/16 v7, 0x40

    invoke-interface {v5, v6, v3, v7}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    :goto_3
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v1, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_2

    .line 451
    :catch_1
    move-exception v4

    .line 452
    .restart local v4    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add local dns IP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 461
    .end local v0    # "addedDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    .end local v1    # "dns":Ljava/net/Inet6Address;
    .end local v2    # "dns$iterator":Ljava/util/Iterator;
    .end local v3    # "dnsString":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    invoke-interface {v5}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 466
    :cond_5
    :goto_4
    return-void

    .line 462
    :catch_2
    move-exception v4

    .line 463
    .restart local v4    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v7, "Failed to update local DNS caching server"

    invoke-virtual {v6, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 464
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    goto :goto_4
.end method

.method private configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "deprecatedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    .local p2, "newPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 368
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-static {v7, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v6

    .line 370
    .local v6, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v6}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v2

    .line 371
    .local v2, "removalFailures":I
    if-lez v2, :cond_0

    .line 372
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v8, "Failed to remove %d IPv6 routes from local table."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 372
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v2    # "removalFailures":I
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "route$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .local v3, "route":Landroid/net/RouteInfo;
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1

    .line 375
    .end local v3    # "route":Landroid/net/RouteInfo;
    .end local v4    # "route$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to remove IPv6 routes from local table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v6    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    .line 384
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 385
    .local v0, "addedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v7, :cond_2

    .line 386
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v7, v7, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 389
    :cond_2
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v7, v7, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 396
    :cond_3
    sget-object v7, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 401
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v5

    .line 407
    .local v5, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :try_start_1
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 412
    :goto_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "route$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .restart local v3    # "route":Landroid/net/RouteInfo;
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_3

    .line 408
    .end local v3    # "route":Landroid/net/RouteInfo;
    .end local v4    # "route$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 409
    .restart local v1    # "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to add IPv6 routes to local table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 415
    .end local v0    # "addedPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    :cond_5
    return-void
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .locals 6
    .param p0, "localPrefix"    # Landroid/net/IpPrefix;

    .prologue
    const/4 v5, 0x0

    .line 788
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 789
    .local v0, "dnsBytes":[B
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getRandomNonZeroByte()B

    move-result v3

    aput-byte v3, v0, v2

    .line 791
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v0, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "TetherInterfaceSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to construct Inet6Address from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-object v5
.end method

.method private static getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, "prefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v2, "localRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ipp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 781
    .local v0, "ipp":Landroid/net/IpPrefix;
    new-instance v3, Landroid/net/RouteInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 783
    .end local v0    # "ipp":Landroid/net/IpPrefix;
    :cond_0
    return-object v2
.end method

.method private static getRandomNonZeroByte()B
    .locals 2

    .prologue
    .line 799
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-byte v0, v1

    .line 802
    .local v0, "random":B
    if-eqz v0, :cond_0

    .end local v0    # "random":B
    :goto_0
    return v0

    .restart local v0    # "random":B
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method private resetLinkProperties()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 503
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private sendInterfaceState(I)V
    .locals 2
    .param p1, "newInterfaceState"    # I

    .prologue
    .line 490
    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    .line 491
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    .line 492
    iget v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    .line 491
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/connectivity/tethering/IControlsTethering;->updateInterfaceState(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    .line 493
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V

    .line 494
    return-void
.end method

.method private sendLinkProperties()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    .line 498
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 497
    invoke-virtual {v0, p0, v1}, Lcom/android/server/connectivity/tethering/IControlsTethering;->updateLinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    .line 499
    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 4
    .param p1, "newParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-static {v1, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 473
    .local v0, "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 474
    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 473
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 476
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 477
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 476
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 479
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 482
    .end local v0    # "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    :cond_1
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 483
    return-void

    .restart local v0    # "deprecatedParams":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    :cond_2
    move-object v1, v2

    .line 474
    goto :goto_0
.end method

.method private startIPv4()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIPv4(Z)Z

    move-result v0

    return v0
.end method

.method private startIPv6()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;

    if-nez v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v3, "Failed to find NetworkInterface"

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    .line 290
    return v5

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/net/SocketException;
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error looking up NetworkInterfaces: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    .line 285
    return v5

    .line 294
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mHwAddr:[B
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    .line 302
    .local v1, "ifindex":I
    new-instance v2, Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mHwAddr:[B

    invoke-direct {v2, v3, v1, v4}, Landroid/net/ip/RouterAdvertisementDaemon;-><init>(Ljava/lang/String;I[B)V

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 303
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    .line 305
    return v5

    .line 295
    .end local v1    # "ifindex":I
    :catch_1
    move-exception v0

    .line 296
    .restart local v0    # "e":Ljava/net/SocketException;
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to find hardware address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    .line 298
    return v5

    .line 308
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "ifindex":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private stopIPv4()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIPv4(Z)Z

    return-void
.end method

.method private stopIPv6()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetworkInterface:Ljava/net/NetworkInterface;

    .line 313
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mHwAddr:[B

    .line 314
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 318
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 320
    :cond_0
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "v6only"    # Landroid/net/LinkProperties;

    .prologue
    .line 329
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v5, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    return-void

    .line 336
    :cond_1
    const/4 v3, 0x0

    .line 338
    .local v3, "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p1, :cond_3

    .line 339
    new-instance v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .end local v3    # "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    invoke-direct {v3}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 340
    .local v3, "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v5

    iput v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 341
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v5

    iput-boolean v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 343
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "linkAddr$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 344
    .local v1, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    .line 346
    new-instance v4, Landroid/net/IpPrefix;

    .line 347
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    .line 346
    invoke-direct {v4, v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 348
    .local v4, "prefix":Landroid/net/IpPrefix;
    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v0

    .line 351
    .local v0, "dnsServer":Ljava/net/Inet6Address;
    if-eqz v0, :cond_2

    .line 352
    iget-object v5, v3, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    .end local v0    # "dnsServer":Ljava/net/Inet6Address;
    .end local v1    # "linkAddr":Landroid/net/LinkAddress;
    .end local v2    # "linkAddr$iterator":Ljava/util/Iterator;
    .end local v3    # "params":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .end local v4    # "prefix":Landroid/net/IpPrefix;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 360
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 361
    return-void
.end method


# virtual methods
.method public interfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interfaceType()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    return v0
.end method

.method public lastError()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return v0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 202
    const v0, 0x50068

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .locals 1

    .prologue
    .line 204
    const v0, 0x50067

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    return-void
.end method
