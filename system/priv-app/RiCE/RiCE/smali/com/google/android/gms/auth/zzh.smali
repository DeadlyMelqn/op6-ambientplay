.class final Lcom/google/android/gms/auth/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/zzm<",
        "Lcom/google/android/gms/auth/TokenData;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$options:Landroid/os/Bundle;

.field private final synthetic zzr:Landroid/accounts/Account;

.field private final synthetic zzs:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/zzh;->zzr:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/gms/auth/zzh;->zzs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/zzh;->val$options:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zze(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzi;->zzd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/zzh;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/auth/zzh;->zzr:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gms/auth/zzh;->zzs:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/auth/zzh;->val$options:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/internal/auth/zzh;->zzd(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/auth/zzg;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "tokenDetails"

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/TokenData;->zzd(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "Error"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "userRecoveryIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzbr;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/zzbr;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/auth/zzbr;->zzd(Lcom/google/android/gms/internal/auth/zzbr;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    sget-object p0, Lcom/google/android/gms/internal/auth/zzbr;->zzfs:Lcom/google/android/gms/internal/auth/zzbr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzbr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/auth/zzbr;->zzft:Lcom/google/android/gms/internal/auth/zzbr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzbr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/auth/zzg;->zzd()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "isUserRecoverableError status: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "GoogleAuthUtil"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v0
.end method
