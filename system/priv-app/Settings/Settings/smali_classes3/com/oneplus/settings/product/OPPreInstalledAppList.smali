.class public Lcom/oneplus/settings/product/OPPreInstalledAppList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPPreInstalledAppList.java"


# static fields
.field public static sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

.field public static sOneplusH2PreIinstalledAppsFunction:[Ljava/lang/String;

.field public static sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;


# instance fields
.field private final ONEPLUS_PRE_INSTALL_APP_CATEGORY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 25
    const-string/jumbo v0, "oneplus_pre_install_app_category"

    iput-object v0, p0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->ONEPLUS_PRE_INSTALL_APP_CATEGORY:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string/jumbo v0, "OP_FEATURE_SETTINGS_QUICKPAY_ANIM_FOR_ENCHILADA"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsFunction:[Ljava/lang/String;

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsFunction:[Ljava/lang/String;

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    const v4, 0x7f080065

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/product/OPPreInstalledAppList;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/settings/product/OPPreInstalledAppList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 45
    .local v2, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string/jumbo v4, "oneplus_pre_install_app_category"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    .line 46
    .local v3, "screenCategory":Landroid/support/v7/preference/PreferenceCategory;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 47
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/product/OPPreInstalledAppList;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    sget-object v4, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsFunction:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/oneplus/settings/product/OPPreInstalledAppList;->sOneplusH2PreIinstalledAppsCompany:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method
