.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# static fields
.field public static final EXTRA_SCRIPT_URI:Ljava/lang/String; = "scriptUri"

.field private static final TAG:Ljava/lang/String; = "SetupWizardUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyImmersiveFlags(Landroid/app/Dialog;)V
    .locals 0
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    .line 99
    return-void
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3
    .param p0, "fromIntent"    # Landroid/content/Intent;
    .param p1, "toIntent"    # Landroid/content/Intent;

    .prologue
    .line 102
    const-string/jumbo v0, "theme"

    .line 103
    const-string/jumbo v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string/jumbo v0, "useImmersiveMode"

    .line 105
    const-string/jumbo v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public static getOxygenSettingTheme()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f1003af

    return v0
.end method

.method public static getOxygenTheme(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const v0, 0x7f1003ac

    return v0

    .line 76
    :cond_0
    const v0, 0x7f1003ad

    return v0
.end method

.method public static getSettingTheme()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f1003ae

    return v0
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const v0, 0x7f1003aa

    return v0

    .line 49
    :cond_0
    const v0, 0x7f1003ab

    return v0
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const v0, 0x7f10042f

    return v0

    .line 58
    :cond_0
    const v0, 0x7f10042e

    return v0
.end method

.method public static isUsingWizardManager(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scriptUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setImmersiveMode(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    const-string/jumbo v2, "useImmersiveMode"

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    .local v0, "useImmersiveMode":Z
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    .line 95
    :cond_0
    return-void
.end method
