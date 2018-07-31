.class public final Lcom/android/server/timezone/TimeZoneUpdateIdler;
.super Landroid/app/job/JobService;
.source "TimeZoneUpdateIdler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "timezone.TimeZoneUpdateIdler"

.field private static final TIME_ZONE_UPDATE_IDLE_JOB_ID:I = 0x19ca201


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minimumDelayMillis"    # J

    .prologue
    const/4 v5, 0x1

    .line 71
    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 75
    .local v2, "jobScheduler":Landroid/app/job/JobScheduler;
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/timezone/TimeZoneUpdateIdler;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "idlerJobServiceName":Landroid/content/ComponentName;
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    const v4, 0x19ca201

    invoke-direct {v3, v4, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 85
    .local v1, "jobInfoBuilder":Landroid/app/job/JobInfo$Builder;
    const-string/jumbo v3, "timezone.TimeZoneUpdateIdler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "schedule() called: minimumDelayMillis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 87
    return-void
.end method

.method public static unschedule(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 97
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    const-string/jumbo v1, "timezone.TimeZoneUpdateIdler"

    const-string/jumbo v2, "unschedule() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const v1, 0x19ca201

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 43
    const-class v1, Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezone/RulesManagerService;

    .line 45
    .local v0, "rulesManagerService":Lcom/android/server/timezone/RulesManagerService;
    const-string/jumbo v1, "timezone.TimeZoneUpdateIdler"

    const-string/jumbo v2, "onStartJob() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Lcom/android/server/timezone/RulesManagerService;->notifyIdle()V

    .line 52
    const/4 v1, 0x0

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 59
    .local v0, "reschedule":Z
    :goto_0
    const-string/jumbo v1, "timezone.TimeZoneUpdateIdler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopJob() called: Reschedule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v0

    .line 58
    .end local v0    # "reschedule":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "reschedule":Z
    goto :goto_0
.end method
