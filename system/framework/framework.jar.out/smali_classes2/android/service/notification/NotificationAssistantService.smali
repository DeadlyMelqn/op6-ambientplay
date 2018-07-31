.class public abstract Landroid/service/notification/NotificationAssistantService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationAssistantService$MyHandler;,
        Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationAssistantService"

.field private static final TAG:Ljava/lang/String; = "NotificationAssistants"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/service/notification/NotificationAssistantService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Landroid/service/notification/NotificationAssistantService;

    .prologue
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public final adjustNotification(Landroid/service/notification/Adjustment;)V
    .locals 3
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "NotificationAssistants"

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final adjustNotifications(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "NotificationAssistants"

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->attachBaseContext(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/service/notification/NotificationAssistantService$MyHandler;

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationAssistantService$MyHandler;-><init>(Landroid/service/notification/NotificationAssistantService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;-><init>(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;)V

    iput-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    return-object v0
.end method

.method public abstract onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/Adjustment;
.end method

.method public abstract onNotificationSnoozedUntilContext(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end method

.method public final unsnoozeNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "NotificationAssistants"

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
