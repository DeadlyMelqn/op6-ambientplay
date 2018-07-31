.class public Lcom/oneplus/settings/OPDefaultHomeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPDefaultHomeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final NET_ONEPLUS_H2LAUNCHER:Ljava/lang/String; = "net.oneplus.h2launcher"

.field private static final NET_ONEPLUS_LAUNCHER:Ljava/lang/String; = "net.oneplus.launcher"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAllHomeComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDefaultHome:Landroid/content/ComponentName;

.field private mHomeActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHomeComponentsPreferenceKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeFilter:Landroid/content/IntentFilter;

.field private mRoot:Landroid/support/v7/preference/PreferenceScreen;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    const-string/jumbo v0, "OPDefaultHomeSettings"

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mAllHomeComponents:Ljava/util/ArrayList;

    .line 55
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeComponentsPreferenceKeyMap:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "OPDefaultHomeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceStopPackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return-void
.end method

.method private hasManagedProfile()Z
    .locals 6

    .prologue
    .line 145
    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 146
    .local v3, "userManager":Landroid/os/UserManager;
    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 148
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    const/4 v4, 0x1

    return v4

    .line 151
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v4, 0x0

    .line 156
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 157
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPDefaultHomeSettings;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 158
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method private resetDefaultHome(Landroid/support/v7/preference/Preference;)Z
    .locals 15
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeComponentsPreferenceKeyMap:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 177
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 178
    const-string/jumbo v11, "OPDefaultHomeSettings"

    const-string/jumbo v12, "set default home component error ,component is null ."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v11, 0x0

    return v11

    .line 181
    :cond_0
    iget-object v11, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mAllHomeComponents:Ljava/util/ArrayList;

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    .line 182
    .local v0, "arr":[Landroid/content/ComponentName;
    sget-object v11, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v11}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const/high16 v13, 0x100000

    invoke-virtual {v11, v12, v13, v0, v1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 184
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    const/4 v14, 0x1

    invoke-interface {v11, v12, v14, v13}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    iget-object v11, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeComponentsPreferenceKeyMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 191
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 192
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 193
    .local v9, "preKey":Ljava/lang/String;
    iget-object v11, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v11, v9}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;

    .line 194
    .local v8, "pf":Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setChecked(Z)V

    goto :goto_1

    .line 187
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "pf":Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;
    .end local v9    # "preKey":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 186
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v10, p1

    .line 196
    check-cast v10, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;

    .line 197
    .local v10, "thisPf":Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setChecked(Z)V

    .line 200
    :try_start_1
    iget-object v11, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mCurrentDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "lastPkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDefaultHomeSettings;->refreshHomeOptions()V

    .line 202
    iget-object v11, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mCurrentDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 203
    invoke-direct {p0, v7}, Lcom/oneplus/settings/OPDefaultHomeSettings;->forceStopPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 210
    .end local v7    # "lastPkgName":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v11, 0x1

    return v11

    .line 205
    :catch_2
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "OPDefaultHomeSettings"

    const-string/jumbo v12, "kill old default launcher maybe not success."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    .line 164
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->pm:Landroid/content/pm/PackageManager;

    .line 65
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mActivityManager:Landroid/app/ActivityManager;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDefaultHomeSettings;->refreshHomeOptions()V

    .line 70
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 168
    instance-of v0, p1, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPDefaultHomeSettings;->resetDefaultHome(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    const v12, 0x7f080054

    invoke-virtual {p0, v12}, Lcom/oneplus/settings/OPDefaultHomeSettings;->addPreferencesFromResource(I)V

    .line 80
    const-string/jumbo v12, "preference_divider_line"

    invoke-virtual {p0, v12}, Lcom/oneplus/settings/OPDefaultHomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    .line 81
    .local v4, "headerMargin":Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;
    const/4 v12, -0x1

    invoke-virtual {v4, v12}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;->setOrder(I)V

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDefaultHomeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iput-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    .line 83
    sget-object v12, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, "myPkg":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mAllHomeComponents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_5

    .line 85
    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mAllHomeComponents:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 86
    .local v5, "homeComponent":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 87
    const-string/jumbo v12, "OPDefaultHomeSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "homeComponent pkg equal with mypkg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 98
    .local v1, "appInfo":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_1

    .line 99
    const-string/jumbo v12, "OPDefaultHomeSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "appInfo is null for current homeComponent pkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 103
    .local v3, "appPkg":Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 104
    .local v2, "appName":Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v12}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    new-instance v10, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDefaultHomeSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;-><init>(Landroid/content/Context;)V

    .line 106
    .local v10, "preference":Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "key_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "key":Ljava/lang/String;
    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeComponentsPreferenceKeyMap:Ljava/util/Map;

    invoke-interface {v12, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v10, v8}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setKey(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v10, v0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v10, v2}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mCurrentDefaultHome:Landroid/content/ComponentName;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mCurrentDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 112
    :goto_2
    invoke-virtual {v10, v7}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setChecked(Z)V

    .line 113
    invoke-virtual {v10, p0}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    const-string/jumbo v12, "net.oneplus.launcher"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 115
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setOrder(I)V

    .line 119
    :cond_2
    :goto_3
    iget-object v12, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v12, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-result v11

    .line 120
    .local v11, "ret":Z
    const-string/jumbo v12, "OPDefaultHomeSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mRoot.addPreference:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",mRoot="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 111
    .end local v11    # "ret":Z
    :cond_3
    const/4 v7, 0x0

    .local v7, "isChecked":Z
    goto :goto_2

    .line 116
    .end local v7    # "isChecked":Z
    :cond_4
    const-string/jumbo v12, "net.oneplus.h2launcher"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 117
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;->setOrder(I)V

    goto :goto_3

    .line 122
    .end local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "appInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "appPkg":Ljava/lang/CharSequence;
    .end local v5    # "homeComponent":Landroid/content/ComponentName;
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "preference":Lcom/oneplus/settings/ui/OPRadioButtonPreferenceV7;
    :cond_5
    return-void
.end method

.method public refreshHomeOptions()V
    .locals 8

    .prologue
    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeActivities:Ljava/util/ArrayList;

    .line 126
    iget-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->pm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mCurrentDefaultHome:Landroid/content/ComponentName;

    .line 127
    iget-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mAllHomeComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 133
    .local v1, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 134
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v0, "activityName":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mAllHomeComponents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    const-string/jumbo v5, "OPDefaultHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getHomeComponents count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mHomeActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", pkgs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mCurrentDefaultHome:Landroid/content/ComponentName;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mAllHomeComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 140
    iget-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mAllHomeComponents:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    iput-object v5, p0, Lcom/oneplus/settings/OPDefaultHomeSettings;->mCurrentDefaultHome:Landroid/content/ComponentName;

    .line 142
    :cond_1
    return-void
.end method
