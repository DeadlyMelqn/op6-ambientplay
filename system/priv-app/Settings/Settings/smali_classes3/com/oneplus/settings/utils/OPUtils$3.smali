.class final Lcom/oneplus/settings/utils/OPUtils$3;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->enablePackageInstaller(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 491
    iget-object v6, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    .line 492
    const-string/jumbo v7, "user"

    .line 491
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 493
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 494
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_0

    .line 495
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x3e7

    if-ne v6, v7, :cond_0

    .line 497
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/settings/utils/OPUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 498
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 499
    new-instance v2, Landroid/content/ComponentName;

    .line 500
    const-string/jumbo v6, "com.google.android.packageinstaller"

    .line 501
    const-string/jumbo v7, "com.android.packageinstaller.PackageInstallerActivity"

    .line 499
    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v2, "o2ComponentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 505
    const/4 v6, 0x1

    .line 506
    const/4 v7, 0x1

    .line 503
    invoke-virtual {v3, v2, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 522
    .end local v2    # "o2ComponentName":Landroid/content/ComponentName;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 509
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    .line 510
    const-string/jumbo v6, "com.android.packageinstaller"

    .line 511
    const-string/jumbo v7, "com.android.packageinstaller.PackageInstallerActivity"

    .line 509
    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .local v1, "h2ComponentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 515
    const/4 v6, 0x1

    .line 516
    const/4 v7, 0x1

    .line 513
    invoke-virtual {v3, v1, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v1    # "h2ComponentName":Landroid/content/ComponentName;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
