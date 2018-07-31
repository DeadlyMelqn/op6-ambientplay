.class public Lcom/android/settings/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# static fields
.field private static final PASSWORD_MAX_LENGTH:I = 0x3f

.field private static final PASSWORD_MIN_LENGTH:I = 0x8

.field private static final SSID_ASCII_MAX_LENGTH:I = 0x20

.field private static final SSID_ASCII_MIN_LENGTH:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPasswordValid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    return v1

    .line 47
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    .local v0, "length":I
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSSIDTooLong(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    return v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSSIDTooShort(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    return v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
