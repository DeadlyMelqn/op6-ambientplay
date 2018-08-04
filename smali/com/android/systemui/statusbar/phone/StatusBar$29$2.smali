.class Lcom/android/systemui/statusbar/phone/StatusBar$29$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$29;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$29;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$29;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 6642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6645
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap10(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/Notification;)V

    .line 6646
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 6647
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6648
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 6653
    .local v1, "isUpdate":Z
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v3, :cond_2

    .line 6654
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    .line 6653
    if-eqz v3, :cond_2

    .line 6660
    if-eqz v1, :cond_1

    .line 6661
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 6665
    :goto_1
    return-void

    .line 6648
    .end local v1    # "isUpdate":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isUpdate":Z
    goto :goto_0

    .line 6663
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    .line 6668
    :cond_2
    if-eqz v1, :cond_3

    .line 6669
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 6676
    :goto_2
    return-void

    .line 6671
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6673
    :catch_0
    move-exception v0

    .line 6674
    .local v0, "e":Lcom/android/systemui/statusbar/notification/InflationException;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$29;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_2
.end method
