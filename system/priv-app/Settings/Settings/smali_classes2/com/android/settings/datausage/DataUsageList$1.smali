.class Lcom/android/settings/datausage/DataUsageList$1;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-wrap0(Lcom/android/settings/datausage/DataUsageList;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageList;->-get10(Lcom/android/settings/datausage/DataUsageList;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v10

    .line 678
    .local v10, "section":[J
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-wrap0(Lcom/android/settings/datausage/DataUsageList;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    const/4 v4, 0x1

    aget-wide v4, v10, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    .line 686
    .local v0, "cycle":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-get5(Lcom/android/settings/datausage/DataUsageList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-get3(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-static {}, Lcom/android/settings/datausage/DataUsageList;->-get6()J

    move-result-wide v6

    invoke-static {}, Lcom/android/settings/datausage/DataUsageList;->-get7()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/android/settings/datausage/ChartDataUsageDeprecatedPreference;->setVisibleRange(JJJJ)V

    .line 692
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-wrap5(Lcom/android/settings/datausage/DataUsageList;)V

    .line 693
    return-void

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageList;->-get1(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setVisibleRange(JJ)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
