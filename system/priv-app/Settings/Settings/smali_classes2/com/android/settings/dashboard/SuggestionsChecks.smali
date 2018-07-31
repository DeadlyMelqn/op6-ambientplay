.class public Lcom/android/settings/dashboard/SuggestionsChecks;
.super Ljava/lang/Object;
.source "SuggestionsChecks.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWallpaperManager:Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mWallpaperManager:Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;

    .line 55
    return-void
.end method

.method private hasEnabledZenAutoRules()Z
    .locals 4

    .prologue
    .line 94
    iget-object v3, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 95
    .local v2, "zenRules":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/AutomaticZenRule;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    .line 96
    .local v0, "rule":Landroid/app/AutomaticZenRule;
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const/4 v3, 0x1

    return v3

    .line 100
    .end local v0    # "rule":Landroid/app/AutomaticZenRule;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private hasWallpaperSet()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mWallpaperManager:Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;

    invoke-virtual {v2, v0}, Lcom/android/settings/dashboard/suggestions/WallpaperManagerWrapper;->getWallpaperId(I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isDeviceSecured()Z
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 76
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    return v1
.end method

.method private isNotSingleFingerprintEnrolled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v2, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 81
    .local v0, "manager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isSuggestionComplete(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 2
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 58
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "className":Ljava/lang/String;
    const-class v1, Lcom/android/settings/Settings$ZenModeAutomationSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/SuggestionsChecks;->hasEnabledZenAutoRules()Z

    move-result v1

    return v1

    .line 61
    :cond_0
    const-class v1, Lcom/android/settings/Settings$WallpaperSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/dashboard/SuggestionsChecks;->hasWallpaperSet()Z

    move-result v1

    return v1

    .line 63
    :cond_1
    const-class v1, Lcom/android/settings/Settings$WifiCallingSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SuggestionsChecks;->isWifiCallingUnavailableOrEnabled()Z

    move-result v1

    return v1

    .line 65
    :cond_2
    const-class v1, Lcom/android/settings/Settings$FingerprintSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-direct {p0}, Lcom/android/settings/dashboard/SuggestionsChecks;->isNotSingleFingerprintEnrolled()Z

    move-result v1

    return v1

    .line 67
    :cond_3
    const-class v1, Lcom/android/settings/Settings$ScreenLockSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 68
    const-class v1, Lcom/android/settings/Settings$FingerprintEnrollSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 67
    if-eqz v1, :cond_5

    .line 69
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/dashboard/SuggestionsChecks;->isDeviceSecured()Z

    move-result v1

    return v1

    .line 71
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public isWifiCallingUnavailableOrEnabled()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
