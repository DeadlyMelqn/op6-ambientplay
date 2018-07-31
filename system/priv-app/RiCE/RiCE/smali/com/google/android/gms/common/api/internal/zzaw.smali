.class final Lcom/google/android/gms/common/api/internal/zzaw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;


# instance fields
.field private final synthetic zzit:Lcom/google/android/gms/common/api/internal/zzav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzav;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzaw;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConnectionHint()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzaw;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p0

    return p0
.end method
