.class final Lcom/android/server/timezone/PackageVersions;
.super Ljava/lang/Object;
.source "PackageVersions.java"


# instance fields
.field final mDataAppVersion:I

.field final mUpdateAppVersion:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "updateAppVersion"    # I
    .param p2, "dataAppVersion"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    .line 29
    iput p2, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    return v1

    .line 37
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageVersions;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 38
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/android/server/timezone/PackageVersions;

    .line 43
    .local v0, "that":Lcom/android/server/timezone/PackageVersions;
    iget v3, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    iget v4, v0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    if-eq v3, v4, :cond_3

    .line 44
    return v2

    .line 46
    :cond_3
    iget v3, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    iget v4, v0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    if-ne v3, v4, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 51
    iget v0, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    .line 52
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    add-int v0, v1, v2

    .line 53
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageVersions{mUpdateAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string/jumbo v1, ", mDataAppVersion="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const/16 v1, 0x7d

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
