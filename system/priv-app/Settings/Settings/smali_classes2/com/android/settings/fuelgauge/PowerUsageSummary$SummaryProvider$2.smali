.class Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;->this$1:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;->this$1:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->-get0(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;)V

    invoke-static {v0, v1}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V

    .line 911
    return-void
.end method
