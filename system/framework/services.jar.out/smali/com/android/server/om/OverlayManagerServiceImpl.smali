.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;
    }
.end annotation


# instance fields
.field private final mDefaultOverlays:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Ljava/util/Set;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V
    .locals 0
    .param p1, "packageManager"    # Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;
    .param p2, "idmapManager"    # Lcom/android/server/om/IdmapManager;
    .param p3, "settings"    # Lcom/android/server/om/OverlayManagerSettings;
    .param p5, "listener"    # Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;",
            "Lcom/android/server/om/IdmapManager;",
            "Lcom/android/server/om/OverlayManagerSettings;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p4, "defaultOverlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    .line 66
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 67
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 68
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:Ljava/util/Set;

    .line 69
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    .line 70
    return-void
.end method

.method private calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I
    .locals 3
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 524
    const/4 v1, 0x0

    return v1

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    const/4 v1, 0x1

    return v1

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result v0

    .line 532
    .local v0, "enabled":Z
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private static isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    iget v1, p0, Landroid/content/pm/PackageInfo;->overlayFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 73
    :cond_0
    return v0
.end method

.method private isPackageUpdatableOverlay(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 403
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 406
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .locals 8
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .prologue
    .line 554
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v4, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v3

    .line 558
    .local v3, "userIds":[I
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget v2, v3, v4

    .line 560
    .local v2, "userId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 561
    .local v1, "tmp":Landroid/content/om/OverlayInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    return-void

    .line 565
    .end local v1    # "tmp":Landroid/content/om/OverlayInfo;
    :catch_0
    move-exception v0

    .line 558
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "userId":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v5, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v4, p1, v5}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 570
    return-void
.end method

.method private updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackage"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, "modified":Z
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 235
    .local v5, "ois":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 236
    .local v0, "N":I
    const/4 v2, 0x0

    .end local v3    # "modified":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 237
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 238
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v8, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 239
    .local v6, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_0

    .line 240
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v8, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v9, v4, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v7, v8, v9}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v7

    or-int/2addr v3, v7

    .line 241
    .local v3, "modified":Z
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 236
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v3    # "modified":Z
    :cond_0
    :try_start_0
    invoke-direct {p0, p3, v6, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    or-int/2addr v3, v7

    .restart local v3    # "modified":Z
    goto :goto_1

    .line 245
    .end local v3    # "modified":Z
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v7, "OverlayManager"

    const-string/jumbo v8, "failed to update settings"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v8, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v7

    or-int/2addr v3, v7

    .restart local v3    # "modified":Z
    goto :goto_1

    .line 251
    .end local v1    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v3    # "modified":Z
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    .end local v6    # "overlayPackage":Landroid/content/pm/PackageInfo;
    :cond_1
    return v3
.end method

.method private updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .locals 6
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 498
    const-string/jumbo v3, "android"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 498
    :goto_0
    xor-int/lit8 v3, v3, 0x1

    .line 497
    if-eqz v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 504
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-virtual {v3, v4, p3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 506
    .local v1, "modified":Z
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v0

    .line 507
    .local v0, "currentState":I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v2

    .line 508
    .local v2, "newState":I
    if-eq v0, v2, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p3, v2}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;II)Z

    move-result v3

    or-int/2addr v1, v3

    .line 517
    :cond_1
    return v1

    .line 498
    .end local v0    # "currentState":I
    .end local v1    # "modified":Z
    .end local v2    # "newState":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 479
    .local v3, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 480
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 481
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 482
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 483
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 484
    iget-object v5, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "oi":Landroid/content/om/OverlayInfo;
    :cond_1
    return-object v4
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method onDump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:Ljava/util/Set;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 260
    .local v8, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_0

    .line 261
    const-string/jumbo v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overlay package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was added, but couldn\'t be found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 263
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 269
    .local v9, "targetPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 270
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-static {v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    iget v6, v8, Landroid/content/pm/PackageInfo;->overlayPriority:I

    move-object v1, p1

    move v2, p2

    .line 269
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 273
    :try_start_0
    invoke-direct {p0, v9, v8, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v7

    .line 277
    .local v7, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "failed to update settings"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 283
    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "onOverlayPackageChanged called, but only pre-installed overlays supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 295
    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "onOverlayPackageRemoved called, but only pre-installed overlays supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method onOverlayPackageUpgraded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 291
    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "onOverlayPackageUpgraded called, but only pre-installed overlays supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method onOverlayPackageUpgrading(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 287
    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "onOverlayPackageUpgrading called, but only pre-installed overlays supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 184
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    .line 185
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 186
    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 194
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 197
    :cond_0
    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    .line 226
    return-void
.end method

.method onTargetPackageUpgraded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 215
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 218
    :cond_0
    return-void
.end method

.method onTargetPackageUpgrading(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 207
    :cond_0
    return-void
.end method

.method onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    .line 176
    return-void
.end method

.method setEnabled(Ljava/lang/String;ZI)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 322
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v5, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 323
    .local v3, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_0

    .line 324
    return v7

    .line 328
    :cond_0
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 329
    return v7

    .line 333
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 335
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v6, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 336
    .local v4, "targetPackage":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v1

    .line 337
    .local v1, "modified":Z
    invoke-direct {p0, v4, v3, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v5

    or-int/2addr v1, v5

    .line 339
    if-eqz v1, :cond_2

    .line 340
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v6, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_2
    const/4 v5, 0x1

    return v5

    .line 343
    .end local v1    # "modified":Z
    .end local v2    # "oi":Landroid/content/om/OverlayInfo;
    .end local v4    # "targetPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v7
.end method

.method setEnabledExclusive(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 353
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v9, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 354
    .local v7, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_0

    .line 355
    return v11

    .line 359
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 361
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v10, v6, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v9, v10, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 363
    .local v8, "targetPackage":Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p0, v9, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 365
    .local v0, "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v5, 0x0

    .line 368
    .local v5, "modified":Z
    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 369
    const/4 v4, 0x0

    .end local v5    # "modified":Z
    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 370
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    iget-object v2, v9, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 371
    .local v2, "disabledOverlayPackageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v9, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 373
    .local v1, "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_2

    .line 374
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v2, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v9

    or-int/2addr v5, v9

    .line 369
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 378
    :cond_2
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 384
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, p2, v10}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v9

    or-int/2addr v5, v9

    .line 385
    .local v5, "modified":Z
    invoke-direct {p0, v8, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v9

    or-int/2addr v5, v9

    goto :goto_1

    .line 389
    .end local v1    # "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "disabledOverlayPackageName":Ljava/lang/String;
    .end local v5    # "modified":Z
    :cond_3
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v10, 0x1

    invoke-virtual {v9, p1, p2, v10}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v9

    or-int/2addr v5, v9

    .line 390
    .restart local v5    # "modified":Z
    invoke-direct {p0, v8, v7, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v9

    or-int/2addr v5, v9

    .line 392
    if-eqz v5, :cond_4

    .line 393
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v10, v6, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v9, v10, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_4
    return v12

    .line 396
    .end local v0    # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "modified":Z
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    .end local v8    # "targetPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 397
    .local v3, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v11
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    return v2

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 441
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 442
    return v2

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 448
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    return v2

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 461
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 462
    return v2

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 468
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newParentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    return v2

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 421
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 422
    return v2

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 428
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method updateOverlaysForUser(I)Ljava/util/ArrayList;
    .locals 28
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    .line 89
    .local v21, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v26

    .line 90
    .local v26, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v27

    .line 91
    .local v27, "tmpSize":I
    new-instance v22, Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 92
    .local v22, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v27

    if-ge v14, v0, :cond_1

    .line 93
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 94
    .local v11, "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 95
    .local v12, "chunkSize":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_0

    .line 96
    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/om/OverlayInfo;

    .line 97
    .local v17, "oi":Landroid/content/om/OverlayInfo;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 92
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 101
    .end local v11    # "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v12    # "chunkSize":I
    .end local v16    # "j":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v19

    .line 102
    .local v19, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    .line 103
    .local v20, "overlayPackagesSize":I
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v14, v0, :cond_7

    .line 104
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageInfo;

    .line 105
    .local v18, "overlayPackage":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/om/OverlayInfo;

    .line 106
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 109
    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 110
    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    .line 111
    invoke-static/range {v18 .. v18}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    move-object/from16 v0, v18

    iget v10, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    move/from16 v6, p1

    .line 108
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 113
    if-nez v17, :cond_6

    .line 115
    invoke-static/range {v18 .. v18}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:Ljava/util/Set;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 115
    if-eqz v4, :cond_4

    .line 122
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    .line 125
    :cond_4
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    .line 126
    const-string/jumbo v5, "app"

    .line 125
    invoke-static {v4, v5}, Lcom/android/internal/os/RegionalizationEnvironment;->isRegionalizationCarrierOverlayPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    .line 139
    :cond_5
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move/from16 v0, p1

    invoke-interface {v4, v5, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v24

    .line 140
    .local v24, "targetPackage":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v24    # "targetPackage":Landroid/content/pm/PackageInfo;
    :goto_4
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 133
    :cond_6
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 141
    :catch_0
    move-exception v13

    .line 142
    .local v13, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v4, "OverlayManager"

    const-string/jumbo v5, "failed to update settings"

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    goto :goto_4

    .line 152
    .end local v13    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    .end local v18    # "overlayPackage":Landroid/content/pm/PackageInfo;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v23

    .line 153
    .local v23, "storedOverlayInfosSize":I
    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v23

    if-ge v14, v0, :cond_8

    .line 154
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/om/OverlayInfo;

    .line 155
    .restart local v17    # "oi":Landroid/content/om/OverlayInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 157
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 161
    .end local v17    # "oi":Landroid/content/om/OverlayInfo;
    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 162
    .local v15, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 163
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 164
    .local v25, "targetPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-interface {v4, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_9

    .line 165
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 168
    .end local v25    # "targetPackageName":Ljava/lang/String;
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4
.end method
