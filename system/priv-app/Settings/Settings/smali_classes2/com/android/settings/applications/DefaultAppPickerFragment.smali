.class public abstract Lcom/android/settings/applications/DefaultAppPickerFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "DefaultAppPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;
    }
.end annotation


# instance fields
.field protected mPm:Lcom/android/settings/applications/PackageManagerWrapper;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/DefaultAppPickerFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/DefaultAppPickerFragment;
    .param p1, "selectedKey"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DefaultAppPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/widget/RadioButtonPreference;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    .param p4, "defaultKey"    # Ljava/lang/String;
    .param p5, "systemDefaultKey"    # Ljava/lang/String;

    .prologue
    .line 68
    instance-of v0, p3, Lcom/android/settings/applications/DefaultAppInfo;

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    invoke-static {p5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const v0, 0x7f0f1061

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    .line 76
    .end local p3    # "info":Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    :cond_1
    :goto_0
    return-void

    .restart local p3    # "info":Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    :cond_2
    move-object v0, p3

    .line 73
    check-cast v0, Lcom/android/settings/applications/DefaultAppInfo;

    iget-object v0, v0, Lcom/android/settings/applications/DefaultAppInfo;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    check-cast p3, Lcom/android/settings/applications/DefaultAppInfo;

    .end local p3    # "info":Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    iget-object v0, p3, Lcom/android/settings/applications/DefaultAppInfo;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1
    .param p1, "selectedKey"    # Ljava/lang/String;
    .param p2, "confirmationMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    new-instance v0, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;-><init>()V

    .line 81
    .local v0, "fragment":Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->init(Lcom/android/settings/applications/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 82
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAppPickerFragment;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 49
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 6
    .param p1, "selected"    # Lcom/android/settings/widget/RadioButtonPreference;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "selectedKey":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/DefaultAppPickerFragment;->getCandidate(Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/DefaultAppPickerFragment;->getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 55
    .local v1, "confirmationMessage":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/applications/DefaultAppPickerFragment;->newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;

    move-result-object v2

    .line 61
    .local v2, "fragment":Landroid/app/DialogFragment;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "DefaultAppConfirm"

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
