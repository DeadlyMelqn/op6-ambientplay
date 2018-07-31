.class public Lcom/android/settings/enterprise/SecurityLogsPreferenceController;
.super Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;
.source "SecurityLogsPreferenceController.java"


# static fields
.field private static final KEY_SECURITY_LOGS:Ljava/lang/String; = "security_logs"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getAdminActionTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getLastSecurityLogRetrievalTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "security_logs"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 35
    iget-object v1, p0, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isSecurityLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getLastSecurityLogRetrievalTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
