.class public Landroid/content/BroadcastReceiver$PendingResult;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingResult"
.end annotation


# static fields
.field public static final TYPE_COMPONENT:I = 0x0

.field public static final TYPE_REGISTERED:I = 0x1

.field public static final TYPE_UNREGISTERED:I = 0x2


# instance fields
.field mAbortBroadcast:Z

.field mFinished:Z

.field final mFlags:I

.field final mInitialStickyHint:Z

.field final mOrderedHint:Z

.field mResultCode:I

.field mResultData:Ljava/lang/String;

.field mResultExtras:Landroid/os/Bundle;

.field final mSendingUser:I

.field final mToken:Landroid/os/IBinder;

.field final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Ljava/lang/String;
    .param p3, "resultExtras"    # Landroid/os/Bundle;
    .param p4, "type"    # I
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "userId"    # I
    .param p9, "flags"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 93
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 95
    iput p4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    .line 96
    iput-boolean p5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    .line 97
    iput-boolean p6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    .line 98
    iput-object p7, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    .line 99
    iput p8, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    .line 100
    iput p9, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    .line 101
    return-void
.end method

.method private getAppNameByPID(Landroid/app/IActivityManager;I)Ljava/lang/String;
    .locals 6
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "pid"    # I

    .prologue
    .line 245
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "processInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 246
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p2, :cond_0

    .line 247
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 250
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "processInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get process name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v3, ""

    return-object v3
.end method


# virtual methods
.method public final abortBroadcast()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 192
    return-void
.end method

.method checkSynchronousHint()V
    .locals 3

    .prologue
    .line 311
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 315
    const-string/jumbo v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    .line 314
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 317
    const-string/jumbo v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    return-void
.end method

.method public final clearAbortBroadcast()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 201
    return-void
.end method

.method public final finish()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 208
    iget v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    if-nez v1, :cond_3

    .line 209
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 210
    .local v0, "mgr":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/app/QueuedWork;->hasPendingWork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    new-instance v1, Landroid/content/BroadcastReceiver$PendingResult$1;

    invoke-direct {v1, p0, v0}, Landroid/content/BroadcastReceiver$PendingResult$1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/app/IActivityManager;)V

    invoke-static {v1, v2}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    .line 239
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 229
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_1
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ActivityThread"

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finishing broadcast to component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_0

    .line 233
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    :cond_3
    iget-boolean v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 234
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ActivityThread"

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finishing broadcast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 237
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_0
.end method

.method public final getAbortBroadcast()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    return v0
.end method

.method public final getResultCode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    return v0
.end method

.method public final getResultData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultExtras(Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "makeMap"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 158
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_0

    return-object v0

    .line 159
    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "e":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "e":Landroid/os/Bundle;
    iput-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 160
    :cond_1
    return-object v0
.end method

.method public getSendingUserId()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return v0
.end method

.method public sendFinished(Landroid/app/IActivityManager;)V
    .locals 8
    .param p1, "am"    # Landroid/app/IActivityManager;

    .prologue
    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z

    if-eqz v0, :cond_1

    .line 274
    const-string/jumbo v0, "system"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/content/BroadcastReceiver$PendingResult;->getAppNameByPID(Landroid/app/IActivityManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "sendFinished double invoked, but should not crash system server"

    .line 276
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "sendFinished"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    .line 275
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 277
    return-void

    .line 279
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Broadcast already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFinished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :try_start_3
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 289
    :cond_2
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-eqz v0, :cond_3

    .line 290
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    iget-object v3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 291
    iget-boolean v5, p0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    iget v6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    move-object v0, p1

    .line 290
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    .line 300
    return-void

    .line 295
    :cond_3
    :try_start_4
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    iget v6, p0, Landroid/content/BroadcastReceiver$PendingResult;->mFlags:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 260
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 263
    :cond_0
    return-void
.end method

.method public final setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 170
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 171
    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 173
    return-void
.end method

.method public final setResultCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 110
    iput p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 111
    return-void
.end method

.method public final setResultData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 129
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public final setResultExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->checkSynchronousHint()V

    .line 148
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 149
    return-void
.end method
