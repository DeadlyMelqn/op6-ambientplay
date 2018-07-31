.class public Lcom/android/settings/core/lifecycle/ObservableActivity;
.super Landroid/app/Activity;
.source "ObservableActivity.java"


# instance fields
.field private final mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    .line 28
    return-void
.end method


# virtual methods
.method protected getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 46
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 83
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onDestroy()V

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v1, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 100
    .local v0, "lifecycleHandled":Z
    if-nez v0, :cond_0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 103
    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPause()V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 65
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 92
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onResume()V

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStart()V

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 53
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStop()V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 71
    return-void
.end method
