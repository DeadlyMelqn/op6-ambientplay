.class public abstract Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "ObservablePreferenceFragment.java"


# instance fields
.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 31
    return-void
.end method


# virtual methods
.method protected getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 105
    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onDestroy()V

    .line 98
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 99
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 119
    .local v0, "lifecycleHandled":Z
    if-nez v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 122
    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPause()V

    .line 91
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    .line 92
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 112
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onResume()V

    .line 84
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    .line 85
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStart()V

    .line 70
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStart()V

    .line 71
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStop()V

    .line 77
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStop()V

    .line 78
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    return-void
.end method
