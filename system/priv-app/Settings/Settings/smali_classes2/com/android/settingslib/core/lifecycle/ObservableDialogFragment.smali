.class public Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;
.super Landroid/app/DialogFragment;
.source "ObservableDialogFragment.java"


# instance fields
.field protected final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 30
    invoke-static {}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->createLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 28
    return-void
.end method

.method public static createLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 71
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onDestroy()V

    .line 65
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 83
    .local v0, "lifecycleHandled":Z
    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 86
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPause()V

    .line 53
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 54
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onResume()V

    .line 47
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 48
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStart()V

    .line 41
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 42
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStop()V

    .line 59
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 60
    return-void
.end method
