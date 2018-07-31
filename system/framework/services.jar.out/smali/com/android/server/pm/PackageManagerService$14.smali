.class Lcom/android/server/pm/PackageManagerService$14;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$filterApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$14;->val$filterApp:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    .line 21605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 21607
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v4, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21609
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$filterApp:Z

    if-nez v4, :cond_7

    .line 21610
    const/4 v2, 0x0

    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    .line 21611
    const-string/jumbo v7, "clearApplicationUserData"

    .line 21610
    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v2

    .line 21612
    .local v2, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 21613
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .local v3, "succeeded":Z
    :try_start_2
    monitor-exit v6

    .line 21615
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap30(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 21616
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 21617
    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get8(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v4

    .line 21618
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$14;->val$userId:I

    .line 21617
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 21620
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    throw v5

    .line 21612
    .end local v3    # "succeeded":Z
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v6

    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 21620
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :catch_0
    move-exception v4

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_1
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_1
    :goto_2
    if-eqz v5, :cond_3

    throw v5

    .line 21616
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :catchall_2
    move-exception v4

    :try_start_9
    monitor-exit v6

    throw v4
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 21620
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :catchall_3
    move-exception v4

    goto :goto_1

    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :catch_2
    move-exception v6

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    if-eq v5, v6, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v4

    .line 21621
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :cond_4
    if-eqz v3, :cond_5

    .line 21624
    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 21623
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 21625
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_5

    .line 21626
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 21632
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v2    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local v3    # "succeeded":Z
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v4, :cond_6

    .line 21634
    :try_start_a
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$14;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$14;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    .line 21639
    :cond_6
    :goto_4
    return-void

    .line 21630
    :cond_7
    const/4 v3, 0x0

    .local v3, "succeeded":Z
    goto :goto_3

    .line 21635
    .end local v3    # "succeeded":Z
    :catch_3
    move-exception v1

    .line 21636
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
