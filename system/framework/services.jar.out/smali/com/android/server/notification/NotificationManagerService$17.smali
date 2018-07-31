.class Lcom/android/server/notification/NotificationManagerService$17;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$includeCurrentProfiles:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingPid:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    iput-boolean p7, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    .line 5497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method static synthetic lambda$-com_android_server_notification_NotificationManagerService$17_242626(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 5507
    and-int/lit8 v0, p0, 0x22

    if-eqz v0, :cond_0

    .line 5509
    return v1

    .line 5511
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 5500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5502
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_0

    const/4 v8, 0x0

    .line 5503
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingUid:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingPid:I

    .line 5504
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5503
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 5506
    sget-object v16, Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA;->$INST$0:Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA;

    .line 5514
    .local v16, "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingUid:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingPid:I

    .line 5516
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    move/from16 v20, v0

    .line 5515
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 5516
    const/16 v19, 0x1

    .line 5517
    const/16 v22, 0x1

    move-object/from16 v21, v8

    .line 5514
    invoke-static/range {v9 .. v22}, Lcom/android/server/notification/NotificationManagerService;->-wrap15(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 5518
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingUid:I

    .line 5519
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingPid:I

    .line 5520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    move/from16 v18, v0

    .line 5521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    move/from16 v20, v0

    .line 5519
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 5520
    const/16 v19, 0x1

    .line 5521
    const/16 v22, 0x0

    move-object/from16 v21, v8

    .line 5518
    invoke-static/range {v9 .. v22}, Lcom/android/server/notification/NotificationManagerService;->-wrap15(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 5522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get33(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v23

    .line 5524
    return-void

    .line 5502
    .end local v16    # "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .local v8, "listenerName":Ljava/lang/String;
    goto/16 :goto_0

    .line 5500
    .end local v8    # "listenerName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v23

    throw v1
.end method
