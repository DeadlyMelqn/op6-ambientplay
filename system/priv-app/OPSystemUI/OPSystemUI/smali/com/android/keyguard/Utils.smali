.class public Lcom/android/keyguard/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEBUG_ONEPLUS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/keyguard/Utils;->DEBUG_ONEPLUS:Z

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeAccentColor(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 23
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 25
    return v3

    .line 27
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string/jumbo v1, "oem_black_mode_accent_color"

    .line 28
    .local v1, "colorkey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "color":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 30
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 27
    .end local v0    # "color":Ljava/lang/String;
    .end local v1    # "colorkey":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "oem_white_mode_accent_color"

    .restart local v1    # "colorkey":Ljava/lang/String;
    goto :goto_0

    .line 32
    .restart local v0    # "color":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
