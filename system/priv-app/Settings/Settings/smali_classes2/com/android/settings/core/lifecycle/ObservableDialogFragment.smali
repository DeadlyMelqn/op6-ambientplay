.class public Lcom/android/settings/core/lifecycle/ObservableDialogFragment;
.super Landroid/app/DialogFragment;
.source "ObservableDialogFragment.java"


# instance fields
.field protected final mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    .line 27
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 70
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onDestroy()V

    .line 64
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 65
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v1, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 82
    .local v0, "lifecycleHandled":Z
    if-nez v0, :cond_0

    .line 83
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 85
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPause()V

    .line 52
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 53
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onResume()V

    .line 46
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 47
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStart()V

    .line 40
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 41
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStop()V

    .line 58
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 59
    return-void
.end method
