.class public Landroid/net/wifi/aware/WifiAwareUtils;
.super Ljava/lang/Object;
.source "WifiAwareUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validatePassphrase(Ljava/lang/String;)Z
    .locals 2
    .param p0, "passphrase"    # Ljava/lang/String;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public static validatePmk([B)Z
    .locals 2
    .param p0, "pmk"    # [B

    .prologue
    .line 81
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static validateServiceName([B)V
    .locals 4
    .param p0, "serviceNameData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name - null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    array-length v2, p0

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    .line 39
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name length - must be between 1 and 255 bytes (UTF-8 encoding)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 44
    .local v1, "index":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_7

    .line 45
    aget-byte v0, p0, v1

    .line 46
    .local v0, "b":B
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_6

    .line 47
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-le v0, v2, :cond_6

    :cond_3
    const/16 v2, 0x61

    if-lt v0, v2, :cond_4

    const/16 v2, 0x7a

    if-le v0, v2, :cond_6

    :cond_4
    const/16 v2, 0x41

    if-lt v0, v2, :cond_5

    const/16 v2, 0x5a

    if-le v0, v2, :cond_6

    .line 48
    :cond_5
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_6

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid service name - illegal characters, allowed = (0-9, a-z,A-Z, -, .)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "b":B
    :cond_7
    return-void
.end method
