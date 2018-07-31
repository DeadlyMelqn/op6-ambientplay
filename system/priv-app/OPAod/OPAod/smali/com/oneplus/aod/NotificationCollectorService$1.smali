.class Lcom/oneplus/aod/NotificationCollectorService$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "NotificationCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/NotificationCollectorService;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationCollectorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/NotificationCollectorService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    .line 47
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onDreamingStateChanged(I)V

    .line 53
    :try_start_0
    sget v1, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    if-ne p1, v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationCollectorService;->-get4(Lcom/oneplus/aod/NotificationCollectorService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationCollectorService;->-get2(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/service/notification/NotificationListenerService;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v2}, Lcom/oneplus/aod/NotificationCollectorService;->-get0(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/content/Context;

    move-result-object v2

    .line 60
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v4}, Lcom/oneplus/aod/NotificationCollectorService;->-get0(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v5}, Lcom/oneplus/aod/NotificationCollectorService;->-get0(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v4, -0x1

    .line 59
    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 62
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/aod/NotificationCollectorService;->-set0(Lcom/oneplus/aod/NotificationCollectorService;Z)Z

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    sget v1, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    if-ne p1, v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationCollectorService;->-get2(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/service/notification/NotificationListenerService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 65
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/aod/NotificationCollectorService;->-set0(Lcom/oneplus/aod/NotificationCollectorService;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NotificationCollectorService"

    const-string/jumbo v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
