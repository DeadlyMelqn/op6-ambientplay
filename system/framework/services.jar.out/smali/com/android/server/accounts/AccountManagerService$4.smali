.class Lcom/android/server/accounts/AccountManagerService$4;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 355
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 360
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 361
    .local v4, "uid":I
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v6}, Lcom/android/server/accounts/AccountManagerService;->-get0(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;

    move-result-object v6

    .line 362
    const/16 v7, 0x3e

    .line 361
    invoke-virtual {v6, v7, v4, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    .line 363
    .local v1, "mode":I
    if-nez v1, :cond_0

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 366
    .local v2, "identity":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v7, 0x1

    invoke-static {v6, p2, v4, v7}, Lcom/android/server/accounts/AccountManagerService;->-wrap12(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    .end local v1    # "mode":I
    .end local v2    # "identity":J
    .end local v4    # "uid":I
    .end local v5    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 367
    .restart local v1    # "mode":I
    .restart local v2    # "identity":J
    .restart local v4    # "uid":I
    .restart local v5    # "userId":I
    :catchall_0
    move-exception v6

    .line 368
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 371
    .end local v1    # "mode":I
    .end local v2    # "identity":J
    .end local v4    # "uid":I
    .end local v5    # "userId":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method