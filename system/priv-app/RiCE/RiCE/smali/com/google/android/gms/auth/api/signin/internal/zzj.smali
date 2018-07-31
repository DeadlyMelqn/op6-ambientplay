.class final Lcom/google/android/gms/auth/api/signin/internal/zzj;
.super Lcom/google/android/gms/auth/api/signin/internal/zzp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/signin/internal/zzp<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic zzew:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzj;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/zzj;->zzew:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/auth/api/signin/internal/zzp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object p0
.end method

.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/auth/api/signin/internal/zzh;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zzv;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzj;)V

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzj;->zzew:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzv;->zzd(Lcom/google/android/gms/auth/api/signin/internal/zzt;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
