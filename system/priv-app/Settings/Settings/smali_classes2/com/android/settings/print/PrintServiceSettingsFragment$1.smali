.class Lcom/android/settings/print/PrintServiceSettingsFragment$1;
.super Landroid/database/DataSetObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/print/PrintServiceSettingsFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    .line 85
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1
    return-void
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-get3(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v0

    .line 99
    .local v0, "unfilteredItemCount":I
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-get1(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_1

    if-lez v0, :cond_1

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-set0(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I

    .line 104
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-get1(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->invalidateOptionsMenuIfNeeded()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-wrap1(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    .line 90
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->invalidateOptionsMenuIfNeeded()V

    .line 95
    return-void
.end method