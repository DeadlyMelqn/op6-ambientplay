.class Lcom/oneplus/aod/NotificationCollectorService$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/NotificationCollectorService;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationCollectorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/NotificationCollectorService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    .line 75
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    .prologue
    .line 94
    const-string/jumbo v2, "NotificationCollectorService"

    const-string/jumbo v3, "onListenerConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v2}, Lcom/oneplus/aod/NotificationCollectorService;->-get4(Lcom/oneplus/aod/NotificationCollectorService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string/jumbo v2, "NotificationCollectorService"

    const-string/jumbo v3, "onListenerConnected called but notification listener service was unregistered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationCollectorService$2;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 101
    .local v1, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-nez v1, :cond_1

    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationCollectorService$2;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    .line 103
    .local v0, "currentRanking":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v2, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v2}, Lcom/oneplus/aod/NotificationCollectorService;->-get3(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/NotificationManager;->resetData()V

    .line 104
    iget-object v2, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v2}, Lcom/oneplus/aod/NotificationCollectorService;->-get1(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/aod/NotificationCollectorService$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/oneplus/aod/NotificationCollectorService$2$1;-><init>(Lcom/oneplus/aod/NotificationCollectorService$2;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "NotificationCollectorService"

    const-string/jumbo v1, "onListenerDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 78
    const-string/jumbo v0, "NotificationCollectorService"

    const-string/jumbo v1, "onNotificationPosted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->-get3(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/aod/NotificationManager;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 121
    const-string/jumbo v0, "NotificationCollectorService"

    const-string/jumbo v1, "onNotificationRankingUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->-get1(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/NotificationCollectorService$2$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/NotificationCollectorService$2$2;-><init>(Lcom/oneplus/aod/NotificationCollectorService$2;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 86
    const-string/jumbo v0, "NotificationCollectorService"

    const-string/jumbo v1, "onNotificationRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->-get3(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/aod/NotificationManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 90
    :cond_0
    return-void
.end method
