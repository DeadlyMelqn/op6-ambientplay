.class final Lcom/android/settings/DevelopmentSettings$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3199
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 1
    return-void
.end method

.method private isShowingDeveloperOptions(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3202
    const-string/jumbo v0, "development"

    .line 3203
    const/4 v1, 0x0

    .line 3202
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3204
    const-string/jumbo v1, "show"

    .line 3205
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3202
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3223
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings$4;->isShowingDeveloperOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3224
    const/4 v1, 0x0

    return-object v1

    .line 3227
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3228
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->-wrap0()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3229
    const-string/jumbo v1, "oem_unlock_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3232
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3233
    const-string/jumbo v1, "color_temperature"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3235
    :cond_2
    const-string/jumbo v1, "convert_to_file_encryption"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3236
    const-string/jumbo v1, "enable_terminal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3237
    const-string/jumbo v1, "disable_doze"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3238
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->-get0()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3239
    const-string/jumbo v1, "aptx_hd_support"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3241
    :cond_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3242
    const-string/jumbo v1, "bluetooth_enable_inband_ringing"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3245
    :cond_4
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3212
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings$4;->isShowingDeveloperOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3213
    const/4 v1, 0x0

    return-object v1

    .line 3216
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 3217
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080029

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 3218
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
