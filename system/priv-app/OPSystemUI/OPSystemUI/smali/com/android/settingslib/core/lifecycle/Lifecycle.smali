.class public Lcom/android/settingslib/core/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# instance fields
.field protected final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 63
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 64
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnAttach;

    if-eqz v3, :cond_0

    .line 65
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnAttach;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/events/OnAttach;->onAttach(Landroid/content/Context;)V

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 72
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 73
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnCreate;

    if-eqz v3, :cond_0

    .line 74
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnCreate;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/events/OnCreate;->onCreate(Landroid/os/Bundle;)V

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 144
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 145
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;

    if-eqz v3, :cond_0

    .line 146
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1, p1, p2}, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 135
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 136
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    if-eqz v3, :cond_0

    .line 137
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;->onDestroy()V

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 163
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;

    if-eqz v3, :cond_0

    .line 164
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const/4 v3, 0x1

    return v3

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 109
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    if-eqz v3, :cond_0

    .line 110
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/events/OnPause;->onPause()V

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 154
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;

    if-eqz v3, :cond_0

    .line 155
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 100
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    if-eqz v3, :cond_0

    .line 101
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/events/OnResume;->onResume()V

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 118
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;

    if-eqz v3, :cond_0

    .line 119
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 82
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    if-eqz v3, :cond_0

    .line 83
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/events/OnStart;->onStart()V

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 127
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    if-eqz v3, :cond_0

    .line 128
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1}, Lcom/android/settingslib/core/lifecycle/events/OnStop;->onStop()V

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 90
    iget-object v3, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 91
    .local v1, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v1, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;

    if-eqz v3, :cond_0

    .line 92
    check-cast v1, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;

    .end local v1    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    invoke-interface {v1, p1}, Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method
