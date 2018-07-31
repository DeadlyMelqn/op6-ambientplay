.class Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonsSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 794
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 795
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;->mIsPrimary:Z

    .line 796
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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
    const/4 v4, 0x0

    .line 833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;->mIsPrimary:Z

    if-nez v2, :cond_0

    .line 836
    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->-wrap2()Ljava/util/List;

    move-result-object v1

    .line 838
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 839
    const-string/jumbo v3, "emergency_affordance_needed"

    .line 838
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 840
    .local v0, "inEmergencyCall":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 841
    const-string/jumbo v2, "camera_double_tap_power_gesture"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 846
    const v3, 0x1120099

    .line 845
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 847
    const-string/jumbo v2, "buttons_brightness"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    const-string/jumbo v2, "buttons_enable_on_screen_navkeys"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    const-string/jumbo v2, "buttons_force_home"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_2
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNavigationBarOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/oneplus/settings/OPButtonsSettings;->-wrap1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 853
    :cond_3
    const-string/jumbo v2, "hide_navkeys"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    :goto_1
    return-object v1

    .line 838
    .end local v0    # "inEmergencyCall":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "inEmergencyCall":Z
    goto :goto_0

    .line 855
    :cond_5
    const-string/jumbo v2, "key_navigation_bar_type"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
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
    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    iget-boolean v2, p0, Lcom/oneplus/settings/OPButtonsSettings$ButtonsSearchIndexProvider;->mIsPrimary:Z

    if-nez v2, :cond_0

    .line 804
    return-object v0

    .line 807
    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 808
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f080051

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 809
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    return-object v0
.end method
