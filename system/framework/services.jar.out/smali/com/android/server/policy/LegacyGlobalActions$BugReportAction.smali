.class Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;
.super Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugReportAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 421
    const v0, 0x1080381

    const v1, 0x10400ea

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;-><init>(II)V

    .line 422
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 480
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 481
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 479
    const v2, 0x10400e9

    .line 478
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLongPress()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 453
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    return v3

    .line 458
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x125

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 459
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 460
    const/4 v2, 0x0

    .line 459
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return v3

    .line 461
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get8(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;)V

    .line 446
    const-wide/16 v2, 0x1f4

    .line 434
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method
