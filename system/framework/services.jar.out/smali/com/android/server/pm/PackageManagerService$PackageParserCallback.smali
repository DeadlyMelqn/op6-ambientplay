.class Lcom/android/server/pm/PackageManagerService$PackageParserCallback;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageParser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageParserCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;

    .prologue
    .line 990
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 995
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getStaticOverlayPackagesLocked(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 919
    .local p1, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v1, 0x0

    .line 920
    .local v1, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v3, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 921
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Package;->mIsStaticOverlay:Z

    if-eqz v4, :cond_0

    .line 922
    if-nez v1, :cond_1

    .line 923
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 925
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 928
    .end local v2    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_2
    if-eqz v1, :cond_3

    .line 929
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageParserCallback;)V

    .line 934
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 936
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3
    return-object v1
.end method

.method getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 984
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPathsLocked(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final getStaticOverlayPathsLocked(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 941
    const-string/jumbo v7, "android"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 944
    return-object v6

    .line 947
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPackagesLocked(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 948
    .local v3, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 949
    :cond_1
    return-object v6

    .line 951
    :cond_2
    const/4 v4, 0x0

    .line 952
    .local v4, "overlayPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "overlayPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "overlayPackage$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 953
    .local v1, "overlayPackage":Landroid/content/pm/PackageParser$Package;
    if-nez p3, :cond_4

    .line 954
    if-nez v4, :cond_3

    .line 955
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 957
    :cond_3
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 967
    :cond_4
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 969
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v9

    .line 968
    invoke-static {v9}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v9

    .line 967
    invoke-virtual {v7, p3, v8, v9}, Lcom/android/server/pm/Installer;->idmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 970
    if-nez v4, :cond_5

    .line 971
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "overlayPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v5

    .line 973
    .end local v5    # "overlayPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string/jumbo v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to generate idmap for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 976
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 975
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 979
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v1    # "overlayPackage":Landroid/content/pm/PackageParser$Package;
    :cond_6
    if-nez v4, :cond_7

    :goto_1
    return-object v6

    :cond_7
    new-array v6, v10, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_1
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
