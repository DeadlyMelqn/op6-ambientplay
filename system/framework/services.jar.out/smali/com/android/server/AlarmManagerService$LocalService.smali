.class public final Lcom/android/server/AlarmManagerService$LocalService;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 2477
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDeepSleepMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2488
    :try_start_0
    const-string/jumbo v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update DeepSleepMode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->-set0(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2491
    return-void

    .line 2487
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDeepSleepWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->setDeepSleepWhitelistImpl([I)V

    .line 2485
    return-void
.end method

.method public setDeviceIdleUserWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->setDeviceIdleUserWhitelistImpl([I)V

    .line 2480
    return-void
.end method
