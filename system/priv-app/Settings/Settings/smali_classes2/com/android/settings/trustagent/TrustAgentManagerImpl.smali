.class public Lcom/android/settings/trustagent/TrustAgentManagerImpl;
.super Ljava/lang/Object;
.source "TrustAgentManagerImpl.java"

# interfaces
.implements Lcom/android/settings/trustagent/TrustAgentManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustAgentFeature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v4, 0x0

    .line 30
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 31
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string/jumbo v1, "TrustAgentFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skipping agent because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    const-string/jumbo v3, " does not have permission "

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    const-string/jumbo v3, "android.permission.PROVIDE_TRUST_AGENT"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    const-string/jumbo v3, "."

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return v4

    .line 37
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
