.class Lcom/android/settings/security/SecurityFeatureProviderImpl$2;
.super Ljava/lang/Object;
.source "SecurityFeatureProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/SecurityFeatureProviderImpl;->updatePreferencesToRunOnWorkerThread(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$icon:Landroid/util/Pair;

.field final synthetic val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field final synthetic val$tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/Tile;Landroid/content/Context;Landroid/util/Pair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/security/SecurityFeatureProviderImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iput-object p4, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$icon:Landroid/util/Pair;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object v3, v3, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 175
    .local v1, "matchingPref":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 180
    iget-object v2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$icon:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 179
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 181
    iget-object v2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$icon:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 182
    iget-object v4, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 179
    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "matchingPref":Landroid/support/v7/preference/Preference;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
