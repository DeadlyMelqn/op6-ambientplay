.class Lcom/android/systemui/statusbar/phone/StatusBar$25$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$25;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$25;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$25;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 6414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6417
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap10(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/Notification;)V

    .line 6418
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 6419
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6420
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 6425
    .local v1, "isUpdate":Z
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v3, :cond_2

    .line 6426
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    .line 6425
    if-eqz v3, :cond_2

    .line 6432
    if-eqz v1, :cond_1

    .line 6433
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 6437
    :goto_1
    return-void

    .line 6420
    .end local v1    # "isUpdate":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isUpdate":Z
    goto :goto_0

    .line 6435
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    .line 6440
    :cond_2
    if-eqz v1, :cond_3

    .line 6441
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 6448
    :goto_2
    return-void

    .line 6443
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6445
    :catch_0
    move-exception v0

    .line 6446
    .local v0, "e":Lcom/android/systemui/statusbar/notification/InflationException;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$25;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$25$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_2
.end method
