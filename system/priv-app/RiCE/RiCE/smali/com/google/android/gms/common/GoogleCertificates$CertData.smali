.class abstract Lcom/google/android/gms/common/GoogleCertificates$CertData;
.super Lcom/google/android/gms/common/internal/ICertData$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/GoogleCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CertData"
.end annotation


# instance fields
.field private zzbc:I


# direct methods
.method protected constructor <init>([B)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/internal/ICertData$Stub;-><init>()V

    array-length v0, p1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/GoogleCertificates$CertData;->zzbc:I

    return-void
.end method

.method protected static zzd(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/google/android/gms/common/internal/ICertData;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/internal/ICertData;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ICertData;->getHashCode()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/GoogleCertificates$CertData;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ICertData;->getBytesWrapped()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/GoogleCertificates$CertData;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string v1, "Failed to get Google certificates from remote"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v0
.end method

.method abstract getBytes()[B
.end method

.method public getBytesWrapped()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/GoogleCertificates$CertData;->getBytes()[B

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getHashCode()I
    .locals 0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/GoogleCertificates$CertData;->hashCode()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/GoogleCertificates$CertData;->zzbc:I

    return p0
.end method
