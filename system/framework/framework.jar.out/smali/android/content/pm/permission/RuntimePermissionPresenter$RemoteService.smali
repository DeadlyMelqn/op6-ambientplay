.class final Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteService"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_REVOKE_APP_PERMISSIONS:I = 0x4

.field public static final MSG_UNBIND:I = 0x3

.field private static final UNBIND_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingWork:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    .line 161
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method

.method private scheduleNextMessageIfNeededLocked()V
    .locals 3

    .prologue
    .line 278
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 280
    .local v0, "nextMessage":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->sendMessage(Landroid/os/Message;)Z

    .line 282
    .end local v0    # "nextMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private scheduleUnbind()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 285
    invoke-virtual {p0, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->removeMessages(I)V

    .line 286
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 196
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 272
    :goto_0
    :pswitch_0
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 273
    :try_start_0
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v7

    .line 275
    return-void

    .line 198
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 199
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 200
    .local v3, "packageName":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    .line 201
    .local v1, "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    .line 202
    .local v2, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 204
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 205
    :try_start_1
    iget-object v6, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v6, "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    monitor-exit v7

    .line 207
    if-nez v6, :cond_0

    .line 208
    return-void

    .line 204
    .end local v6    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8

    .line 212
    .restart local v6    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :cond_0
    :try_start_2
    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v8, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;

    invoke-direct {v8, p0, v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;)V

    invoke-direct {v7, v8, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 211
    invoke-interface {v6, v3, v7}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    :goto_1
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleUnbind()V

    goto :goto_0

    .line 236
    :catch_0
    move-exception v5

    .line 237
    .local v5, "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "RuntimePermPresenter"

    const-string/jumbo v8, "Error getting app permissions"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 243
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "callback":Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "re":Landroid/os/RemoteException;
    .end local v6    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :pswitch_2
    iget-object v8, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 244
    :try_start_3
    iget-boolean v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-eqz v7, :cond_1

    .line 245
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 246
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 248
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v8

    goto :goto_0

    .line 243
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 253
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 254
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 255
    .restart local v3    # "packageName":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 256
    .local v4, "permissionName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 258
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 259
    :try_start_4
    iget-object v6, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .restart local v6    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    monitor-exit v7

    .line 261
    if-nez v6, :cond_2

    .line 262
    return-void

    .line 258
    .end local v6    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :catchall_2
    move-exception v8

    monitor-exit v7

    throw v8

    .line 265
    .restart local v6    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :cond_2
    :try_start_5
    invoke-interface {v6, v3, v4}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 266
    :catch_1
    move-exception v5

    .line 267
    .restart local v5    # "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "RuntimePermPresenter"

    const-string/jumbo v8, "Error getting app permissions"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 272
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v5    # "re":Landroid/os/RemoteException;
    .end local v6    # "remoteInstance":Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :catchall_3
    move-exception v8

    monitor-exit v7

    throw v8

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 181
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    invoke-static {p2}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/permission/IRuntimePermissionPresenter;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    .line 183
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 185
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 189
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 192
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public processMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 165
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_0
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-nez v1, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    .line 168
    const-string/jumbo v1, "android.permissionpresenterservice.RuntimePermissionPresenterService"

    .line 167
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    .line 172
    const/4 v3, 0x1

    .line 171
    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    .line 174
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 177
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
