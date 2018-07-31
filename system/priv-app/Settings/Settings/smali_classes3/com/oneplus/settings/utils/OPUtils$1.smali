.class final Lcom/oneplus/settings/utils/OPUtils$1;
.super Ljava/lang/Object;
.source "OPUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPUtils;->restoreBackupEntranceInLauncher(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPUtils$1;->val$context:Landroid/content/Context;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 424
    iget-object v5, p0, Lcom/oneplus/settings/utils/OPUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 425
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "com.oneplus.backuprestore"

    .line 426
    .local v2, "pkgName":Ljava/lang/String;
    const-string/jumbo v1, "com.oneplus.backuprestore.activity.BootActivity"

    .line 440
    .local v1, "mainActivityName":Ljava/lang/String;
    const-string/jumbo v5, "oneplus_backuprestore_disabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 442
    :try_start_0
    const-string/jumbo v5, "OPUtils"

    const-string/jumbo v6, "restore entry"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v5, p0, Lcom/oneplus/settings/utils/OPUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 445
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v6, 0x1

    .line 447
    const/4 v7, 0x1

    .line 444
    invoke-virtual {v3, v5, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 448
    const-string/jumbo v5, "oneplus_backuprestore_disabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
