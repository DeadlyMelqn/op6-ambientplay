.class Lcom/android/server/notification/NotificationManagerService$16;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$doit:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$mustHaveFlags:I

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$mustNotHaveFlags:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    iput-boolean p10, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$doit:Z

    iput-object p11, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$channelId:Ljava/lang/String;

    .line 5381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method static synthetic lambda$-com_android_server_notification_NotificationManagerService$16_237452(III)Z
    .locals 2
    .param p0, "mustHaveFlags"    # I
    .param p1, "mustNotHaveFlags"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 5397
    and-int v0, p2, p0

    if-eq v0, p0, :cond_0

    .line 5398
    return v1

    .line 5400
    :cond_0
    and-int v0, p2, p1

    if-eqz v0, :cond_1

    .line 5401
    return v1

    .line 5403
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 5384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_0

    const/4 v8, 0x0

    .line 5385
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    .line 5386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$mustHaveFlags:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$mustNotHaveFlags:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    .line 5385
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 5391
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$doit:Z

    if-nez v1, :cond_1

    .line 5392
    return-void

    .line 5384
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    .local v8, "listenerName":Ljava/lang/String;
    goto :goto_0

    .line 5395
    .end local v8    # "listenerName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5396
    :try_start_0
    new-instance v16, Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA$3;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$mustHaveFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$mustNotHaveFlags:I

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA$3;-><init>(II)V

    .line 5405
    .local v16, "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    .line 5406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$channelId:Ljava/lang/String;

    .line 5407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    move/from16 v20, v0

    .line 5406
    const/4 v14, 0x1

    .line 5407
    const/16 v17, 0x0

    const/16 v19, 0x0

    .line 5408
    const/16 v22, 0x1

    move-object/from16 v21, v8

    .line 5405
    invoke-static/range {v9 .. v22}, Lcom/android/server/notification/NotificationManagerService;->-wrap15(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 5409
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    .line 5410
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$channelId:Ljava/lang/String;

    .line 5411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    move/from16 v18, v0

    .line 5412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    move/from16 v20, v0

    .line 5410
    const/4 v14, 0x1

    .line 5411
    const/16 v17, 0x0

    .line 5412
    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, v8

    .line 5409
    invoke-static/range {v9 .. v22}, Lcom/android/server/notification/NotificationManagerService;->-wrap15(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 5413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get33(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 5415
    return-void

    .line 5395
    .end local v16    # "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method