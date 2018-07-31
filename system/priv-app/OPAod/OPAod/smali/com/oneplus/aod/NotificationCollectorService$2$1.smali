.class Lcom/oneplus/aod/NotificationCollectorService$2$1;
.super Ljava/lang/Object;
.source "NotificationCollectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/NotificationCollectorService$2;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationCollectorService$2;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/aod/NotificationCollectorService$2;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

    iput-object p2, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 107
    iget-object v2, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 108
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

    iget-object v4, v4, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v4}, Lcom/oneplus/aod/NotificationCollectorService;->-get3(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Lcom/oneplus/aod/NotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/oneplus/aod/NotificationData$Entry;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-void
.end method
