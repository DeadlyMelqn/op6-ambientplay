.class final Lcom/google/android/gms/internal/ads/zzavb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaug;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaug<",
        "Lcom/google/android/gms/internal/ads/zzauf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzauf;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawu;->zzab(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzawu;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzawu;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzawu;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawu;->getVersion()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzazq;->zzj(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawu;->zzxs()Lcom/google/android/gms/internal/ads/zzawq;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Lcom/google/android/gms/internal/ads/zzawq;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawu;->zzxs()Lcom/google/android/gms/internal/ads/zzawq;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzxu()Lcom/google/android/gms/internal/ads/zzaww;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzyh()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Lcom/google/android/gms/internal/ads/zzawy;)Lcom/google/android/gms/internal/ads/zzayv;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawu;->zzyc()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawu;->zzyd()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzayt;->zza(Lcom/google/android/gms/internal/ads/zzayv;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v4

    new-instance v8, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzxv()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawm;->zzxp()Lcom/google/android/gms/internal/ads/zzaxn;

    move-result-object p0

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Lcom/google/android/gms/internal/ads/zzaxn;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzyj()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object v5

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzyi()Lcom/google/android/gms/internal/ads/zzaxa;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Lcom/google/android/gms/internal/ads/zzaxa;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzxw()Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Lcom/google/android/gms/internal/ads/zzawk;)Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzayp;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzayw;Lcom/google/android/gms/internal/ads/zzayn;)V

    check-cast p0, Lcom/google/android/gms/internal/ads/zzauf;

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected serialized EciesAeadHkdfPublicKey proto"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final getVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbah;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzavb;->zzg(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzauf;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzawu;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawu;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawu;->getVersion()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzazq;->zzj(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawu;->zzxs()Lcom/google/android/gms/internal/ads/zzawq;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Lcom/google/android/gms/internal/ads/zzawq;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawu;->zzxs()Lcom/google/android/gms/internal/ads/zzawq;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzxu()Lcom/google/android/gms/internal/ads/zzaww;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzyh()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Lcom/google/android/gms/internal/ads/zzawy;)Lcom/google/android/gms/internal/ads/zzayv;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawu;->zzyc()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawu;->zzyd()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzayt;->zza(Lcom/google/android/gms/internal/ads/zzayv;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v4

    new-instance v8, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzxv()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawm;->zzxp()Lcom/google/android/gms/internal/ads/zzaxn;

    move-result-object p1

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Lcom/google/android/gms/internal/ads/zzaxn;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzyj()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object v5

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaww;->zzyi()Lcom/google/android/gms/internal/ads/zzaxa;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Lcom/google/android/gms/internal/ads/zzaxa;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzxw()Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzavh;->zza(Lcom/google/android/gms/internal/ads/zzawk;)Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzayp;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzayw;Lcom/google/android/gms/internal/ads/zzayn;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzaxi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Not implemented."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
