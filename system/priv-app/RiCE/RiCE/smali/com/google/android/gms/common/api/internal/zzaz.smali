.class final Lcom/google/android/gms/common/api/internal/zzaz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzit:Lcom/google/android/gms/common/api/internal/zzav;

.field private final synthetic zziv:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

.field private final synthetic zziw:Z

.field private final synthetic zzix:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzav;Lcom/google/android/gms/common/api/internal/StatusPendingResult;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zziv:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zziw:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zzix:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/zzav;->zzc(Lcom/google/android/gms/common/api/internal/zzav;)Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->removeSavedDefaultGoogleSignInAccount()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zzit:Lcom/google/android/gms/common/api/internal/zzav;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zziv:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zziw:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzaz;->zzix:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method
