.class final Lcom/android/server/timezone/IntentHelperImpl;
.super Ljava/lang/Object;
.source "IntentHelperImpl.java"

# interfaces
.implements Lcom/android/server/timezone/IntentHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/IntentHelperImpl$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "timezone.IntentHelperImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUpdaterAppPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/timezone/PackageTracker;)V
    .locals 4
    .param p1, "updaterAppPackageName"    # Ljava/lang/String;
    .param p2, "dataAppPackageName"    # Ljava/lang/String;
    .param p3, "packageTracker"    # Lcom/android/server/timezone/PackageTracker;

    .prologue
    const/4 v3, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/server/timezone/IntentHelperImpl;->mUpdaterAppPackageName:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "packageIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v0, p2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 64
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/android/server/timezone/IntentHelperImpl$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lcom/android/server/timezone/IntentHelperImpl$Receiver;-><init>(Lcom/android/server/timezone/PackageTracker;Lcom/android/server/timezone/IntentHelperImpl$Receiver;)V

    .line 79
    .local v1, "packageUpdateReceiver":Lcom/android/server/timezone/IntentHelperImpl$Receiver;
    iget-object v2, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public declared-synchronized scheduleReliabilityTrigger(J)V
    .locals 1
    .param p1, "minimumDelayMillis"    # J

    .prologue
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/timezone/TimeZoneUpdateIdler;->schedule(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 93
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendTriggerUpdateCheck(Lcom/android/server/timezone/CheckToken;)V
    .locals 3
    .param p1, "checkToken"    # Lcom/android/server/timezone/CheckToken;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/timezone/IntentHelperImpl;->mUpdaterAppPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/timezone/CheckToken;->toByteArray()[B

    move-result-object v2

    .line 85
    invoke-static {v0, v1, v2}, Landroid/app/timezone/RulesUpdaterContract;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 87
    invoke-virtual {p1}, Lcom/android/server/timezone/CheckToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneTriggerCheck(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public declared-synchronized unscheduleReliabilityTrigger()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/IntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/timezone/TimeZoneUpdateIdler;->unschedule(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 98
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
