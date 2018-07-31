.class public Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "BluetoothPairingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_PAIRING:Ljava/lang/String; = "pref_bt_pairing"

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingPrefCtrl"


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "activity"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 46
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 47
    return-void
.end method


# virtual methods
.method public createBluetoothPairingPreference(I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "order"    # I

    .prologue
    .line 77
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "pref_bt_pairing"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f020201

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0f12b6

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "pref_bt_pairing"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string/jumbo v0, "pref_bt_pairing"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v5, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 63
    const v3, 0x7f0f12b5

    move-object v4, v2

    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 65
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
