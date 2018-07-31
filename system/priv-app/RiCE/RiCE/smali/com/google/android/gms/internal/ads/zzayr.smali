.class public final Lcom/google/android/gms/internal/ads/zzayr;
.super Ljava/lang/Object;


# instance fields
.field private zzdnj:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzdnj:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/zzayw;)Lcom/google/android/gms/internal/ads/zzays;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzdnj:Ljava/security/interfaces/ECPublicKey;

    invoke-interface/range {v0 .. v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzayt;->zza(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual/range {v0 .. v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzdnj:Ljava/security/interfaces/ECPublicKey;

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-interface/range {v0 .. v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual/range {v2 .. v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual/range {v3 .. v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v2 .. v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual/range {v3 .. v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v2 .. v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v3 .. v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v2 .. v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v2

    invoke-virtual/range {v3 .. v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzayt;->zza(Ljava/security/interfaces/ECPrivateKey;Ljava/security/spec/ECPoint;)[B

    move-result-object p0

    invoke-interface/range {v1 .. v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-interface/range {v1 .. v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayt;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzayt;->zzb(Ljava/security/spec/EllipticCurve;)I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayu;->zzdnm:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzayw;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0xf

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "invalid format:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/2addr v0, v4

    new-array p5, v0, [B

    invoke-virtual/range {v1 .. v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v6, v2

    sub-int/2addr v0, v6

    array-length v6, v2

    invoke-static {v2, v5, p5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {v1 .. v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, p5, v5

    goto :goto_1

    :pswitch_1
    mul-int/lit8 p5, v0, 0x2

    add-int/2addr p5, v4

    new-array v2, p5, [B

    invoke-virtual/range {v1 .. v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual/range {v1 .. v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v7, v1

    sub-int/2addr p5, v7

    array-length v7, v1

    invoke-static {v1, v5, v2, p5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    array-length p5, v6

    sub-int/2addr v0, p5

    array-length p5, v6

    invoke-static {v6, v5, v2, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p5, 0x4

    aput-byte p5, v2, v5

    move-object p5, v2

    :goto_1
    new-array v0, v3, [[B

    aput-object p5, v0, v5

    aput-object p0, v0, v4

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzayk;->zza([[B)[B

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayy;->zzdoa:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayy;->zzek(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual/range {v0 .. v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p4, v1, :cond_4

    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_3

    :cond_2
    :goto_2
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {v0 .. v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {p2, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :goto_3
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    new-array p2, p4, [B

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-array p0, v5, [B

    move p1, v5

    :goto_4
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte p0, v4

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual/range {v0 .. v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    array-length v1, p0

    add-int/2addr v1, p1

    if-ge v1, p4, :cond_3

    array-length v1, p0

    invoke-static {p0, v5, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    add-int/2addr p1, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    sub-int/2addr p4, p1

    invoke-static {p0, v5, p2, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzays;

    invoke-direct {p0, p5, p2}, Lcom/google/android/gms/internal/ads/zzays;-><init>([B[B)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "size too large"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid public key spec"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
