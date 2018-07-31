.class Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;
.super Landroid/os/AsyncTask;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/BatteryStats;",
        ">;"
    }
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 1
    .param p1, "item"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;
    .param p2, "helper"    # Lcom/android/internal/os/BatteryStatsHelper;

    .prologue
    .line 550
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 551
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;->mReference:Ljava/lang/ref/WeakReference;

    .line 552
    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 553
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/BatteryStats;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 557
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    .line 558
    .local v2, "powerProfile":Lcom/android/internal/os/PowerProfile;
    const-string/jumbo v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 559
    .local v0, "averagePower":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v3, v0, v4

    if-gez v3, :cond_0

    .line 562
    const/4 v3, 0x0

    return-object v3

    .line 560
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 555
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;->doInBackground([Ljava/lang/Void;)Landroid/os/BatteryStats;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/BatteryStats;)V
    .locals 2
    .param p1, "result"    # Landroid/os/BatteryStats;

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 569
    .local v0, "item":Lcom/android/settings/fuelgauge/PowerUsageSummary;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 570
    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->-wrap1(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/BatteryStats;)V

    .line 572
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 566
    check-cast p1, Landroid/os/BatteryStats;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;->onPostExecute(Landroid/os/BatteryStats;)V

    return-void
.end method
