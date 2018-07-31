.class Lcom/android/server/display/NightDisplayService$CustomAutoMode;
.super Lcom/android/server/display/NightDisplayService$AutoMode;
.source "NightDisplayService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Ljava/time/LocalTime;

.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private mStartTime:Ljava/time/LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService$AutoMode;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/NightDisplayService$AutoMode;)V

    .line 486
    invoke-virtual {p1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 487
    new-instance v0, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;-><init>(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 493
    return-void
.end method

.method private updateActivated()V
    .locals 5

    .prologue
    .line 496
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 497
    .local v2, "now":Ljava/time/LocalDateTime;
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v4, v2}, Lcom/android/server/display/NightDisplayService;->getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 498
    .local v3, "start":Ljava/time/LocalDateTime;
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v4, v3}, Lcom/android/server/display/NightDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 499
    .local v1, "end":Ljava/time/LocalDateTime;
    invoke-virtual {v2, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    .line 501
    .local v0, "activate":Z
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    if-eqz v4, :cond_1

    .line 503
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v3}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    .line 503
    if-eqz v4, :cond_1

    .line 505
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    .line 509
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get7(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get7(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v0, :cond_3

    .line 510
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 513
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get7(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 514
    return-void
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 8
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/time/LocalDateTime;

    .prologue
    const/4 v6, 0x0

    .line 517
    if-eqz p1, :cond_0

    .line 518
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/display/NightDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 520
    .local v7, "next":Ljava/time/LocalDateTime;
    :goto_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 521
    .local v2, "millis":J
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v4, "NightDisplayService"

    const/4 v1, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 523
    .end local v2    # "millis":J
    .end local v7    # "next":Ljava/time/LocalDateTime;
    :cond_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/display/NightDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v7

    .restart local v7    # "next":Ljava/time/LocalDateTime;
    goto :goto_0
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 551
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 552
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .prologue
    .line 570
    const-string/jumbo v0, "NightDisplayService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    .line 572
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 565
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    .line 566
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 558
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    .line 559
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 527
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 532
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 534
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 537
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    .line 538
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 546
    return-void
.end method
