.class public abstract Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "FailedPasswordWipePreferenceControllerBase.java"


# instance fields
.field protected final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


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

    iput-object v0, p0, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract getMaximumFailedPasswordsBeforeWipe()I
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->getMaximumFailedPasswordsBeforeWipe()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 50
    .local v0, "available":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->notifyOnAvailabilityUpdate(Z)V

    .line 51
    return v0

    .line 49
    .end local v0    # "available":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "available":Z
    goto :goto_0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->getMaximumFailedPasswordsBeforeWipe()I

    move-result v0

    .line 42
    .local v0, "failedPasswordsBeforeWipe":I
    iget-object v1, p0, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 43
    const v3, 0x7f13002b

    .line 42
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method
