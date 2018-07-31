.class public Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.super Ljava/lang/Object;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_TETHER_OFFLOAD_DISABLED:I = 0x0

.field private static final NO_INTERFACE_NAME:Ljava/lang/String; = ""

.field private static final NO_IPV4_ADDRESS:Ljava/lang/String; = ""

.field private static final NO_IPV4_GATEWAY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;

.field private static final YIELDS:Ljava/lang/String; = " -> "


# instance fields
.field private mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

.field private mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;


# direct methods
.method static synthetic -wrap0(I)I
    .locals 1
    .param p0, "proto"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->networkProtocolToOsConstant(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/SharedLog;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "log"    # Landroid/net/util/SharedLog;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    .line 91
    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    .line 92
    return-void
.end method

.method private static native configOffload()Z
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_4483(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 129
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_5729(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;JJ)V
    .locals 3
    .param p0, "stats"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    .param p1, "rxBytes"    # J
    .param p3, "txBytes"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 165
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .end local p1    # "rxBytes":J
    :goto_0
    iput-wide p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    .line 166
    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    .end local p3    # "txBytes":J
    :goto_1
    iput-wide p3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    return-void

    .restart local p1    # "rxBytes":J
    .restart local p3    # "txBytes":J
    :cond_0
    move-wide p1, v0

    .line 165
    goto :goto_0

    .end local p1    # "rxBytes":J
    :cond_1
    move-wide p3, v0

    .line 166
    goto :goto_1
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_6440(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 186
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_7086(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 207
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_8155(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 234
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_8802(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 253
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_9458(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0
    .param p0, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    .line 272
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method private static networkProtocolToOsConstant(I)I
    .locals 1
    .param p0, "proto"    # I

    .prologue
    .line 344
    sparse-switch p0, :sswitch_data_0

    .line 350
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    return v0

    .line 345
    :sswitch_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    return v0

    .line 346
    :sswitch_1
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    return v0

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method private record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "results"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    .prologue
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "logmsg":Ljava/lang/String;
    iget-boolean v1, p2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private record(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 285
    return-void
.end method


# virtual methods
.method public addDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 246
    const-string/jumbo v3, "addDownstreamPrefix(%s, %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 250
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 251
    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU;-><init>(Ljava/lang/Object;)V

    .line 250
    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 261
    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    return v6
.end method

.method public getDefaultTetherOffloadDisabled()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getForwardedStats(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    .locals 6
    .param p1, "upstream"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string/jumbo v3, "getForwardedStats(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-direct {v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;-><init>()V

    .line 162
    .local v2, "stats":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 164
    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$1;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$1;-><init>(Ljava/lang/Object;)V

    .line 162
    invoke-interface {v3, p1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 174
    return-object v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-object v2
.end method

.method public initOffloadConfig()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->configOffload()Z

    move-result v0

    return v0
.end method

.method public initOffloadControl(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;)Z
    .locals 9
    .param p1, "controlCb"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 103
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 105
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-nez v3, :cond_0

    .line 107
    :try_start_0
    invoke-static {}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getService()Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-nez v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v4, "tethering IOffloadControl.getService() returned null"

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 114
    return v7

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tethering offload control not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 110
    return v7

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v4, "initOffloadControl(%s)"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    .line 119
    if-nez p1, :cond_1

    const-string/jumbo v3, "null"

    :goto_0
    aput-object v3, v5, v7

    .line 118
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "logmsg":Ljava/lang/String;
    new-instance v3, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;Landroid/net/util/SharedLog;)V

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    .line 123
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    invoke-direct {v2, v8}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 125
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 126
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    .line 127
    new-instance v5, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$2;

    invoke-direct {v5, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$2;-><init>(Ljava/lang/Object;)V

    .line 125
    invoke-interface {v3, v4, v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 137
    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    .line 120
    .end local v1    # "logmsg":Ljava/lang/String;
    .end local v2    # "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 131
    .restart local v1    # "logmsg":Ljava/lang/String;
    .restart local v2    # "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :catch_1
    move-exception v0

    .line 132
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    return v7
.end method

.method synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_4988(ZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopOffload failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 265
    const-string/jumbo v3, "removeDownstreamPrefix(%s, %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 269
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 270
    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$3;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$3;-><init>(Ljava/lang/Object;)V

    .line 269
    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 280
    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    return v6
.end method

.method public setDataLimit(Ljava/lang/String;J)Z
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "limit"    # J

    .prologue
    const/4 v7, 0x0

    .line 199
    const-string/jumbo v3, "setDataLimit(%s, %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 203
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 205
    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$4;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$4;-><init>(Ljava/lang/Object;)V

    .line 203
    invoke-interface {v3, p1, p2, p3, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 215
    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return v7
.end method

.method public setLocalPrefixes(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "localPrefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 178
    const-string/jumbo v3, "setLocalPrefixes([%s])"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 179
    const-string/jumbo v5, ","

    invoke-static {v5, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 178
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "logmsg":Ljava/lang/String;
    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 183
    .local v2, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 184
    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$5;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$5;-><init>(Ljava/lang/Object;)V

    .line 183
    invoke-interface {v3, p1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 194
    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return v6
.end method

.method public setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "v4addr"    # Ljava/lang/String;
    .param p3, "v4gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "v6gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 220
    if-eqz p1, :cond_0

    .line 221
    :goto_0
    if-eqz p2, :cond_1

    .line 222
    :goto_1
    if-eqz p3, :cond_2

    .line 223
    :goto_2
    if-eqz p4, :cond_3

    .line 225
    :goto_3
    const-string/jumbo v0, "setUpstreamParameters(%s, %s, %s, [%s])"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 226
    aput-object p1, v1, v9

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, ","

    invoke-static {v2, p4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 225
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "logmsg":Ljava/lang/String;
    new-instance v8, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    invoke-direct {v8, v4}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 230
    .local v8, "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 232
    new-instance v5, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$6;

    invoke-direct {v5, v8}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$6;-><init>(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 230
    invoke-interface/range {v0 .. v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-direct {p0, v7, v8}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    .line 242
    iget-boolean v0, v8, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v0

    .line 220
    .end local v7    # "logmsg":Ljava/lang/String;
    .end local v8    # "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0

    .line 221
    :cond_1
    const-string/jumbo p2, ""

    goto :goto_1

    .line 222
    :cond_2
    const-string/jumbo p3, ""

    goto :goto_2

    .line 223
    :cond_3
    new-instance p4, Ljava/util/ArrayList;

    .end local p4    # "v6gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .restart local p4    # "v6gws":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .line 236
    .restart local v7    # "logmsg":Ljava/lang/String;
    .restart local v8    # "results":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;
    :catch_0
    move-exception v6

    .line 237
    .local v6, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v7, v6}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return v9
.end method

.method public stopOffloadControl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 144
    new-instance v2, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$7;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$7;-><init>(Ljava/lang/Object;)V

    .line 143
    invoke-interface {v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    .line 152
    iput-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    .line 153
    iput-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 154
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "stopOffloadControl()"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 155
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to stopOffload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
