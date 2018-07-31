.class final synthetic Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

.field public static final synthetic $INST$1:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

.field public static final synthetic $INST$2:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

.field public static final synthetic $INST$3:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/SystemServer;->-com_android_server_SystemServer-mthref-0()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/SystemServer;->lambda$-com_android_server_SystemServer_31041()V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/SystemServer;->lambda$-com_android_server_SystemServer_36818()V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/SystemServer;->lambda$-com_android_server_SystemServer_41366()V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>(B)V

    sput-object v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$0:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    new-instance v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>(B)V

    sput-object v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$1:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    new-instance v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>(B)V

    sput-object v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$2:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    new-instance v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>(B)V

    sput-object v0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$3:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$id:B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$m$3()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
