.class public Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.source "ToggleSelectToSpeakPreferenceFragmentForSetupWizard.java"


# instance fields
.field private mToggleSwitchWasInitiallyChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x173

    return v0
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    .line 32
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    if-eq v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    .line 44
    const/16 v3, 0x331

    .line 43
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 48
    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onStop()V

    .line 49
    return-void
.end method
