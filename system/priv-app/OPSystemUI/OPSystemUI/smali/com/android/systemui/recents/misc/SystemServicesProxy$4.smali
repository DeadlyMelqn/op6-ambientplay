.class Lcom/android/systemui/recents/misc/SystemServicesProxy$4;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;->killAllRunningProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$lockState:Lcom/android/systemui/recents/LockStateController;

.field final synthetic val$processes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Ljava/util/List;Lcom/android/systemui/recents/LockStateController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->val$processes:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->val$lockState:Lcom/android/systemui/recents/LockStateController;

    .line 1590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    .line 1594
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-wrap2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 1598
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 1599
    .local v0, "current":I
    if-nez v0, :cond_3

    const/4 v1, 0x1

    .line 1601
    .local v1, "isOwner":Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->val$processes:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1602
    .local v2, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1603
    .local v6, "userId":I
    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v10, v9

    move v7, v8

    :goto_1
    if-ge v7, v10, :cond_0

    aget-object v4, v9, v7

    .line 1605
    .local v4, "pkg":Ljava/lang/String;
    if-eq v0, v6, :cond_1

    .line 1606
    if-eqz v1, :cond_2

    const/16 v11, 0x3e7

    if-ne v6, v11, :cond_2

    .line 1614
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v11, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-wrap0(Lcom/android/systemui/recents/misc/SystemServicesProxy;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1603
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1599
    .end local v1    # "isOwner":Z
    .end local v2    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "userId":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isOwner":Z
    goto :goto_0

    .line 1619
    .restart local v2    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3    # "p$iterator":Ljava/util/Iterator;
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v6    # "userId":I
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1620
    .local v5, "pkgWithUid":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->val$lockState:Lcom/android/systemui/recents/LockStateController;

    invoke-virtual {v11, v5}, Lcom/android/systemui/recents/LockStateController;->isTaskLocked(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1621
    const-string/jumbo v11, "SystemServicesProxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Package is locked:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1624
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$4;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v11, v4, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-wrap1(Lcom/android/systemui/recents/misc/SystemServicesProxy;Ljava/lang/String;I)V

    goto :goto_2

    .line 1627
    .end local v2    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "pkgWithUid":Ljava/lang/String;
    .end local v6    # "userId":I
    :cond_6
    return-void
.end method
