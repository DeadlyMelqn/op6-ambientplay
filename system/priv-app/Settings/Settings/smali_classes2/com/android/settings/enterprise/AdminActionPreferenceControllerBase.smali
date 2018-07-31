.class public abstract Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;
.super Lcom/android/settings/core/PreferenceController;
.source "AdminActionPreferenceControllerBase.java"


# instance fields
.field protected final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract getAdminActionTimestamp()Ljava/util/Date;
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;->getAdminActionTimestamp()Ljava/util/Date;

    move-result-object v0

    .line 42
    .local v0, "timestamp":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0f1285

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 45
    const/16 v4, 0x11

    .line 44
    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
