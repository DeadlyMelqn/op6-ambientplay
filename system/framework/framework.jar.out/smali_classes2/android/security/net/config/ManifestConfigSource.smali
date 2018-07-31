.class public Landroid/security/net/config/ManifestConfigSource;
.super Ljava/lang/Object;
.source "ManifestConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSecurityConfig"


# instance fields
.field private final mApplicationInfoFlags:I

.field private final mConfigResourceId:I

.field private mConfigSource:Landroid/security/net/config/ConfigSource;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mTargetSandboxVesrsion:I

.field private final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 43
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    .line 44
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    .line 45
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    .line 46
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSandboxVesrsion:I

    .line 47
    return-void
.end method

.method private getConfigSource()Landroid/security/net/config/ConfigSource;
    .locals 8

    .prologue
    .line 60
    iget-object v7, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 61
    :try_start_0
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v1

    .line 66
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    if-eqz v1, :cond_2

    .line 67
    iget v1, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 69
    .local v3, "debugBuild":Z
    :goto_0
    const-string/jumbo v1, "NetworkSecurityConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Using Network Security Config from resource "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    iget-object v4, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    const-string/jumbo v4, " debugBuild: "

    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Landroid/security/net/config/XmlConfigSource;

    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    .line 74
    iget v4, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    iget v5, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSandboxVesrsion:I

    .line 73
    invoke-direct/range {v0 .. v5}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZII)V

    .line 87
    .end local v3    # "debugBuild":Z
    .local v0, "source":Landroid/security/net/config/ConfigSource;
    :goto_1
    iput-object v0, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 88
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-object v1

    .line 67
    .end local v0    # "source":Landroid/security/net/config/ConfigSource;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "debugBuild":Z
    goto :goto_0

    .line 77
    .end local v3    # "debugBuild":Z
    :cond_2
    :try_start_2
    const-string/jumbo v1, "NetworkSecurityConfig"

    const-string/jumbo v2, "No Network Security Config specified, using platform default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v1, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 83
    iget v1, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSandboxVesrsion:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    const/4 v6, 0x1

    .line 84
    .local v6, "usesCleartextTraffic":Z
    :goto_2
    new-instance v0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;

    iget v1, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    .line 85
    iget v2, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSandboxVesrsion:I

    .line 84
    invoke-direct {v0, v6, v1, v2}, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;-><init>(ZII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "source":Landroid/security/net/config/ConfigSource;
    goto :goto_1

    .line 83
    .end local v0    # "source":Landroid/security/net/config/ConfigSource;
    .end local v6    # "usesCleartextTraffic":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "usesCleartextTraffic":Z
    goto :goto_2

    .line 82
    .end local v6    # "usesCleartextTraffic":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "usesCleartextTraffic":Z
    goto :goto_2

    .line 60
    .end local v6    # "usesCleartextTraffic":Z
    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
