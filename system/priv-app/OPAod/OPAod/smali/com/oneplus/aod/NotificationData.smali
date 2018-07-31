.class public Lcom/oneplus/aod/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/NotificationData$1;,
        Lcom/oneplus/aod/NotificationData$Entry;,
        Lcom/oneplus/aod/NotificationData$Environment;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

.field private final mRankingComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oneplus/aod/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

.field private final mSortedAndFiltered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/aod/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/NotificationData;)Lcom/oneplus/aod/NotificationData$Environment;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationData;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationData;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-static {p0}, Lcom/oneplus/aod/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/oneplus/aod/NotificationData$Environment;)V
    .locals 1
    .param p1, "environment"    # Lcom/oneplus/aod/NotificationData$Environment;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "OPNotificationData"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 264
    new-instance v0, Lcom/oneplus/aod/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationData$1;-><init>(Lcom/oneplus/aod/NotificationData;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    .line 42
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    .line 43
    return-void
.end method

.method private static isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "sbnPackage":Ljava/lang/String;
    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 252
    const-string/jumbo v0, "android"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.allowDuringSetup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/oneplus/aod/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 204
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 205
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public filterAndSort()Z
    .locals 6

    .prologue
    .line 403
    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 404
    const-string/jumbo v4, "OPNotificationData"

    const-string/jumbo v5, "filterAndSort"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v5, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 406
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 407
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 408
    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/NotificationData$Entry;

    .line 409
    .local v1, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v3, v1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 411
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0, v3}, Lcom/oneplus/aod/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_0
    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 405
    .end local v0    # "N":I
    .end local v1    # "entry":Lcom/oneplus/aod/NotificationData$Entry;
    .end local v2    # "i":I
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    monitor-exit v5

    .line 418
    iget-object v4, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/oneplus/aod/NotificationData;->mRankingComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 419
    const/4 v4, 0x0

    return v4
.end method

.method public get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/NotificationData$Entry;

    return-object v0
.end method

.method public getActiveNotifications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/aod/NotificationData$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mSortedAndFiltered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImportance(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 356
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    return v0

    .line 358
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 364
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    return-object v1
.end method

.method public getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 259
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result v0

    return v0

    .line 261
    :cond_0
    const/16 v0, -0x3e8

    return v0
.end method

.method public isAmbient(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 330
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    return v0

    .line 332
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 376
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isLock()Z

    move-result v0

    return v0

    .line 378
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/oneplus/aod/NotificationData$Entry;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v3, 0x0

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "removed":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "removed":Lcom/oneplus/aod/NotificationData$Entry;
    check-cast v0, Lcom/oneplus/aod/NotificationData$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "removed":Lcom/oneplus/aod/NotificationData$Entry;
    monitor-exit v2

    .line 212
    if-nez v0, :cond_0

    return-object v3

    .line 209
    .end local v0    # "removed":Lcom/oneplus/aod/NotificationData$Entry;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 213
    .restart local v0    # "removed":Lcom/oneplus/aod/NotificationData$Entry;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 214
    return-object v0
.end method

.method public setForeGroundServiceController(Lcom/oneplus/aod/ForegroundServiceControllerImpl;)V
    .locals 0
    .param p1, "service"    # Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    .line 47
    return-void
.end method

.method shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v0}, Lcom/oneplus/aod/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-static {p1}, Lcom/oneplus/aod/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 218
    :goto_0
    if-nez v0, :cond_1

    .line 220
    const-string/jumbo v0, "OPNotificationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldFilterOut: provisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v3}, Lcom/oneplus/aod/NotificationData$Environment;->isDeviceProvisioned()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", showNotificationEvenIfUnprovisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/oneplus/aod/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return v1

    :cond_0
    move v0, v1

    .line 218
    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v0, p1}, Lcom/oneplus/aod/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    const-string/jumbo v0, "OPNotificationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldFilterOut: isNotificationForCurrentProfiles ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v3, p1}, Lcom/oneplus/aod/NotificationData$Environment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v0}, Lcom/oneplus/aod/NotificationData$Environment;->onSecureLockScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->visibility:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 231
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(I)Z

    move-result v0

    .line 230
    if-nez v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v0

    .line 229
    if-eqz v0, :cond_4

    .line 233
    :cond_3
    const-string/jumbo v0, "OPNotificationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldFilterOut: onSecureLockScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-interface {v3}, Lcom/oneplus/aod/NotificationData$Environment;->onSecureLockScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    const-string/jumbo v3, ", visibility = "

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->visibility:I

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    const-string/jumbo v3, ", shouldHideNotifications: "

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(I)Z

    move-result v3

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    const-string/jumbo v3, ", "

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/oneplus/aod/NotificationData;->mEnvironment:Lcom/oneplus/aod/NotificationData$Environment;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oneplus/aod/NotificationData$Environment;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v3

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v1

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->isDungeonNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/NotificationData;->mService:Lcom/oneplus/aod/ForegroundServiceControllerImpl;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/ForegroundServiceControllerImpl;->isDungeonNeededForUser(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 241
    const-string/jumbo v0, "OPNotificationData"

    const-string/jumbo v2, "shouldFilterOut: foreground-service disclosure for a user that does not need to show one"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v1

    .line 245
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSuppressScreenOff(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 336
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1, p1, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 338
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 341
    :cond_1
    return v0
.end method

.method public shouldSuppressScreenOn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 345
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1, p1, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 347
    iget-object v1, p0, Lcom/oneplus/aod/NotificationData;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 350
    :cond_1
    return v0
.end method

.method public updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationData;->updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 371
    return-void
.end method

.method public updateRankingAndSort(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 383
    if-eqz p1, :cond_2

    .line 384
    iput-object p1, p0, Lcom/oneplus/aod/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 385
    iget-object v6, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 386
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 387
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 388
    iget-object v5, p0, Lcom/oneplus/aod/NotificationData;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/NotificationData$Entry;

    .line 389
    .local v1, "entry":Lcom/oneplus/aod/NotificationData$Entry;
    iget-object v5, v1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 390
    .local v3, "oldSbn":Landroid/service/notification/StatusBarNotification;
    iget-object v5, v1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/oneplus/aod/NotificationData;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "overrideGroupKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 392
    iget-object v5, v1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v4}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "entry":Lcom/oneplus/aod/NotificationData$Entry;
    .end local v3    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "overrideGroupKey":Ljava/lang/String;
    :cond_1
    monitor-exit v6

    .line 399
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationData;->filterAndSort()Z

    .line 400
    return-void

    .line 385
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
