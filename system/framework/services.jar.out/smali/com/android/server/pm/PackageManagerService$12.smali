.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$canViewInstantApps:Z

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$internalPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZIII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$canViewInstantApps:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    iput p6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:I

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    .line 20317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 20319
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v8, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20321
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 20322
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x1

    .line 20323
    .local v1, "doDeletePackage":Z
    if-eqz v3, :cond_0

    .line 20325
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$callingUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    .line 20326
    .local v5, "targetIsInstantApp":Z
    if-eqz v5, :cond_1

    .line 20327
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$canViewInstantApps:Z

    .line 20329
    .end local v1    # "doDeletePackage":Z
    .end local v5    # "targetIsInstantApp":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    .line 20330
    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteAllUsers:Z

    if-nez v8, :cond_2

    .line 20331
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:I

    .line 20332
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v12, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    .line 20331
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v4

    .line 20362
    .local v4, "returnCode":I
    :goto_1
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v4, v10}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20366
    :goto_2
    return-void

    .line 20326
    .end local v4    # "returnCode":I
    .restart local v1    # "doDeletePackage":Z
    .restart local v5    # "targetIsInstantApp":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 20334
    .end local v1    # "doDeletePackage":Z
    .end local v5    # "targetIsInstantApp":Z
    :cond_2
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 20335
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    .line 20334
    invoke-static {v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap16(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v0

    .line 20337
    .local v0, "blockUninstallUserIds":[I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 20338
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:I

    .line 20339
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v12, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    .line 20338
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v4

    .restart local v4    # "returnCode":I
    goto :goto_1

    .line 20342
    .end local v4    # "returnCode":I
    :cond_3
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deleteFlags:I

    and-int/lit8 v6, v8, -0x3

    .line 20343
    .local v6, "userFlags":I
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$12;->val$users:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_3
    if-ge v8, v10, :cond_5

    aget v7, v9, v8

    .line 20344
    .local v7, "userId":I
    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v11

    if-nez v11, :cond_4

    .line 20345
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$12;->val$internalPackageName:Ljava/lang/String;

    iget v13, p0, Lcom/android/server/pm/PackageManagerService$12;->val$versionCode:I

    invoke-virtual {v11, v12, v13, v7, v6}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v4

    .line 20347
    .restart local v4    # "returnCode":I
    const/4 v11, 0x1

    if-eq v4, v11, :cond_4

    .line 20348
    const-string/jumbo v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Package delete failed for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 20349
    const-string/jumbo v13, ", returnCode "

    .line 20348
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20343
    .end local v4    # "returnCode":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 20355
    .end local v7    # "userId":I
    :cond_5
    const/4 v4, -0x4

    .restart local v4    # "returnCode":I
    goto :goto_1

    .line 20359
    .end local v0    # "blockUninstallUserIds":[I
    .end local v4    # "returnCode":I
    .end local v6    # "userFlags":I
    :cond_6
    const/4 v4, -0x1

    .restart local v4    # "returnCode":I
    goto :goto_1

    .line 20363
    :catch_0
    move-exception v2

    .line 20364
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "PackageManager"

    const-string/jumbo v9, "Observer no longer exists."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
