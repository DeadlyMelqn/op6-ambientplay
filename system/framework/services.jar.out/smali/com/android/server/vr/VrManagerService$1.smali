.class Lcom/android/server/vr/VrManagerService$1;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1, p1}, Lcom/android/server/vr/VrManagerService;->-wrap13(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-get6(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-get5(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .end local v0    # "component":Landroid/content/ComponentName;
    :goto_0
    monitor-exit v2

    .line 185
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-get0(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 186
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    if-eqz v1, :cond_1

    .line 187
    :cond_0
    const-string/jumbo v1, "VrManagerService"

    const-string/jumbo v2, "VrListenerSevice has died permanently, leaving system VR mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/vr/VrManagerService;->-wrap21(Lcom/android/server/vr/VrManagerService;Z)V

    .line 191
    :cond_1
    return-void

    .line 180
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-get5(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "component":Landroid/content/ComponentName;
    goto :goto_0

    .line 179
    .local v0, "component":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
