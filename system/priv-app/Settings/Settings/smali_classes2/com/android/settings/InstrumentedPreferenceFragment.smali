.class public abstract Lcom/android/settings/InstrumentedPreferenceFragment;
.super Lcom/android/settings/core/lifecycle/ObservablePreferenceFragment;
.source "InstrumentedPreferenceFragment.java"


# instance fields
.field protected mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/lifecycle/ObservablePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method protected final getPrefContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/core/lifecycle/ObservablePreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 63
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/InstrumentedPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 48
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/settings/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/settings/core/lifecycle/ObservablePreferenceFragment;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 70
    return-void
.end method
