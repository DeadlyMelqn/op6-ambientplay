.class public Lcom/android/settings/bluetooth/OPEarphoneModePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "OPEarphoneModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_EARPHONE_MODE:Ljava/lang/String; = "earphone_mode"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "earphone_mode"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 58
    const-string/jumbo v2, "earphone_mode"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    .line 61
    const-string/jumbo v2, "com.android.settings"

    .line 62
    const-string/jumbo v3, "com.android.settings.Settings$OPEarphoneModeActivity"

    .line 60
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    iget-object v2, p0, Lcom/android/settings/bluetooth/OPEarphoneModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    const-string/jumbo v2, "ear.entrance"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 66
    const/4 v2, 0x1

    return v2

    .line 69
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOpBluetoothHeadset()Z

    move-result v0

    return v0
.end method
