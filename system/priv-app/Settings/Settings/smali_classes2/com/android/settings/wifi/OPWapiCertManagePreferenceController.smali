.class public Lcom/android/settings/wifi/OPWapiCertManagePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "OPWapiCertManagePreferenceController.java"


# static fields
.field private static final KEY_WAPI_CERT_MANAGE:Ljava/lang/String; = "wapi_cert_manage"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "wapi_cert_manage"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 17
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
