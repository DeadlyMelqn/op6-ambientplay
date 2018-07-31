.class Lcom/android/settings/security/SecurityFeatureProviderImpl$3;
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

.field final synthetic val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field final synthetic val$summary:Ljava/lang/String;

.field final synthetic val$tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/security/SecurityFeatureProviderImpl;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/security/SecurityFeatureProviderImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->this$0:Lcom/android/settings/security/SecurityFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iput-object p4, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$preferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, v2, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 203
    .local v0, "matchingPref":Landroid/support/v7/preference/Preference;
    if-nez v0, :cond_0

    .line 204
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl$3;->val$summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
