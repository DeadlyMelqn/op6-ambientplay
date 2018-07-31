.class public Lcom/android/keyguard/plugin/ClockCtrl;
.super Ljava/lang/Object;
.source "ClockCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;,
        Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/keyguard/plugin/ClockCtrl;


# instance fields
.field private mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

.field private mListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mScreenON:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/plugin/ClockCtrl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/plugin/ClockCtrl;
    .param p1, "isTimeUp"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/plugin/ClockCtrl;->handleNotifySchedule(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dispatchTimeChanged()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

    invoke-interface {v0}, Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;->onTimeChanged()V

    .line 125
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/keyguard/plugin/ClockCtrl;
    .locals 2

    .prologue
    const-class v1, Lcom/android/keyguard/plugin/ClockCtrl;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/android/keyguard/plugin/ClockCtrl;->mInstance:Lcom/android/keyguard/plugin/ClockCtrl;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/keyguard/plugin/ClockCtrl;

    invoke-direct {v0}, Lcom/android/keyguard/plugin/ClockCtrl;-><init>()V

    sput-object v0, Lcom/android/keyguard/plugin/ClockCtrl;->mInstance:Lcom/android/keyguard/plugin/ClockCtrl;

    .line 34
    :cond_0
    sget-object v0, Lcom/android/keyguard/plugin/ClockCtrl;->mInstance:Lcom/android/keyguard/plugin/ClockCtrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleNotifySchedule(Z)V
    .locals 12
    .param p1, "isTimeUp"    # Z

    .prologue
    const-wide/32 v10, 0xea60

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 87
    .local v4, "now":J
    div-long v6, v4, v10

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    mul-long/2addr v6, v10

    sub-long v0, v6, v4

    .line 88
    .local v0, "delay":J
    const-string/jumbo v3, "ClockCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " schedule next: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v3, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-eqz v3, :cond_0

    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 91
    .local v2, "msg":Landroid/os/Message;
    const/high16 v3, 0x20000

    iput v3, v2, Landroid/os/Message;->what:I

    .line 92
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 93
    iget-object v3, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 95
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    if-eqz p1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/android/keyguard/plugin/ClockCtrl;->dispatchTimeChanged()V

    .line 99
    :cond_1
    return-void
.end method

.method private startUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/high16 v3, 0x20000

    .line 102
    const-string/jumbo v0, "ClockCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-boolean v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->sendEmptyMessage(I)Z

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/plugin/ClockCtrl;->dispatchTimeChanged()V

    .line 111
    :cond_1
    return-void
.end method

.method private stopUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string/jumbo v0, "ClockCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->removeMessages(I)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public getNonUILooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mNonUiLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ClockCtrl thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "handerTread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mNonUiLooper:Landroid/os/Looper;

    .line 135
    .end local v0    # "handerTread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mNonUiLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    .line 62
    const-string/jumbo v0, "ScreenOFF"

    invoke-direct {p0, v0}, Lcom/android/keyguard/plugin/ClockCtrl;->stopUpdate(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    .line 57
    const-string/jumbo v0, "ScreenON"

    invoke-direct {p0, v0}, Lcom/android/keyguard/plugin/ClockCtrl;->startUpdate(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onStartCtrl(Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;Landroid/content/Context;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;
    .param p2, "sysContext"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

    .line 39
    iget-object v1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    invoke-virtual {p0}, Lcom/android/keyguard/plugin/ClockCtrl;->getNonUILooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;-><init>(Lcom/android/keyguard/plugin/ClockCtrl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mBGHandler:Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;

    .line 41
    if-eqz p2, :cond_0

    .line 42
    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 43
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/plugin/ClockCtrl;->mScreenON:Z

    .line 46
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const-string/jumbo v1, "startCtrl"

    invoke-direct {p0, v1}, Lcom/android/keyguard/plugin/ClockCtrl;->startUpdate(Ljava/lang/String;)V

    .line 47
    return-void
.end method
