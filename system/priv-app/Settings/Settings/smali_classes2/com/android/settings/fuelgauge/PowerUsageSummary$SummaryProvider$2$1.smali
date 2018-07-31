.class Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2$1;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/settingslib/BatteryInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2$1;->this$2:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBatteryInfoLoaded(Lcom/android/settingslib/BatteryInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/settingslib/BatteryInfo;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2$1;->this$2:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;->this$1:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->-get1(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2$1;->this$2:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;->this$1:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    iget-object v2, p1, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 909
    return-void
.end method
