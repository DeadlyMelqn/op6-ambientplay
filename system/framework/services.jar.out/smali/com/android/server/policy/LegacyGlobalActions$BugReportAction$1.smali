.class Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    iget-object v1, v1, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    .line 440
    const/16 v2, 0x124

    .line 439
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 441
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 442
    const/4 v2, 0x1

    .line 441
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
