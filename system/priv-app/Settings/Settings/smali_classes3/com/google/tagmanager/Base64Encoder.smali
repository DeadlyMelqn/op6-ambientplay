.class Lcom/google/tagmanager/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final NO_PADDING:I = 0x1

.field public static final URL_SAFE:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lcom/google/tagmanager/Base64Encoder;->getSdkVersion()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 54
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_3

    move v1, v3

    .line 55
    .local v1, "paddingDesired":Z
    :goto_0
    and-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_4

    move v2, v3

    .line 56
    .local v2, "websafeDesired":Z
    :goto_1
    if-nez v2, :cond_5

    .line 59
    invoke-static {p0}, Lcom/google/tagmanager/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3

    .line 44
    .end local v1    # "paddingDesired":Z
    .end local v2    # "websafeDesired":Z
    :cond_0
    const/4 v0, 0x2

    .line 45
    .local v0, "newFlags":I
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1

    .line 48
    :goto_2
    and-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_2

    .line 52
    :goto_3
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    return-object v3

    .line 46
    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    .line 49
    :cond_2
    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    .end local v0    # "newFlags":I
    :cond_3
    move v1, v4

    .line 54
    goto :goto_0

    .restart local v1    # "paddingDesired":Z
    :cond_4
    move v2, v4

    .line 55
    goto :goto_1

    .line 57
    .restart local v2    # "websafeDesired":Z
    :cond_5
    invoke-static {p0}, Lcom/google/tagmanager/Base64;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v3

    return-object v3
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-static {}, Lcom/google/tagmanager/Base64Encoder;->getSdkVersion()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 32
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_3

    move v1, v3

    .line 33
    .local v1, "paddingDesired":Z
    :goto_0
    and-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_4

    move v2, v3

    .line 34
    .local v2, "websafeDesired":Z
    :goto_1
    if-nez v2, :cond_5

    .line 37
    invoke-static {p0, v1}, Lcom/google/tagmanager/Base64;->encode([BZ)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 22
    .end local v1    # "paddingDesired":Z
    .end local v2    # "websafeDesired":Z
    :cond_0
    const/4 v0, 0x2

    .line 23
    .local v0, "newFlags":I
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1

    .line 26
    :goto_2
    and-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_2

    .line 30
    :goto_3
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 24
    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    .line 27
    :cond_2
    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    .end local v0    # "newFlags":I
    :cond_3
    move v1, v4

    .line 32
    goto :goto_0

    .restart local v1    # "paddingDesired":Z
    :cond_4
    move v2, v4

    .line 33
    goto :goto_1

    .line 35
    .restart local v2    # "websafeDesired":Z
    :cond_5
    invoke-static {p0, v1}, Lcom/google/tagmanager/Base64;->encodeWebSafe([BZ)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getSdkVersion()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
