.class public Lcom/android/settings/enterprise/ImePreferenceController;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "ImePreferenceController.java"


# static fields
.field private static final KEY_INPUT_METHOD:Ljava/lang/String; = "input_method"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    .line 33
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/ImePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 35
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "input_method"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/settings/enterprise/ImePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getImeLabelIfOwnerSet()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 47
    .local v0, "available":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/ImePreferenceController;->notifyOnAvailabilityUpdate(Z)V

    .line 48
    return v0

    .line 46
    .end local v0    # "available":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "available":Z
    goto :goto_0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/enterprise/ImePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    iget-object v2, p0, Lcom/android/settings/enterprise/ImePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getImeLabelIfOwnerSet()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 40
    const v2, 0x7f0f128d

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
