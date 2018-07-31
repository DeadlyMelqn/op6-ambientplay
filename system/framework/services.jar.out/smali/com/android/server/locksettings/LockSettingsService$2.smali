.class Lcom/android/server/locksettings/LockSettingsService$2;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 555
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v6, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-static {v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->-wrap1(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 557
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->-wrap2(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V

    .line 561
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/locksettings/LockSettingsService;->-get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 562
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 563
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 564
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->-wrap0(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    .line 567
    .local v1, "isSecure":Z
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 569
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 570
    .local v4, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/locksettings/LockSettingsService;->-get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 571
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/locksettings/LockSettingsService;->-get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 570
    if-eqz v5, :cond_0

    .line 572
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v5, v4}, Lcom/android/server/locksettings/LockSettingsService;->-wrap6(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V

    .line 562
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    .end local v1    # "isSecure":Z
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/locksettings/LockSettingsService;->-get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 578
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v6, p0, Lcom/android/server/locksettings/LockSettingsService$2;->val$userId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    .line 580
    :cond_2
    return-void
.end method
