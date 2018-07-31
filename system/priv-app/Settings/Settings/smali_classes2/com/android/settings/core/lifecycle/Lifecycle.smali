.class public Lcom/android/settings/core/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# instance fields
.field protected final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/lifecycle/LifecycleObserver;",
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

    iput-object v0, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settings/core/lifecycle/LifecycleObserver;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;, "TT;"
    invoke-static {}, Lcom/android/settings/utils/ThreadUtils;->ensureMainThread()V

    .line 57
    iget-object v0, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-object p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 63
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnAttach;

    if-eqz v2, :cond_0

    .line 64
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnAttach;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnAttach;->onAttach(Landroid/content/Context;)V

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 71
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnCreate;

    if-eqz v2, :cond_0

    .line 72
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnCreate;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnCreate;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 135
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnCreateOptionsMenu;

    if-eqz v2, :cond_0

    .line 136
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnCreateOptionsMenu;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0, p1, p2}, Lcom/android/settings/core/lifecycle/events/OnCreateOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 127
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnDestroy;

    if-eqz v2, :cond_0

    .line 128
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnDestroy;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnDestroy;->onDestroy()V

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 151
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnOptionsItemSelected;

    if-eqz v2, :cond_0

    .line 152
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnOptionsItemSelected;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnOptionsItemSelected;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const/4 v2, 0x1

    return v2

    .line 157
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 103
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnPause;

    if-eqz v2, :cond_0

    .line 104
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnPause;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnPause;->onPause()V

    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 143
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnPrepareOptionsMenu;

    if-eqz v2, :cond_0

    .line 144
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnPrepareOptionsMenu;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnPrepareOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    .line 147
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 95
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnResume;

    if-eqz v2, :cond_0

    .line 96
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnResume;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnResume;->onResume()V

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 111
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;

    if-eqz v2, :cond_0

    .line 112
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 79
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnStart;

    if-eqz v2, :cond_0

    .line 80
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnStart;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnStart;->onStart()V

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 119
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/OnStop;

    if-eqz v2, :cond_0

    .line 120
    check-cast v0, Lcom/android/settings/core/lifecycle/events/OnStop;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0}, Lcom/android/settings/core/lifecycle/events/OnStop;->onStop()V

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/settings/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 87
    .local v0, "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    instance-of v2, v0, Lcom/android/settings/core/lifecycle/events/SetPreferenceScreen;

    if-eqz v2, :cond_0

    .line 88
    check-cast v0, Lcom/android/settings/core/lifecycle/events/SetPreferenceScreen;

    .end local v0    # "observer":Lcom/android/settings/core/lifecycle/LifecycleObserver;
    invoke-interface {v0, p1}, Lcom/android/settings/core/lifecycle/events/SetPreferenceScreen;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method
