.class final synthetic Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/app/admin/SecurityLog$SecurityEvent;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Landroid/app/admin/SecurityLog$SecurityEvent;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->lambda$-com_android_server_devicepolicy_SecurityLogMonitor_9444(Landroid/app/admin/SecurityLog$SecurityEvent;Landroid/app/admin/SecurityLog$SecurityEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;->$INST$0:Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
