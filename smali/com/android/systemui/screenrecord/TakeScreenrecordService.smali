.class public Lcom/android/systemui/screenrecord/TakeScreenrecordService;
.super Landroid/app/Service;
.source "TakeScreenrecordService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;
    }
.end annotation


# static fields
.field private static mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/screenrecord/TakeScreenrecordService;Ljava/lang/Runnable;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/TakeScreenrecordService;
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "mode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->toggleScreenrecord(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;-><init>(Lcom/android/systemui/screenrecord/TakeScreenrecordService;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private startScreenrecord(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "mode"    # I

    .prologue
    .line 115
    sget-object v0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .line 118
    :cond_0
    sget-object v0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->takeScreenrecord(Ljava/lang/Runnable;I)V

    .line 119
    return-void
.end method

.method private stopScreenrecord()V
    .locals 4

    .prologue
    .line 122
    sget-object v0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    sget-object v0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->stopScreenrecord()V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_touches"

    .line 129
    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 128
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 130
    return-void
.end method

.method private toggleScreenrecord(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "mode"    # I

    .prologue
    .line 133
    sget-object v0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->isRecording()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->startScreenrecord(Ljava/lang/Runnable;I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->stopScreenrecord()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, -0x2

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->stopScreenrecord()V

    .line 111
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toggle_pointer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 104
    const-string/jumbo v2, "show_touches"

    const/4 v3, 0x0

    .line 103
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 105
    .local v0, "currentStatus":I
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    .line 106
    rsub-int/lit8 v3, v0, 0x1

    .line 105
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 107
    sget-object v1, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->mScreenrecord:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->updateNotification()V

    goto :goto_0
.end method
