.class Lcom/android/server/appwidget/AppWidgetServiceImpl$3;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2054
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v0

    .line 2057
    .local v0, "cb":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChangedAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2061
    :goto_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2062
    return-void

    .line 2058
    :catch_0
    move-exception v1

    .line 2059
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AppWidgetServiceImpl"

    const-string/jumbo v3, "Error calling onDataSetChangedAsync()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2067
    return-void
.end method
