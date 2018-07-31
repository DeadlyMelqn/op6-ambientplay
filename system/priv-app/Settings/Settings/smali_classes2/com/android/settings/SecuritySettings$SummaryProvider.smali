.class Lcom/android/settings/SecuritySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 1910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1911
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1912
    iput-object p2, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1913
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/SecuritySettings$SummaryProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "-this2"    # Lcom/android/settings/SecuritySettings$SummaryProvider;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecuritySettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary()V
    .locals 7

    .prologue
    .line 1955
    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1957
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0226

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1958
    .local v2, "fingerprint":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0470

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1959
    .local v1, "faceUnlock":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f0f039c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1960
    .local v0, "appLocker":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isZh(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1963
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3001"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1979
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v4, p0, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1981
    .end local v0    # "appLocker":Ljava/lang/String;
    .end local v1    # "faceUnlock":Ljava/lang/String;
    .end local v2    # "fingerprint":Ljava/lang/String;
    .end local v3    # "summary":Ljava/lang/String;
    :cond_0
    return-void

    .line 1966
    .restart local v0    # "appLocker":Ljava/lang/String;
    .restart local v1    # "faceUnlock":Ljava/lang/String;
    .restart local v2    # "fingerprint":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3001"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3001"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 1969
    .end local v3    # "summary":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f0f05d6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 1970
    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    .line 1969
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1971
    .restart local v3    # "summary":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1976
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method


# virtual methods
.method getPackageVerifierSummary(Lcom/android/settingslib/drawer/DashboardCategory;)Ljava/lang/String;
    .locals 7
    .param p1, "dashboardCategory"    # Lcom/android/settingslib/drawer/DashboardCategory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1936
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v3

    .line 1937
    .local v3, "tilesCount":I
    :goto_0
    if-nez v3, :cond_1

    .line 1938
    return-object v6

    .line 1936
    .end local v3    # "tilesCount":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "tilesCount":I
    goto :goto_0

    .line 1940
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 1941
    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v2

    .line 1942
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    const-string/jumbo v4, "security_status_package_verifier"

    iget-object v5, v2, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1940
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1945
    :cond_2
    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 1946
    const-string/jumbo v5, "com.android.settings.summary_uri"

    .line 1945
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1947
    .local v1, "summaryUri":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1948
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1949
    const-string/jumbo v6, "com.android.settings.summary"

    .line 1947
    invoke-static {v4, v1, v5, v6}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1951
    .end local v1    # "summaryUri":Ljava/lang/String;
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_3
    return-object v6
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 1917
    if-eqz p1, :cond_0

    .line 1918
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SummaryProvider;->updateSummary()V

    .line 1932
    :cond_0
    return-void
.end method
