.class final Lcom/google/android/gms/internal/ads/zzauv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaug;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaug<",
        "Lcom/google/android/gms/internal/ads/zzatz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzatz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzr(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzawe;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzawe;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzawe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawe;->getVersion()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzazq;->zzj(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzwv()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzazq;->zzbi(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzayj;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawe;->zzwv()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzayj;-><init>([B)V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatz;

    return-object p1

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected AesGcmKey proto"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected AesGcmKey proto"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzauv;->zzd(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzawe;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawe;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawe;->getVersion()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzazq;->zzj(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzwv()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzazq;->zzbi(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzayj;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawe;->zzwv()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayj;-><init>([B)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected AesGcmKey proto"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawg;->zzt(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzawg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauv;->zzb(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected serialized AesGcmKeyFormat proto"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzawg;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawg;->getKeySize()I

    move-result p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzazq;->zzbi(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawe;->zzxk()Lcom/google/android/gms/internal/ads/zzawe$zza;

    move-result-object p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzawg;->getKeySize()I

    move-result p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzazl;->zzbh(I)[B

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->zzo([B)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe$zza;->zzs(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzawe$zza;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe$zza;->zzao(I)Lcom/google/android/gms/internal/ads/zzawe$zza;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzadi()Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbo;

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected AesGcmKeyFormat proto"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzaxi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzauv;->zzb(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzawe;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxi;->zzyz()Lcom/google/android/gms/internal/ads/zzaxi$zza;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxi$zza;->zzeb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaxi$zza;

    move-result-object p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzazy;->zzaav()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzaxi$zza;->zzai(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzaxi$zza;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxi$zzb;->zzdkx:Lcom/google/android/gms/internal/ads/zzaxi$zzb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxi$zza;->zzb(Lcom/google/android/gms/internal/ads/zzaxi$zzb;)Lcom/google/android/gms/internal/ads/zzaxi$zza;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzadi()Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbo;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaxi;

    return-object p0
.end method
