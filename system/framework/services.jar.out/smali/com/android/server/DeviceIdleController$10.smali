.class Lcom/android/server/DeviceIdleController$10;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceIdleController;->ifReportLocked(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;

.field final synthetic val$levelDrop:I

.field final synthetic val$mA:F


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    iput p2, p0, Lcom/android/server/DeviceIdleController$10;->val$levelDrop:I

    iput p3, p0, Lcom/android/server/DeviceIdleController$10;->val$mA:F

    .line 2791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2794
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2795
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/DeviceIdleController;->-set1(Lcom/android/server/DeviceIdleController;Z)Z

    .line 2796
    invoke-static {}, Lcom/android/server/DeviceIdleController;->-get0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/DeviceIdleController;->-get1()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[opbugreportlite] start to diagnose, now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get27(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2799
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get27(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    iget v4, p0, Lcom/android/server/DeviceIdleController$10;->val$levelDrop:I

    iget v5, p0, Lcom/android/server/DeviceIdleController$10;->val$mA:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IF)V

    .line 2800
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get27(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2807
    :cond_2
    :goto_0
    return-void

    .line 2802
    :catch_0
    move-exception v0

    .line 2803
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2804
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got exception while snapshot of end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
