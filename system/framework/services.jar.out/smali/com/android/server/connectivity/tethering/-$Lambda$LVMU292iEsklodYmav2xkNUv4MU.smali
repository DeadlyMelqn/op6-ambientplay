.class final synthetic Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ZLjava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_8802(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(ZLjava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU;->$m$0(ZLjava/lang/String;)V

    return-void
.end method
