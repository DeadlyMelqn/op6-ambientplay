.class public abstract Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "DynamicAvailabilityPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# instance fields
.field private mAvailabilityObserver:Lcom/android/settings/core/PreferenceAvailabilityObserver;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mAvailabilityObserver:Lcom/android/settings/core/PreferenceAvailabilityObserver;

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    return-void
.end method

.method public getAvailabilityObserver()Lcom/android/settings/core/PreferenceAvailabilityObserver;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mAvailabilityObserver:Lcom/android/settings/core/PreferenceAvailabilityObserver;

    return-object v0
.end method

.method protected notifyOnAvailabilityUpdate(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mAvailabilityObserver:Lcom/android/settings/core/PreferenceAvailabilityObserver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mAvailabilityObserver:Lcom/android/settings/core/PreferenceAvailabilityObserver;

    invoke-virtual {p0}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/settings/core/PreferenceAvailabilityObserver;->onPreferenceAvailabilityUpdated(Ljava/lang/String;Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 60
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 67
    :cond_1
    return-void
.end method

.method public setAvailabilityObserver(Lcom/android/settings/core/PreferenceAvailabilityObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/settings/core/PreferenceAvailabilityObserver;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->mAvailabilityObserver:Lcom/android/settings/core/PreferenceAvailabilityObserver;

    .line 43
    return-void
.end method
