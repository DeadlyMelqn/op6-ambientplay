.class Lcom/android/settings/dashboard/DashboardAdapter$1;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardAdapter;->-get5(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-get5(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-get5(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->-wrap2(Lcom/android/settings/dashboard/DashboardAdapter;Z)V

    .line 323
    return-void
.end method
