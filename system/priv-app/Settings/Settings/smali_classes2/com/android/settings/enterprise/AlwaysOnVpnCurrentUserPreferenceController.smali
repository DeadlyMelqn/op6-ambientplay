.class public Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "AlwaysOnVpnCurrentUserPreferenceController.java"


# static fields
.field private static final KEY_ALWAYS_ON_VPN_PRIMARY_USER:Ljava/lang/String; = "always_on_vpn_primary_user"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    .line 32
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 34
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "always_on_vpn_primary_user"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isAlwaysOnVpnSetInCurrentUser()Z

    move-result v0

    .line 46
    .local v0, "available":Z
    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;->notifyOnAvailabilityUpdate(Z)V

    .line 47
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isInCompMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const v0, 0x7f0f128f

    .line 38
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 41
    return-void

    .line 40
    :cond_0
    const v0, 0x7f0f128e

    goto :goto_0
.end method
