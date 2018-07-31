.class Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 873
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 874
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    .line 875
    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 876
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mHandler:Landroid/os/Handler;

    .line 877
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "-this2"    # Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V

    .line 912
    const-wide/16 v2, 0x12c

    .line 901
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 913
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 881
    if-eqz p1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V

    invoke-static {v1, v2}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V

    .line 890
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 891
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 897
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
