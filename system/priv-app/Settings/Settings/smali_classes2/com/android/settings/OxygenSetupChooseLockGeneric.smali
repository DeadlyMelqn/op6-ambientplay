.class public Lcom/android/settings/OxygenSetupChooseLockGeneric;
.super Lcom/android/settings/OxygenChooseLockGeneric;
.source "OxygenSetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;
    }
.end annotation


# static fields
.field private static final KEY_UNLOCK_SET_DO_LATER:Ljava/lang/String; = "unlock_set_do_later"


# instance fields
.field private mFinishOnPause:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OxygenSetupChooseLockGeneric;->mFinishOnPause:Z

    .line 52
    return-void
.end method

.method private setAppropriateStatusBar()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    const/16 v0, 0x2500

    .line 294
    .local v0, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 295
    return-void

    .line 291
    .end local v0    # "systemUiVisibility":I
    :cond_0
    const/16 v0, 0x500

    .line 290
    .restart local v0    # "systemUiVisibility":I
    goto :goto_0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v14/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const-class v0, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getOxygenTheme(Landroid/content/Intent;)I

    move-result p2

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/OxygenChooseLockGeneric;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/OxygenChooseLockGeneric;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.google.android.setupwizard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/OxygenSetupChooseLockGeneric;->mFinishOnPause:Z

    .line 86
    :goto_0
    const v2, 0x7f0a032f

    invoke-virtual {p0, v2}, Lcom/android/settings/OxygenSetupChooseLockGeneric;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 87
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric;->setAppropriateStatusBar()V

    .line 92
    return-void

    .line 83
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/OxygenSetupChooseLockGeneric;->mFinishOnPause:Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/OxygenChooseLockGeneric;->onPause()V

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/OxygenSetupChooseLockGeneric;->mFinishOnPause:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric;->finish()V

    .line 101
    :cond_0
    return-void
.end method
