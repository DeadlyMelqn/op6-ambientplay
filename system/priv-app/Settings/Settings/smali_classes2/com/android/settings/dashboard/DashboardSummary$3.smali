.class Lcom/android/settings/dashboard/DashboardSummary$3;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummary;->onConditionsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardSummary;->-get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 524
    return-void
.end method
