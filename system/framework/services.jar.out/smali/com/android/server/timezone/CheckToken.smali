.class final Lcom/android/server/timezone/CheckToken;
.super Ljava/lang/Object;
.source "CheckToken.java"


# instance fields
.field final mOptimisticLockId:I

.field final mPackageVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .locals 2
    .param p1, "optimisticLockId"    # I
    .param p2, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 39
    if-nez p2, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageVersions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 43
    return-void
.end method

.method static fromByteArray([B)Lcom/android/server/timezone/CheckToken;
    .locals 10
    .param p0, "tokenBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 61
    .local v5, "versionId":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 62
    .local v4, "updateAppVersion":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 63
    .local v1, "dataAppVersion":I
    new-instance v6, Lcom/android/server/timezone/CheckToken;

    new-instance v8, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v8, v4, v1}, Lcom/android/server/timezone/PackageVersions;-><init>(II)V

    invoke-direct {v6, v5, v8}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 64
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    throw v7

    :catch_0
    move-exception v7

    goto :goto_0

    .line 63
    :cond_1
    return-object v6

    .line 64
    .end local v1    # "dataAppVersion":I
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "updateAppVersion":I
    .end local v5    # "versionId":I
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v6

    .end local v2    # "dis":Ljava/io/DataInputStream;
    :goto_1
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    if-eqz v7, :cond_4

    throw v7

    :catch_2
    move-exception v8

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_3

    :cond_3
    if-eq v7, v8, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v6

    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    goto :goto_2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 69
    if-ne p0, p1, :cond_0

    .line 70
    const/4 v1, 0x1

    return v1

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/timezone/CheckToken;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 73
    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/android/server/timezone/CheckToken;

    .line 78
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    iget v2, v0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    if-eq v1, v2, :cond_3

    .line 79
    return v3

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object v2, v0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v1, v2}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 87
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v2}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 88
    return v0
.end method

.method toByteArray()[B
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xc

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 47
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    iget v4, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    iget-object v4, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget v4, v4, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50
    iget-object v4, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget v4, v4, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 53
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 51
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 52
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    :goto_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Unable to write into a ByteArrayOutputStream"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 53
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v4

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    if-eqz v5, :cond_3

    :try_start_6
    throw v5

    .line 51
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 53
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_4

    :cond_2
    if-eq v5, v6, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 54
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 53
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_3

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .local v1, "dos":Ljava/io/DataOutputStream;
    goto :goto_3

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v4

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Token{mOptimisticLockId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string/jumbo v1, ", mPackageVersions="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const/16 v1, 0x7d

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
