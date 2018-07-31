.class public Lcom/android/settings/core/lifecycle/ObservableFragment;
.super Landroid/app/Fragment;
.source "ObservableFragment.java"


# instance fields
.field private final mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    .line 27
    return-void
.end method


# virtual methods
.method protected getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 95
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onDestroy()V

    .line 88
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v1, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 109
    .local v0, "lifecycleHandled":Z
    if-nez v0, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 112
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPause()V

    .line 81
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 82
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 102
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 103
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onResume()V

    .line 74
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 75
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStart()V

    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 61
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStop()V

    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 68
    return-void
.end method
