.class final Lcom/google/android/gms/internal/ads/zzavk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaug;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaug<",
        "Lcom/google/android/gms/internal/ads/zzauk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzaxg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzyt()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavl;->zzdhz:[I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzys()Lcom/google/android/gms/internal/ads/zzaxa;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzaxa;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzyt()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too big"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzyt()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too big"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzyt()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too big"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzauk;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzae(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzaxc;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzaxc;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxc;->getVersion()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzazq;->zzj(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxc;->zzwv()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxc;->zzym()Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzavk;->zza(Lcom/google/android/gms/internal/ads/zzaxg;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxc;->zzym()Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxg;->zzys()Lcom/google/android/gms/internal/ads/zzaxa;

    move-result-object p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxc;->zzwv()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HMAC"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxc;->zzym()Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzyt()I

    move-result p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavl;->zzdhz:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxa;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/security/GeneralSecurityException;

    goto :goto_1

    :pswitch_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazj;

    const-string v0, "HMACSHA512"

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzazj;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazj;

    const-string v0, "HMACSHA256"

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzazj;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazj;

    const-string v0, "HMACSHA1"

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzazj;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzauk;

    return-object p1

    :goto_1
    const-string p1, "unknown hash"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected HmacKey proto"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected serialized HmacKey proto"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzavk;->zzh(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzauk;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzaxc;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxc;->getVersion()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzazq;->zzj(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzwv()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzym()Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzavk;->zza(Lcom/google/android/gms/internal/ads/zzaxg;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzym()Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzys()Lcom/google/android/gms/internal/ads/zzaxa;

    move-result-object p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzwv()Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbah;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HMAC"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzym()Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxg;->zzyt()I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavl;->zzdhz:[I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxa;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "unknown hash"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzazj;

    const-string v0, "HMACSHA512"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazj;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzazj;

    const-string v0, "HMACSHA256"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazj;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzazj;

    const-string v0, "HMACSHA1"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzazj;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected HmacKey proto"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxe;->zzag(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzaxe;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzavk;->zzb(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbu; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected serialized HmacKeyFormat proto"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbcu;)Lcom/google/android/gms/internal/ads/zzbcu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzaxe;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxe;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxe;->getKeySize()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxe;->zzym()Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzavk;->zza(Lcom/google/android/gms/internal/ads/zzaxg;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxc;->zzyn()Lcom/google/android/gms/internal/ads/zzaxc$zza;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaxc$zza;->zzav(I)Lcom/google/android/gms/internal/ads/zzaxc$zza;

    move-result-object p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxe;->zzym()Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaxc$zza;->zzc(Lcom/google/android/gms/internal/ads/zzaxg;)Lcom/google/android/gms/internal/ads/zzaxc$zza;

    move-result-object p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaxe;->getKeySize()I

    move-result p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzazl;->zzbh(I)[B

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->zzo([B)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxc$zza;->zzaf(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzaxc$zza;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo$zza;->zzadi()Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbo;

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "expected HmacKeyFormat proto"

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

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzavk;->zzb(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxi;->zzyz()Lcom/google/android/gms/internal/ads/zzaxi$zza;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

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
