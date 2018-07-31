.class public Lcom/android/settings/OxygenSetupChooseLockPattern;
.super Lcom/android/settings/OxygenChooseLockPattern;
.source "OxygenSetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OxygenSetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockPattern;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "challenge"    # J

    .prologue
    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 55
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/settings/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/OxygenSetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 48
    invoke-static {p0, p1, p2, v1}, Lcom/android/settings/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/OxygenSetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requirePassword"    # Z
    .param p2, "confirmCredentials"    # Z

    .prologue
    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 41
    invoke-static {p0, p1, p2, v1}, Lcom/android/settings/OxygenChooseLockPattern;->createIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;

    move-result-object v0

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/OxygenSetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method

.method private setAppropriateStatusBar()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/16 v0, 0x2500

    .line 107
    .local v0, "systemUiVisibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 108
    return-void

    .line 104
    .end local v0    # "systemUiVisibility":I
    :cond_0
    const/16 v0, 0x500

    .line 103
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
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const-class v0, Lcom/android/settings/OxygenSetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/android/settings/OxygenSetupChooseLockPattern$SetupChooseLockPatternFragment;

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
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getOxygenTheme(Landroid/content/Intent;)I

    move-result p2

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/OxygenChooseLockPattern;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/OxygenChooseLockPattern;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/OxygenSetupChooseLockPattern;->setAppropriateStatusBar()V

    .line 92
    return-void
.end method
