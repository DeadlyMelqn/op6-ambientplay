.class Lcom/android/systemui/statusbar/phone/StatusBar$26$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$26;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$26;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$26;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$26;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$26;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 7151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 7154
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 7156
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$26;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v5, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7154
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7157
    :catch_0
    move-exception v0

    .line 7158
    .local v0, "e":Lcom/android/systemui/statusbar/notification/InflationException;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$26;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_1

    .line 7161
    .end local v0    # "e":Lcom/android/systemui/statusbar/notification/InflationException;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-void
.end method
