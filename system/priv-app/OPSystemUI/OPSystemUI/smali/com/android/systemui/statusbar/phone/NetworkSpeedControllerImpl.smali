.class public Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSpeedControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/phone/NetworkSpeedController;
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;,
        Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;,
        Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static ERTRY_POINT:I

.field private static HANDRED:I

.field private static TAG:Ljava/lang/String;

.field private static TEN:I

.field private static THOUSAND:I

.field private static UNIT_GB:Ljava/lang/String;

.field private static UNIT_KB:Ljava/lang/String;

.field private static UNIT_MB:Ljava/lang/String;

.field private static UPDATE_INTERVAL:I


# instance fields
.field private MSG_MAYBE_STOP_NETWORTSPEED:I

.field private MSG_UPDATE_NETWORTSPEED:I

.field private MSG_UPDATE_SHOW:I

.field private MSG_UPDATE_SPEED_ON_BG:I

.field private autoTestMatrx:[J

.field private mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

.field private mBlockNetworkSpeed:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

.field private mHighlightHintController:Lcom/android/systemui/statusbar/phone/HighlightHintController;

.field private mHotSpotEnable:Z

.field private mIsFirstLoad:Z

.field private mNetworkShowState:Z

.field private final mNetworkSpeedStateCallBack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeed:Ljava/lang/String;

.field private mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkShowState:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    return v0
.end method

.method static synthetic -get5()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->isNetworkSpeedShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
    .param p1, "speed"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->formateSpeed(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)[J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->getTetherStats()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onShowStateChange(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->refreshSpeed()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->scheduleNextUpdate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "NetworkSpeedController"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    .line 38
    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    .line 39
    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    .line 40
    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    .line 41
    const/16 v0, 0x400

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    .line 42
    const-string/jumbo v0, "K"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "M"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "G"

    sput-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    .line 55
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    .line 48
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    .line 49
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_MAYBE_STOP_NETWORTSPEED:I

    .line 50
    const/16 v1, 0x3ea

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    .line 52
    const/16 v1, 0x7d1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    .line 57
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 58
    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    .line 60
    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    .line 61
    new-instance v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;-><init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    .line 66
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkShowState:Z

    .line 68
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 82
    const/16 v1, 0x1c

    new-array v1, v1, [J

    .line 83
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v2, v2

    aput-wide v2, v1, v5

    .line 84
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    aput-wide v2, v1, v6

    .line 85
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v2, v2

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    .line 86
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v2

    const/4 v4, 0x3

    aput-wide v2, v1, v4

    .line 87
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const/4 v4, 0x4

    aput-wide v2, v1, v4

    .line 88
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    const/4 v4, 0x5

    aput-wide v2, v1, v4

    .line 89
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v4, 0x6

    aput-wide v2, v1, v4

    .line 90
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const/4 v4, 0x7

    aput-wide v2, v1, v4

    .line 91
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    const/16 v4, 0x8

    aput-wide v2, v1, v4

    .line 92
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x9

    aput-wide v2, v1, v4

    .line 93
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const/16 v4, 0xa

    aput-wide v2, v1, v4

    .line 94
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    const/16 v4, 0xb

    aput-wide v2, v1, v4

    .line 95
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0xc

    aput-wide v2, v1, v4

    .line 96
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    const/16 v4, 0xd

    aput-wide v2, v1, v4

    .line 97
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0xe

    aput-wide v2, v1, v4

    .line 98
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const/16 v4, 0xf

    aput-wide v2, v1, v4

    .line 99
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    const/16 v4, 0x10

    aput-wide v2, v1, v4

    .line 100
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x11

    aput-wide v2, v1, v4

    .line 101
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const/16 v4, 0x12

    aput-wide v2, v1, v4

    .line 102
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    const/16 v4, 0x13

    aput-wide v2, v1, v4

    .line 103
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x14

    aput-wide v2, v1, v4

    .line 104
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const/16 v4, 0x15

    aput-wide v2, v1, v4

    .line 105
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    const/16 v4, 0x16

    aput-wide v2, v1, v4

    .line 106
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x17

    aput-wide v2, v1, v4

    .line 107
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const/16 v4, 0x18

    aput-wide v2, v1, v4

    .line 108
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    const/16 v4, 0x19

    aput-wide v2, v1, v4

    .line 109
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x1a

    aput-wide v2, v1, v4

    .line 110
    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    sget v3, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const/16 v4, 0x1b

    aput-wide v2, v1, v4

    .line 82
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->autoTestMatrx:[J

    .line 148
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    .line 115
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mTimer:Ljava/util/Timer;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "icon_blacklist"

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    .line 130
    const-class v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHighlightHintController:Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHighlightHintController:Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->addCallback(Ljava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 135
    return-void
.end method

.method private divToFractionDigits(JJI)Ljava/lang/String;
    .locals 15
    .param p1, "unmber"    # J
    .param p3, "divisor"    # J
    .param p5, "maxNum"    # I

    .prologue
    .line 171
    const-wide/16 v12, 0x0

    cmp-long v12, p3, v12

    if-nez v12, :cond_0

    .line 172
    sget-object v12, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "divisor shouldn\'t be 0"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string/jumbo v12, "Error"

    return-object v12

    .line 175
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v7, "result":Ljava/lang/StringBuffer;
    move-wide/from16 v2, p1

    .line 177
    .local v2, "dividend":J
    div-long v8, p1, p3

    .line 178
    .local v8, "integer":J
    rem-long v4, p1, p3

    .line 179
    .local v4, "fraction":J
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 180
    if-lez p5, :cond_1

    .line 181
    const-string/jumbo v12, "."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p5

    if-ge v6, v0, :cond_1

    .line 183
    const-wide/16 v12, 0xa

    mul-long v2, v4, v12

    .line 184
    div-long v10, v2, p3

    .line 185
    .local v10, "r":J
    rem-long v4, v2, p3

    .line 186
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 189
    .end local v6    # "i":I
    .end local v10    # "r":J
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method private formateSpeed(J)Ljava/lang/String;
    .locals 9
    .param p1, "speed"    # J

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v0, "result":Ljava/lang/StringBuffer;
    sget-object v8, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    .line 195
    .local v8, "unit":Ljava/lang/String;
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v4, v1

    .line 196
    .local v4, "divisor":J
    const/4 v6, 0x0

    .line 197
    .local v6, "maxFractionDigits":I
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 198
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v4, v1

    .line 199
    const/4 v6, 0x2

    .line 200
    sget-object v8, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    :cond_0
    :goto_0
    move-object v1, p0

    move-wide v2, p1

    .line 232
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->divToFractionDigits(JJI)Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, "speedStr":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "/s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 201
    .end local v7    # "speedStr":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_4

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_4

    .line 202
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v4, v1

    .line 203
    sget-object v8, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_KB:Ljava/lang/String;

    .line 204
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    .line 205
    const/4 v6, 0x2

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_3

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_3

    .line 207
    const/4 v6, 0x1

    .line 206
    goto :goto_0

    .line 208
    :cond_3
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 209
    const/4 v6, 0x0

    goto :goto_0

    .line 211
    :cond_4
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_7

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_7

    .line 212
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    int-to-long v4, v1

    .line 213
    sget-object v8, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_MB:Ljava/lang/String;

    .line 214
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_5

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_5

    .line 215
    const/4 v6, 0x2

    .line 214
    goto/16 :goto_0

    .line 216
    :cond_5
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_6

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_6

    .line 217
    const/4 v6, 0x1

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_6
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 219
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 222
    :cond_7
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    int-to-long v4, v1

    .line 223
    sget-object v8, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UNIT_GB:Ljava/lang/String;

    .line 224
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->THOUSAND:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_8

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_8

    .line 225
    const/4 v6, 0x2

    .line 224
    goto/16 :goto_0

    .line 226
    :cond_8
    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->ERTRY_POINT:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TEN:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_9

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->HANDRED:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_9

    .line 227
    const/4 v6, 0x1

    .line 226
    goto/16 :goto_0

    .line 229
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private getTetherStats()[J
    .locals 12

    .prologue
    .line 578
    const/4 v10, 0x2

    new-array v0, v10, [J

    .line 602
    .local v0, "bytes":[J
    :try_start_0
    const-string/jumbo v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 601
    invoke-static {v10}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v10

    .line 602
    const/4 v11, -0x1

    .line 601
    invoke-interface {v10, v11}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v5

    .line 603
    .local v5, "stats":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    .line 604
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkStats;->size()I

    move-result v4

    .line 605
    .local v4, "size":I
    :goto_0
    const-wide/16 v6, 0x0

    .line 606
    .local v6, "sumRxBytes":J
    const-wide/16 v8, 0x0

    .line 607
    .local v8, "sumTxBytes":J
    const/4 v3, 0x0

    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 608
    invoke-virtual {v5, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 609
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v6, v10

    .line 610
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v8, v10

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 604
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v6    # "sumRxBytes":J
    .end local v8    # "sumTxBytes":J
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "size":I
    goto :goto_0

    .line 612
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "i":I
    .restart local v6    # "sumRxBytes":J
    .restart local v8    # "sumTxBytes":J
    :cond_1
    const/4 v10, 0x0

    aput-wide v6, v0, v10

    .line 613
    const/4 v10, 0x1

    aput-wide v8, v0, v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "stats":Landroid/net/NetworkStats;
    .end local v6    # "sumRxBytes":J
    .end local v8    # "sumTxBytes":J
    :goto_2
    return-object v0

    .line 614
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private isNetworkConnected()Z
    .locals 5

    .prologue
    .line 525
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 526
    const/4 v2, 0x0

    return v2

    .line 528
    :cond_0
    const/4 v0, 0x0

    .line 529
    .local v0, "isNetworkConnected":Z
    const/4 v1, 0x0

    .line 530
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 533
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 534
    .end local v0    # "isNetworkConnected":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNetworkConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_2
    return v0

    .line 533
    .restart local v0    # "isNetworkConnected":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkSpeedShowing()Z
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onShowStateChange(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 254
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHighlightHintController:Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v2

    xor-int/lit8 p1, v2, 0x1

    .line 255
    .end local p1    # "show":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShowStateChange s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    .line 257
    .local v0, "callback":Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V

    goto :goto_1

    .line 254
    .end local v0    # "callback":Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .restart local p1    # "show":Z
    :cond_1
    const/4 p1, 0x0

    .local p1, "show":Z
    goto :goto_0

    .line 259
    .end local p1    # "show":Z
    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private onStartTraceSpeed()V
    .locals 2

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateSpeed()V

    .line 264
    return-void
.end method

.method private onStopTraceSpeed()V
    .locals 2

    .prologue
    .line 267
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopTraceSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->stopSpeed()V

    .line 271
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    .line 272
    return-void
.end method

.method private refreshSpeed()V
    .locals 5

    .prologue
    .line 320
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshSpeed sp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    .line 322
    .local v0, "callback":Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    if-eqz v0, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v0    # "callback":Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;
    :cond_2
    return-void
.end method

.method private scheduleNextUpdate()V
    .locals 8

    .prologue
    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->UPDATE_INTERVAL:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 304
    .local v2, "nextTime":J
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 305
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 307
    return-void
.end method

.method private stopSpeed()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOff()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->removeMessages(I)V

    .line 317
    return-void
.end method

.method private updateSpeed()V
    .locals 4

    .prologue
    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mIsFirstLoad:Z

    .line 276
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateSpeed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    .line 279
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 280
    .local v0, "message":Landroid/os/Message;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_NETWORTSPEED:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 281
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    .line 293
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeedMachine:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->setTurnOn()V

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->removeMessages(I)V

    .line 296
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 297
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SPEED_ON_BG:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBackgroundHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyBackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    .prologue
    .line 558
    monitor-enter p0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mSpeed:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedChange(Ljava/lang/String;)V

    .line 562
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkShowState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHighlightHintController:Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;->onSpeedShow(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    .line 567
    return-void

    .line 562
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call to IKeyguardStateCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 556
    check-cast p1, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 3

    .prologue
    .line 624
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " onHighlightHintStateChange"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 626
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 627
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.TIME_SET"

    if-ne v0, v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    if-ne v0, v2, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_0

    .line 160
    :cond_2
    const-string/jumbo v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    if-ne v0, v2, :cond_0

    .line 162
    const-string/jumbo v2, "wifi_state"

    const/16 v3, 0xe

    .line 161
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 163
    .local v1, "state":I
    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    .line 164
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HotSpot enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHotSpotEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    goto :goto_0

    .line 163
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 544
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    return-void

    .line 547
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 548
    .local v0, "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v2, "networkspeed"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 549
    .local v1, "blocknetworkSpeed":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    if-eq v1, v2, :cond_1

    .line 550
    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " onTuningChanged blocknetworkSpeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mBlockNetworkSpeed:Z

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    .line 554
    :cond_1
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    .prologue
    .line 571
    monitor-enter p0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkSpeedStateCallBack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 574
    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 569
    check-cast p1, Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;)V

    return-void
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectivity connectedTransports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " validatedTransports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->updateState()V

    .line 146
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->isNetworkSpeedShowing()Z

    move-result v1

    .line 239
    .local v1, "showState":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateState showState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkShowState:Z

    if-eq v2, v1, :cond_1

    .line 241
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkShowState:Z

    .line 242
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mNetworkShowState:Z

    if-eqz v2, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onStartTraceSpeed()V

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "message":Landroid/os/Message;
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->MSG_UPDATE_SHOW:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 249
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->mHandler:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->onStopTraceSpeed()V

    goto :goto_0
.end method
