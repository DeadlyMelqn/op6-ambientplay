.class Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;
.super Landroid/os/Handler;
.source "OnePlusGpsNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusGpsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsNotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusGpsNotification;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusGpsNotification;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusGpsNotification;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 227
    sget-boolean v0, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v0, v0, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GpsNotificationHander handleMessage mCurrentGpsPackageList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    iget-object v3, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v3, v3, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    const-string/jumbo v3, " msg.what ="

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    iget v3, p1, Landroid/os/Message;->what:I

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 233
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v0}, Lcom/android/server/OnePlusGpsNotification;->-get1(Lcom/android/server/OnePlusGpsNotification;)Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;

    move-result-object v0

    const v1, 0xdac0

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/OnePlusGpsNotification;->-set1(Lcom/android/server/OnePlusGpsNotification;J)J

    .line 237
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v0, v4}, Lcom/android/server/OnePlusGpsNotification;->-set0(Lcom/android/server/OnePlusGpsNotification;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-virtual {v0}, Lcom/android/server/OnePlusGpsNotification;->notifyPackageNotification()V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v0, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v0, v0, Lcom/android/server/OnePlusGpsNotification;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/OnePlusGpsNotification;->-set0(Lcom/android/server/OnePlusGpsNotification;Z)Z

    .line 246
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/OnePlusGpsNotification;->-set1(Lcom/android/server/OnePlusGpsNotification;J)J

    .line 247
    iget-object v0, p0, Lcom/android/server/OnePlusGpsNotification$GpsNotificationHandler;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v0}, Lcom/android/server/OnePlusGpsNotification;->-get2(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/NotificationManager;

    move-result-object v0

    const v2, 0x50b0040

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 242
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 233
    :pswitch_data_0
    .packed-switch 0xdac0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
