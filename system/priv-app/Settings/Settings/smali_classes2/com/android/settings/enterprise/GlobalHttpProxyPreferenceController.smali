.class public Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "GlobalHttpProxyPreferenceController.java"


# static fields
.field private static final KEY_GLOBAL_HTTP_PROXY:Ljava/lang/String; = "global_http_proxy"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    .line 29
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 31
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "global_http_proxy"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isGlobalHttpProxySet()Z

    move-result v0

    .line 36
    .local v0, "available":Z
    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;->notifyOnAvailabilityUpdate(Z)V

    .line 37
    return v0
.end method
