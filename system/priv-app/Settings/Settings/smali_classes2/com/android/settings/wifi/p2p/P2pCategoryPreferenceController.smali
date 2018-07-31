.class public abstract Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "P2pCategoryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected mCategory:Landroid/support/v7/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addChild(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "child"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 46
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllChildren()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    .line 66
    :cond_0
    return-void
.end method
