.class final Lcom/google/android/gms/internal/ads/zzauq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaua;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaua<",
        "Lcom/google/android/gms/internal/ads/zzatz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzaug;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzaug<",
            "Lcom/google/android/gms/internal/ads/zzatz;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, 0x2d9f47

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "aead"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    const/4 v0, 0x1

    if-nez p0, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 p2, 0x2

    sparse-switch p0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_1
    const-string p0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, p2

    goto :goto_2

    :sswitch_2
    const-string p0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v0

    goto :goto_2

    :sswitch_3
    const-string p0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_4
    const-string p0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    goto :goto_2

    :sswitch_5
    const-string p0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "No support for primitive \'Aead\' with key type \'%s\'."

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzauz;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzauz;-><init>()V

    goto :goto_3

    :pswitch_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaux;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;-><init>()V

    goto :goto_3

    :pswitch_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzauw;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzauw;-><init>()V

    goto :goto_3

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzauv;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzauv;-><init>()V

    goto :goto_3

    :pswitch_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzauu;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzauu;-><init>()V

    goto :goto_3

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaus;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaus;-><init>()V

    :goto_3
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaug;->getVersion()I

    move-result v1

    if-lt v1, p3, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "No key manager for key type \'%s\' with version at least %d."

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "No support for primitive \'%s\'."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1580a8e0 -> :sswitch_5
        0x4878f271 -> :sswitch_4
        0x579e3055 -> :sswitch_3
        0x6b1dc604 -> :sswitch_2
        0x6e9ea62f -> :sswitch_1
        0x7bee4165 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method