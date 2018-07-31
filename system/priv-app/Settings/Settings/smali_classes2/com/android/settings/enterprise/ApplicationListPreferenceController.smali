.class public Lcom/android/settings/enterprise/ApplicationListPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "ApplicationListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;
    }
.end annotation


# instance fields
.field private mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;Landroid/content/pm/PackageManager;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p4, "parent"    # Lcom/android/settings/SettingsPreferenceFragment;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p3, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 45
    iput-object p4, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 46
    invoke-interface {p2, p1, p0}, Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;->buildApplicationList(Landroid/content/Context;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onListOfAppsResult(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    iget-object v5, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 62
    .local v4, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-nez v4, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    .local v2, "prefContext":Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/UserAppInfo;

    .line 68
    .local v0, "item":Lcom/android/settings/applications/UserAppInfo;
    new-instance v3, Landroid/support/v7/preference/Preference;

    invoke-direct {v3, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 69
    .local v3, "preference":Landroid/support/v7/preference/Preference;
    const v5, 0x7f040145

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 70
    iget-object v5, v0, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v5, v0, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 73
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 74
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "item":Lcom/android/settings/applications/UserAppInfo;
    .end local v3    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method
