.class final Lcom/google/android/gms/auth/api/accounttransfer/zzn;
.super Lcom/google/android/gms/internal/auth/zzv;


# instance fields
.field private final synthetic zzbj:Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzn;->zzbj:Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/zzv;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzn;->zzbj:Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;->zzd(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzi()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzn;->zzbj:Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;->setResult(Ljava/lang/Object;)V

    return-void
.end method
