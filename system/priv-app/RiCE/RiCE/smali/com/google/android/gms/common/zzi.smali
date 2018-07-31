.class final Lcom/google/android/gms/common/zzi;
.super Lcom/google/android/gms/common/zzg;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzbn:Lcom/google/android/gms/common/GoogleCertificates$CertData;

.field private final zzbo:Z

.field private final zzbp:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/google/android/gms/common/zzg;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/common/zzi;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/zzi;->zzbn:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    iput-boolean p3, p0, Lcom/google/android/gms/common/zzi;->zzbo:Z

    iput-boolean p4, p0, Lcom/google/android/gms/common/zzi;->zzbp:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZLcom/google/android/gms/common/zzh;)V
    .locals 0

    invoke-direct/range {p0 .. p4}, Lcom/google/android/gms/common/zzi;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/GoogleCertificates$CertData;ZZ)V

    return-void
.end method


# virtual methods
.method final getErrorMessage()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzi;->zzbp:Z

    if-eqz v0, :cond_0

    const-string v0, "debug cert rejected"

    goto :goto_0

    :cond_0
    const-string v0, "not whitelisted"

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/zzi;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/zzi;->zzbn:Lcom/google/android/gms/common/GoogleCertificates$CertData;

    const-string v3, "SHA-1"

    invoke-static/range {v3 .. v3}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/common/GoogleCertificates$CertData;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object v2

    iget-boolean p0, p0, Lcom/google/android/gms/common/zzi;->zzbo:Z

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    invoke-static/range {v1 .. v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static/range {v2 .. v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": pkg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sha1="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", atk="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", ver=12451009.false"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
