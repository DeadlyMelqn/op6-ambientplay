.class public interface abstract Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;,
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;,
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;
    }
.end annotation


# direct methods
.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 7
    .param p0, "blackListStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 56
    .local v2, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 59
    const-string/jumbo p0, "rotate,networkspeed"

    .line 62
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 63
    .local v1, "mTM":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 64
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "23410"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const-string/jumbo v4, "StatusBarIconController"

    const-string/jumbo v5, "O2 UK sim, add volte/vowifi to blacklist by default"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string/jumbo p0, "rotate,networkspeed,volte,vowifi"

    .line 71
    .end local v1    # "mTM":Landroid/telephony/TelephonyManager;
    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "blacklist":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 73
    .local v3, "slot":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 74
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "slot":Ljava/lang/String;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public abstract addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
.end method

.method public abstract removeIcon(Ljava/lang/String;)V
.end method

.method public abstract removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
.end method

.method public abstract setExternalIcon(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
.end method

.method public abstract setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract setIconVisibility(Ljava/lang/String;Z)V
.end method
