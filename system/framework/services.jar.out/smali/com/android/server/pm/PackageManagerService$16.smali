.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$hasAccessInstantApps:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;IIILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$callingUid:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$hasAccessInstantApps:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    .line 21899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 21901
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v5, :cond_3

    const/4 v3, 0x0

    .line 21902
    :goto_0
    const/4 v0, 0x1

    .line 21903
    .local v0, "doClearData":Z
    if-eqz v3, :cond_0

    .line 21905
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$callingUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    .line 21906
    .local v4, "targetIsInstantApp":Z
    if-eqz v4, :cond_4

    .line 21907
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$hasAccessInstantApps:I

    if-nez v5, :cond_5

    const/4 v0, 0x1

    .line 21909
    .end local v4    # "targetIsInstantApp":Z
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 21910
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    .line 21911
    const/4 v2, 0x3

    .line 21915
    .local v2, "flags":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v9, 0x103

    invoke-static {v5, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    .line 21916
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    const/16 v9, 0x203

    invoke-static {v5, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 21918
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    invoke-static {v5, v6, v7, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap30(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 21920
    .end local v2    # "flags":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v5, :cond_2

    .line 21922
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21927
    :cond_2
    :goto_2
    return-void

    .line 21901
    .end local v0    # "doClearData":Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 21906
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "doClearData":Z
    .restart local v4    # "targetIsInstantApp":Z
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 21907
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 21910
    .end local v4    # "targetIsInstantApp":Z
    .restart local v2    # "flags":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 21923
    .end local v2    # "flags":I
    :catch_0
    move-exception v1

    .line 21924
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PackageManager"

    const-string/jumbo v6, "Observer no longer exists."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
