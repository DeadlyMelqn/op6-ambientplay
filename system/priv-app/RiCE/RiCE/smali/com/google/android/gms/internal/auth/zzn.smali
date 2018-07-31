.class final Lcom/google/android/gms/internal/auth/zzn;
.super Lcom/google/android/gms/internal/auth/zzq;


# instance fields
.field private final synthetic zzah:Lcom/google/android/gms/internal/auth/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzn;->zzah:Lcom/google/android/gms/internal/auth/zzm;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/zzq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Landroid/accounts/Account;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzn;->zzah:Lcom/google/android/gms/internal/auth/zzm;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzr;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzk;->zzf()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/auth/zzr;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzm;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
