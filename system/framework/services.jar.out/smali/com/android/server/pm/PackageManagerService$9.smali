.class Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 16760
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v10, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16762
    new-instance v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-direct {v7}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    .line 16763
    .local v7, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    invoke-virtual {v7, v10}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 16764
    const/4 v10, -0x1

    iput v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 16765
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 16766
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 16767
    iget v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 16768
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 16769
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 16770
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-static {v10, v12, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap35(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 16772
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v11, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v12, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 16778
    :cond_0
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    if-eqz v10, :cond_8

    .line 16779
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v10, :cond_7

    const/4 v9, 0x1

    .line 16780
    .local v9, "update":Z
    :goto_0
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v10, :cond_9

    const/4 v5, 0x0

    .line 16781
    .local v5, "flags":I
    :goto_1
    if-nez v9, :cond_b

    .line 16782
    const v10, 0x8000

    and-int/2addr v10, v5

    if-eqz v10, :cond_a

    const/4 v2, 0x1

    .line 16788
    .local v2, "doRestore":Z
    :goto_2
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v10, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v10, :cond_1

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v11, 0x1

    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 16789
    :cond_1
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v8, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v10, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 16791
    .local v8, "token":I
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v1, v10, v7}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 16792
    .local v1, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16793
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "+ starting restore round-trip "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16795
    :cond_2
    iget v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    if-eqz v2, :cond_4

    .line 16801
    const-string/jumbo v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 16800
    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 16802
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_d

    .line 16803
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "token "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 16804
    const-string/jumbo v12, " to BM for possible restore"

    .line 16803
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16805
    :cond_3
    const-string/jumbo v10, "restore"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v10, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16808
    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v0, v10}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 16809
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v10, v8}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16825
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_4
    :goto_3
    if-nez v2, :cond_6

    .line 16828
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No restore - queue post-install for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16830
    :cond_5
    const-string/jumbo v10, "postInstall"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v10, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16832
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v8, v12}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 16833
    .local v6, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 16835
    .end local v6    # "msg":Landroid/os/Message;
    :cond_6
    return-void

    .line 16769
    .end local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2    # "doRestore":Z
    .end local v5    # "flags":I
    .end local v8    # "token":I
    .end local v9    # "update":Z
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 16779
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "update":Z
    goto/16 :goto_0

    .line 16778
    .end local v9    # "update":Z
    :cond_8
    const/4 v9, 0x0

    .restart local v9    # "update":Z
    goto/16 :goto_0

    .line 16780
    :cond_9
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    .restart local v5    # "flags":I
    goto/16 :goto_1

    .line 16782
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "doRestore":Z
    goto/16 :goto_2

    .line 16781
    .end local v2    # "doRestore":Z
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "doRestore":Z
    goto/16 :goto_2

    .line 16811
    .restart local v0    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v8    # "token":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 16815
    :catch_0
    move-exception v4

    .line 16816
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "PackageManager"

    const-string/jumbo v11, "Exception trying to enqueue restore"

    invoke-static {v10, v11, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16817
    const/4 v2, 0x0

    goto :goto_3

    .line 16820
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d
    const-string/jumbo v10, "PackageManager"

    const-string/jumbo v11, "Backup Manager not found!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16821
    const/4 v2, 0x0

    goto :goto_3

    .line 16813
    :catch_1
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method