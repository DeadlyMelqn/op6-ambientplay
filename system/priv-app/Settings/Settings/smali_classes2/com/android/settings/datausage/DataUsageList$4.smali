.class Lcom/android/settings/datausage/DataUsageList$4;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageList;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-wrap5(Lcom/android/settings/datausage/DataUsageList;)V

    .line 781
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-get3(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->setInspectRangeChanged()V

    .line 782
    return-void
.end method

.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-get3(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->getLimitBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/datausage/DataUsageList;->-wrap1(Lcom/android/settings/datausage/DataUsageList;J)V

    .line 792
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->-wrap4(Lcom/android/settings/datausage/DataUsageList;)V

    .line 793
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-get3(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->getWarningBytes()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/datausage/DataUsageList;->-wrap2(Lcom/android/settings/datausage/DataUsageList;J)V

    .line 787
    return-void
.end method

.method public requestLimitEdit()V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public requestWarningEdit()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method
