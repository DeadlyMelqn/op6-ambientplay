.class Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;
.super Ljava/lang/Object;
.source "DataUsageMeteredSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;->this$1:Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;->this$1:Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->-get0(Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 136
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;->this$1:Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;->this$1:Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;->this$1:Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->-get0(Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;->this$1:Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->-get0(Lcom/android/settings/datausage/DataUsageMeteredSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;->this$1:Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->-get0(Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 140
    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method
