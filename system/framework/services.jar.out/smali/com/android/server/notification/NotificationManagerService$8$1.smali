.class Lcom/android/server/notification/NotificationManagerService$8$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$8;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$8;

.field final synthetic val$notificationId:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$8;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$8;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->this$1:Lcom/android/server/notification/NotificationManagerService$8;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$notificationId:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$userId:I

    .line 3865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->this$1:Lcom/android/server/notification/NotificationManagerService$8;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3869
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->this$1:Lcom/android/server/notification/NotificationManagerService$8;

    .line 3870
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->this$1:Lcom/android/server/notification/NotificationManagerService$8;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$notificationId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$userId:I

    .line 3869
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService$8;->-wrap0(Lcom/android/server/notification/NotificationManagerService$8;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 3871
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->this$1:Lcom/android/server/notification/NotificationManagerService$8;

    .line 3872
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->this$1:Lcom/android/server/notification/NotificationManagerService$8;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$notificationId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$8$1;->val$userId:I

    .line 3871
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService$8;->-wrap0(Lcom/android/server/notification/NotificationManagerService$8;Ljava/util/ArrayList;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3874
    return-void

    .line 3868
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
