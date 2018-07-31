.class final Lcom/google/firebase/iid/zzt;
.super Ljava/lang/Object;


# instance fields
.field private final zzbk:Ljava/security/KeyPair;

.field private final zzbl:J


# direct methods
.method constructor <init>(Ljava/security/KeyPair;J)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    iput-wide p2, p0, Lcom/google/firebase/iid/zzt;->zzbl:J

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzt;)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/iid/zzt;->zzp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/iid/zzt;)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/iid/zzt;->zzq()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/firebase/iid/zzt;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/iid/zzt;->zzbl:J

    return-wide v0
.end method

.method private final zzp()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzq()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/firebase/iid/zzt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/firebase/iid/zzt;

    iget-wide v2, p0, Lcom/google/firebase/iid/zzt;->zzbl:J

    iget-wide v4, p1, Lcom/google/firebase/iid/zzt;->zzbl:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    invoke-virtual/range {v0 .. v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v2, p1, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    invoke-virtual/range {v2 .. v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    iget-object p1, p1, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method final getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/iid/zzt;->zzbl:J

    return-wide v0
.end method

.method final getKeyPair()Ljava/security/KeyPair;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    invoke-virtual/range {v1 .. v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/iid/zzt;->zzbk:Ljava/security/KeyPair;

    invoke-virtual/range {v1 .. v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/firebase/iid/zzt;->zzbl:J

    invoke-static/range {v1 .. v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
