.class public Lcom/android/systemui/ForegroundServiceControllerImpl;
.super Ljava/lang/Object;
.source "ForegroundServiceControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/ForegroundServiceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    }
.end annotation


# instance fields
.field private final mMutex:Ljava/lang/Object;

.field private final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "importance"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/ForegroundServiceControllerImpl;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    .line 62
    return-void
.end method

.method public isDungeonNeededForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 52
    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .local v0, "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 55
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->isDungeonNeeded()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 52
    .end local v0    # "services":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v0, "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v0, :cond_0

    .line 74
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->setRunningServices([Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 83
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 66
    .end local v0    # "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;I)V
    .locals 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "newImportance"    # I

    .prologue
    .line 90
    iget-object v4, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .line 92
    .local v2, "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    if-nez v2, :cond_0

    .line 93
    new-instance v2, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;

    .end local v2    # "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;-><init>(Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;)V

    .line 94
    .restart local v2    # "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    iget-object v3, p0, Lcom/android/systemui/ForegroundServiceControllerImpl;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 99
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 100
    const-string/jumbo v3, "android.foregroundApps"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "svcs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-wide v6, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v1, v6, v7}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->setRunningServices([Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "svcs":[Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit v4

    .line 111
    return-void

    .line 104
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->removeNotification(Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    .line 106
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;->addNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    .end local v2    # "userServices":Lcom/android/systemui/ForegroundServiceControllerImpl$UserServices;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
