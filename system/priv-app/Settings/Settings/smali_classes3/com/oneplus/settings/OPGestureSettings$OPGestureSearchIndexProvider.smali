.class Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OPGestureSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 491
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    .line 492
    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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
    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-nez v1, :cond_0

    .line 530
    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->-wrap0()Ljava/util/List;

    move-result-object v0

    .line 532
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    :cond_1
    const-string/jumbo v1, "open_light_device_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    const-string/jumbo v1, "draw_o_start_camera_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 538
    :cond_3
    const-string/jumbo v1, "oneplus_draw_o_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    const-string/jumbo v1, "oneplus_draw_v_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    const-string/jumbo v1, "oneplus_draw_s_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    const-string/jumbo v1, "oneplus_draw_m_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    const-string/jumbo v1, "oneplus_draw_w_start_app"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 549
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result v1

    if-nez v1, :cond_5

    .line 550
    const-string/jumbo v1, "op_fingerprint_gesture_swipe_down_up"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_5
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result v1

    if-nez v1, :cond_6

    .line 557
    const-string/jumbo v1, "fingerprint_gesture_control"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_6
    return-object v0

    .line 553
    :cond_7
    const-string/jumbo v1, "fingerprint_gesture_control"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    const-string/jumbo v1, "op_fingerprint_gesture_swipe_down_up"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    iget-boolean v2, p0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;->mIsPrimary:Z

    if-nez v2, :cond_0

    .line 499
    return-object v0

    .line 502
    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 503
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f08005c

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    return-object v0
.end method
