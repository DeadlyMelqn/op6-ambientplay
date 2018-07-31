.class Lcom/android/server/locksettings/LockSettingsService$1;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 584
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 587
    const-string/jumbo v12, "android.intent.action.USER_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 589
    const-string/jumbo v12, "android.intent.extra.user_handle"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 590
    .local v9, "userHandle":I
    if-lez v9, :cond_0

    .line 591
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v13, 0x1

    invoke-static {v12, v9, v13}, Lcom/android/server/locksettings/LockSettingsService;->-wrap5(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    .line 593
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 594
    .local v3, "ks":Landroid/security/KeyStore;
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v12}, Lcom/android/server/locksettings/LockSettingsService;->-get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 595
    .local v5, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_2

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    .line 596
    .local v4, "parentHandle":I
    :goto_0
    invoke-virtual {v3, v9, v4}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 630
    .end local v3    # "ks":Landroid/security/KeyStore;
    .end local v4    # "parentHandle":I
    .end local v5    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "userHandle":I
    :cond_1
    :goto_1
    return-void

    .line 595
    .restart local v3    # "ks":Landroid/security/KeyStore;
    .restart local v5    # "parentInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "userHandle":I
    :cond_2
    const/4 v4, -0x1

    .restart local v4    # "parentHandle":I
    goto :goto_0

    .line 597
    .end local v3    # "ks":Landroid/security/KeyStore;
    .end local v4    # "parentHandle":I
    .end local v5    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "userHandle":I
    :cond_3
    const-string/jumbo v12, "android.intent.action.USER_STARTING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 598
    const-string/jumbo v12, "android.intent.extra.user_handle"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 599
    .restart local v9    # "userHandle":I
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v12, v12, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v12, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_1

    .line 600
    .end local v9    # "userHandle":I
    :cond_4
    const-string/jumbo v12, "android.intent.action.USER_REMOVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 601
    const-string/jumbo v12, "android.intent.extra.user_handle"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 602
    .restart local v9    # "userHandle":I
    if-lez v9, :cond_1

    .line 603
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v13, 0x0

    invoke-static {v12, v9, v13}, Lcom/android/server/locksettings/LockSettingsService;->-wrap5(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    goto :goto_1

    .line 606
    .end local v9    # "userHandle":I
    :cond_5
    const-string/jumbo v12, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 607
    const-string/jumbo v12, "android.intent.extra.UID"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 608
    .local v8, "uid":I
    const-string/jumbo v12, "android.intent.extra.user_handle"

    .line 609
    const/16 v13, -0x2710

    .line 608
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 610
    .local v11, "userId":I
    const-string/jumbo v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ACTION_PACKAGE_DATA_CLEARED"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", userId ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v12, 0x3e8

    if-ne v8, v12, :cond_1

    if-nez v11, :cond_1

    .line 613
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v12}, Lcom/android/server/locksettings/LockSettingsService;->-get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 614
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_1

    .line 615
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 616
    .local v6, "profile":Landroid/content/pm/UserInfo;
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v13, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v13}, Lcom/android/server/locksettings/LockSettingsService;->-wrap0(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    .line 617
    .local v2, "isSecure":Z
    if-eqz v2, :cond_6

    iget v12, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 618
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 619
    .local v10, "userHandle":Landroid/os/UserHandle;
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v12}, Lcom/android/server/locksettings/LockSettingsService;->-get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 620
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v12, v12, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v13, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 621
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v13, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v13}, Lcom/android/server/locksettings/LockSettingsService;->-wrap4(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 622
    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v13, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    .line 614
    .end local v10    # "userHandle":Landroid/os/UserHandle;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
