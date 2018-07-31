.class Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;
.super Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TetheringOffloadCallback"
.end annotation


# instance fields
.field public final controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

.field public final handler:Landroid/os/Handler;

.field public final log:Landroid/net/util/SharedLog;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;Landroid/net/util/SharedLog;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
    .param p3, "sharedLog"    # Landroid/net/util/SharedLog;

    .prologue
    .line 301
    invoke-direct {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    .line 303
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 304
    iput-object p3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->log:Landroid/net/util/SharedLog;

    .line 305
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface$TetheringOffloadCallback_10626(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 310
    packed-switch p1, :pswitch_data_0

    .line 327
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->log:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported OffloadCallbackEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStarted()V

    goto :goto_0

    .line 315
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedError()V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedUnsupported()V

    goto :goto_0

    .line 321
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onSupportAvailable()V

    goto :goto_0

    .line 324
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedLimitReached()V

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface$TetheringOffloadCallback_11706(Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 336
    iget v1, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->-wrap0(I)I

    move-result v1

    .line 337
    iget-object v2, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-object v2, v2, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-short v3, v3, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v3

    .line 338
    iget-object v4, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-object v4, v4, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    iget-object v5, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-short v5, v5, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    invoke-static {v5}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v5

    .line 335
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onNatTimeoutUpdate(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public onEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$9;

    invoke-direct {v1, p1, p0}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$9;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public updateTimeout(Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method
