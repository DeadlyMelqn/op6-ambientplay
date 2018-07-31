.class Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private final mConfig:Landroid/net/wifi/WifiConfiguration;

.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageMeteredSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings/datausage/DataUsageMeteredSettings;

    .line 114
    invoke-direct {p0, p2}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 115
    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setPersistent(Z)V

    .line 118
    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 119
    const v1, 0x7f0f12a6

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 120
    const v1, 0x7f0f12a7

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 121
    const v1, 0x7f0f12a8

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 123
    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setValue(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v0, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference$1;-><init>(Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    return-void
.end method
