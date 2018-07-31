.class public Lcom/android/systemui/statusbar/policy/SystemIconController;
.super Ljava/lang/Object;
.source "SystemIconController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;,
        Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final DYNAMIC_DISABLED_ICONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_ENABLED_ICONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENABLED_ICONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryCount:I

.field private mBatteryStyle:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomHideSignalIcon:Z

.field private mDotReplace:Ljava/lang/String;

.field private mFastCharge:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLevel:I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCount:I

.field private mMobileDataConnected:Z

.field private mOrientation:I

.field private mResetRunnable:Ljava/lang/Runnable;

.field private mShowDot:Z

.field private mShowingTempVisibleSlot:Ljava/lang/String;

.field private mSignalCount:I

.field private mTempVisibleSlot:Ljava/lang/String;

.field private mVisibleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/SystemIconController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/SystemIconController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->handleReset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    .line 39
    const-class v0, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "zen"

    aput-object v1, v0, v2

    const-string/jumbo v1, "volume"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bluetooth"

    aput-object v1, v0, v4

    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->ENABLED_ICONS:Ljava/util/List;

    .line 54
    new-array v0, v3, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "bluetooth"

    aput-object v1, v0, v2

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_ENABLED_ICONS:Ljava/util/List;

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "headset"

    aput-object v1, v0, v2

    const-string/jumbo v1, "vpn"

    aput-object v1, v0, v3

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mVisibleMap:Ljava/util/HashMap;

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCallbacks:Ljava/util/ArrayList;

    .line 71
    iput v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mOrientation:I

    .line 82
    iput v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryStyle:I

    .line 83
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    .line 84
    iput v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    .line 85
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mContext:Landroid/content/Context;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mOrientation:I

    .line 90
    const-class v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 91
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mHandler:Landroid/os/Handler;

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    const-string/jumbo v3, "dot"

    new-instance v4, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    invoke-direct {v4, p0, v7, v6}, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    const-string/jumbo v3, "wifi"

    new-instance v4, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    invoke-direct {v4, p0, v5, v5}, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v2, Lcom/android/systemui/statusbar/policy/SystemIconController;->ENABLED_ICONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 98
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/systemui/statusbar/policy/SystemIconController;->ENABLED_ICONS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    invoke-direct {v4, p0, v7, v6}, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_ENABLED_ICONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 102
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_ENABLED_ICONS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    invoke-direct {v4, p0, v7, v6}, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 106
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    invoke-direct {v4, p0, v7, v6}, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->reloadVisibleMap()V

    .line 110
    return-void
.end method

.method private dispatchUpdate()V
    .locals 3

    .prologue
    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mVisibleMap:Ljava/util/HashMap;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;->onSystemIconVisibilityChanged(Ljava/util/HashMap;)V

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method

.method private getStatus(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 485
    packed-switch p1, :pswitch_data_0

    .line 489
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 486
    :pswitch_0
    const-string/jumbo v0, "status_undefined"

    return-object v0

    .line 487
    :pswitch_1
    const-string/jumbo v0, "status_show"

    return-object v0

    .line 488
    :pswitch_2
    const-string/jumbo v0, "status_hide"

    return-object v0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getVisibility(I)Ljava/lang/String;
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 495
    const-string/jumbo v0, "visible"

    return-object v0

    .line 496
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 497
    const-string/jumbo v0, "gone"

    return-object v0

    .line 499
    :cond_1
    const-string/jumbo v0, "invisible"

    return-object v0
.end method

.method private handleReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mResetRunnable:Ljava/lang/Runnable;

    .line 459
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V

    .line 461
    return-void
.end method

.method private refreshIcons()V
    .locals 20

    .prologue
    .line 189
    sget-boolean v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    if-eqz v16, :cond_0

    .line 190
    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "refreshIcons mTempVisibleSlot : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 190
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 192
    const-string/jumbo v18, " mShowingTempVisibleSlot : "

    .line 190
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 190
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 193
    const-string/jumbo v18, " mCustomHideSignalIcon : "

    .line 190
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCustomHideSignalIcon:Z

    move/from16 v18, v0

    .line 190
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    const/4 v11, 0x0

    .line 197
    .local v11, "showDot":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCustomHideSignalIcon:Z

    move/from16 v16, v0

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMaxCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mSignalCount:I

    move/from16 v17, v0

    sub-int v8, v16, v17

    .line 201
    .local v8, "remain":I
    const/4 v9, 0x0

    .line 202
    .local v9, "require":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 203
    .local v7, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 204
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 205
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 206
    .local v14, "slot":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 208
    .local v6, "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    iget-boolean v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->blocked:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 220
    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->ENABLED_ICONS:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_ENABLED_ICONS:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 221
    :cond_2
    iget v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 222
    add-int/lit8 v9, v9, 0x1

    .line 228
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 223
    :cond_3
    const-string/jumbo v16, "wifi"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 224
    if-gez v8, :cond_4

    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    goto :goto_2

    .line 226
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    goto :goto_1

    .line 239
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    .end local v14    # "slot":Ljava/lang/String;
    :cond_6
    if-eqz v11, :cond_7

    .line 240
    add-int/lit8 v8, v8, -0x1

    .line 243
    :cond_7
    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->ENABLED_ICONS:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    .line 244
    .local v13, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v13, :cond_b

    .line 245
    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->ENABLED_ICONS:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 246
    .restart local v14    # "slot":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 247
    .restart local v6    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    iget v15, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 248
    .local v15, "status":I
    iget v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    move/from16 v16, v0

    if-nez v16, :cond_a

    .line 250
    if-gt v9, v8, :cond_8

    .line 251
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 267
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 253
    :cond_8
    if-le v9, v8, :cond_9

    if-lez v8, :cond_9

    .line 254
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 255
    add-int/lit8 v8, v8, -0x1

    .line 253
    goto :goto_4

    .line 257
    :cond_9
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    goto :goto_4

    .line 260
    :cond_a
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    goto :goto_4

    .line 269
    .end local v6    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    .end local v14    # "slot":Ljava/lang/String;
    .end local v15    # "status":I
    :cond_b
    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    .line 270
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v13, :cond_f

    .line 271
    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 272
    .restart local v14    # "slot":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 274
    .restart local v6    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    iget v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    move/from16 v16, v0

    if-nez v16, :cond_c

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 270
    :cond_c
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 276
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 278
    :cond_e
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 286
    .end local v6    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    .end local v14    # "slot":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_18

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 289
    .restart local v6    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    sget-boolean v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    if-eqz v16, :cond_10

    .line 290
    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  mTempVisibleSlot : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 291
    const-string/jumbo v18, " status : "

    .line 290
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 291
    iget v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SystemIconController;->getStatus(I)Ljava/lang/String;

    move-result-object v18

    .line 290
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 292
    const-string/jumbo v18, " showDot : "

    .line 290
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_10
    if-nez v11, :cond_11

    sget-object v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 295
    :cond_11
    iget v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 296
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 297
    const/4 v11, 0x0

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_12

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 300
    .local v4, "hide":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .end local v4    # "hide":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mResetRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    .line 306
    new-instance v16, Lcom/android/systemui/statusbar/policy/SystemIconController$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SystemIconController$1;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->mResetRunnable:Ljava/lang/Runnable;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mResetRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x1388

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    .end local v6    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mResetRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_14

    .line 323
    const/4 v11, 0x0

    .line 325
    :cond_14
    sget-boolean v16, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    if-eqz v16, :cond_15

    .line 326
    sget-object v17, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "  showDot : "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 327
    const-string/jumbo v18, " mCustomHideSignalIcon : "

    .line 326
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 327
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCustomHideSignalIcon:Z

    move/from16 v18, v0

    .line 326
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 328
    const-string/jumbo v18, " mResetRunnable is"

    .line 326
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mResetRunnable:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_19

    const-string/jumbo v16, " not"

    .line 326
    :goto_8
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 328
    const-string/jumbo v18, " null"

    .line 326
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 329
    const-string/jumbo v18, " mTempVisibleSlot : "

    .line 326
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 326
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 330
    const-string/jumbo v18, " mShowingTempVisibleSlot : "

    .line 326
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 326
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_15
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowDot:Z

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string/jumbo v17, "dot"

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 335
    .local v2, "dot":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    if-eqz v11, :cond_1a

    const/16 v16, 0x0

    :goto_9
    move/from16 v0, v16

    iput v0, v2, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    .line 336
    if-eqz v11, :cond_1b

    const/16 v16, 0x0

    :goto_a
    move/from16 v0, v16

    iput v0, v2, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string/jumbo v17, "dot"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_17

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 341
    .local v12, "showing":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    sub-int v16, v8, v9

    if-lez v16, :cond_1c

    const/4 v10, 0x1

    .line 342
    .local v10, "show":Z
    :goto_b
    if-eqz v10, :cond_1d

    const/16 v16, 0x0

    :goto_c
    move/from16 v0, v16

    iput v0, v12, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    .line 343
    if-nez v10, :cond_16

    .line 344
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->mDotReplace:Ljava/lang/String;

    .line 346
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v10    # "show":Z
    .end local v12    # "showing":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->reloadVisibleMap()V

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->dispatchUpdate()V

    .line 351
    return-void

    .line 317
    .end local v2    # "dot":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_13

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mResetRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->mResetRunnable:Ljava/lang/Runnable;

    goto/16 :goto_7

    .line 328
    :cond_19
    const-string/jumbo v16, ""

    goto/16 :goto_8

    .line 335
    .restart local v2    # "dot":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_1a
    const/16 v16, 0x8

    goto/16 :goto_9

    .line 336
    :cond_1b
    const/16 v16, 0x1

    goto/16 :goto_a

    .line 341
    .restart local v12    # "showing":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_1c
    const/4 v10, 0x0

    .restart local v10    # "show":Z
    goto :goto_b

    .line 342
    :cond_1d
    const/16 v16, 0x1

    goto :goto_c
.end method

.method private reloadVisibleMap()V
    .locals 3

    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 523
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 525
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->updateVisibleMap(Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method private updateMaxCount()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 544
    new-instance v1, Lcom/android/settingslib/display/DisplayDensityUtils;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 545
    .local v1, "density":Lcom/android/settingslib/display/DisplayDensityUtils;
    invoke-virtual {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v2

    .line 546
    .local v2, "index":I
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryStyle:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    .line 549
    .local v4, "percent":Z
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    const/16 v6, 0x64

    if-lt v5, v6, :cond_3

    const/4 v3, 0x1

    .line 551
    .local v3, "isCharged":Z
    :goto_1
    const/4 v0, 0x0

    .line 553
    .local v0, "count":I
    packed-switch v2, :pswitch_data_0

    .line 559
    const/4 v0, 0x6

    .line 563
    :goto_2
    if-eqz v4, :cond_0

    .line 564
    packed-switch v2, :pswitch_data_1

    .line 570
    const/4 v0, 0x6

    .line 577
    :cond_0
    :goto_3
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMaxCount:I

    if-eq v5, v0, :cond_1

    .line 578
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMaxCount:I

    .line 579
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V

    .line 583
    :cond_1
    return-void

    .line 546
    .end local v0    # "count":I
    .end local v3    # "isCharged":Z
    .end local v4    # "percent":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "percent":Z
    goto :goto_0

    .line 549
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "isCharged":Z
    goto :goto_1

    .line 554
    .restart local v0    # "count":I
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_2

    .line 555
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_2

    .line 556
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_2

    .line 557
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_2

    .line 558
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_2

    .line 565
    :pswitch_5
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-lt v5, v7, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    const/4 v0, 0x5

    goto :goto_3

    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-ge v5, v7, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    const/4 v0, 0x7

    goto :goto_3

    :cond_5
    const/4 v0, 0x6

    goto :goto_3

    .line 566
    :pswitch_6
    if-eqz v3, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    const/4 v0, 0x4

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-lt v5, v7, :cond_7

    const/4 v0, 0x5

    goto :goto_3

    :cond_7
    const/4 v0, 0x6

    goto :goto_3

    .line 567
    :pswitch_7
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-ge v5, v7, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    if-eqz v5, :cond_9

    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_a

    :cond_9
    if-eqz v3, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    if-eqz v5, :cond_b

    :cond_a
    const/4 v0, 0x4

    goto :goto_3

    :cond_b
    const/4 v0, 0x5

    goto :goto_3

    .line 568
    :pswitch_8
    if-eqz v3, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    if-eqz v5, :cond_c

    const/4 v0, 0x3

    goto :goto_3

    :cond_c
    if-eqz v3, :cond_d

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_e

    :cond_d
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-lt v5, v7, :cond_f

    :cond_e
    const/4 v0, 0x4

    goto/16 :goto_3

    :cond_f
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    if-eqz v5, :cond_10

    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-lt v5, v7, :cond_e

    :cond_10
    const/4 v0, 0x5

    goto/16 :goto_3

    .line 569
    :pswitch_9
    if-nez v3, :cond_11

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    if-eqz v5, :cond_12

    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-ge v5, v7, :cond_11

    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-ge v5, v7, :cond_12

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    if-eqz v5, :cond_12

    :cond_11
    const/4 v0, 0x3

    goto/16 :goto_3

    :cond_12
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-ge v5, v7, :cond_13

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_14

    :cond_13
    const/4 v0, 0x4

    goto/16 :goto_3

    :cond_14
    const/4 v0, 0x5

    goto/16 :goto_3

    .line 553
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 564
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateVisibleMap(Ljava/lang/String;)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 509
    :cond_0
    if-nez v0, :cond_1

    .line 510
    return-void

    .line 512
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 513
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->status:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 517
    .local v1, "vis":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mVisibleMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-void

    .line 513
    .end local v1    # "vis":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "vis":Z
    goto :goto_0

    .line 515
    .end local v1    # "vis":Z
    :cond_3
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    if-nez v2, :cond_4

    const-string/jumbo v2, "dot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .restart local v1    # "vis":Z
    goto :goto_0

    .end local v1    # "vis":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "vis":Z
    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 117
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public customHideSignalIcon(Z)V
    .locals 1
    .param p1, "hideIcon"    # Z

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCustomHideSignalIcon:Z

    if-eq v0, p1, :cond_0

    .line 141
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCustomHideSignalIcon:Z

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V

    .line 144
    :cond_0
    return-void
.end method

.method public forceShow(Ljava/lang/String;)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 439
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V

    .line 444
    return-void
.end method

.method public getBatteryStyle()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryStyle:I

    return v0
.end method

.method public isCustVisible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mVisibleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mVisibleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastCharge()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    return v0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 531
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 532
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mOrientation:I

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->reloadVisibleMap()V

    .line 534
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->dispatchUpdate()V

    .line 536
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->updateMaxCount()V

    .line 541
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 123
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeTempIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->handleReset()V

    .line 450
    :cond_0
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 176
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    if-eq v0, p1, :cond_0

    .line 177
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mLevel:I

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->updateMaxCount()V

    .line 180
    :cond_0
    return-void
.end method

.method public setBatteryStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryStyle:I

    if-eq v0, p1, :cond_1

    .line 155
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBatteryStyle from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryStyle:I

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->updateMaxCount()V

    .line 161
    :cond_1
    return-void
.end method

.method public setBlocked(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "blocked"    # Z

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 431
    .local v0, "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :goto_0
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->blocked:Z

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void

    .line 429
    .end local v0    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V

    .restart local v0    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    goto :goto_0
.end method

.method public setFastCharge(Z)V
    .locals 1
    .param p1, "fastCharge"    # Z

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    if-eq v0, p1, :cond_0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mFastCharge:Z

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->updateMaxCount()V

    .line 172
    :cond_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;I)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "vis"    # I

    .prologue
    .line 405
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 406
    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIcon slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " vis : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->getVisibility(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 415
    .local v0, "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_ENABLED_ICONS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->setVisibility(Ljava/lang/String;I)V

    .line 422
    :goto_1
    return-void

    .line 412
    .end local v0    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V

    .restart local v0    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    goto :goto_0

    .line 418
    :cond_3
    iput p2, v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V

    goto :goto_1
.end method

.method public setVisibility(Ljava/lang/String;I)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "vis"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    .line 365
    .local v0, "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :goto_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->blocked:Z

    if-nez v1, :cond_5

    iget v1, v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    if-eq v1, p2, :cond_5

    .line 366
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 367
    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setVisibility from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/SystemIconController;->getVisibility(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->getVisibility(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iput p2, v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;->visibility:I

    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->ENABLED_ICONS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_ENABLED_ICONS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 374
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowDot:Z

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 379
    :cond_1
    return-void

    .line 362
    .end local v0    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v5, v1}, Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;-><init>(Lcom/android/systemui/statusbar/policy/SystemIconController;II)V

    .line 363
    .restart local v0    # "icon":Lcom/android/systemui/statusbar/policy/SystemIconController$Icon;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowDot:Z

    if-nez v1, :cond_4

    if-eq p2, v5, :cond_1

    .line 400
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V

    .line 402
    :cond_5
    return-void

    .line 382
    :cond_6
    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_ENABLED_ICONS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/systemui/statusbar/policy/SystemIconController;->DYNAMIC_DISABLED_ICONS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 383
    :cond_7
    if-nez p2, :cond_a

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 384
    if-eqz v1, :cond_9

    .line 386
    :cond_8
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    goto :goto_1

    .line 388
    :cond_9
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    goto :goto_1

    .line 391
    :cond_a
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mShowingTempVisibleSlot:Ljava/lang/String;

    goto :goto_1

    .line 397
    :cond_b
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mTempVisibleSlot:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateBatteryIconCount(I)V
    .locals 1
    .param p1, "battery"    # I

    .prologue
    .line 126
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryCount:I

    if-eq v0, p1, :cond_0

    .line 127
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mBatteryCount:I

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V

    .line 130
    :cond_0
    return-void
.end method

.method public updateMobileDataConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    if-eq v0, p1, :cond_0

    .line 148
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mMobileDataConnected:Z

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->updateMaxCount()V

    .line 151
    :cond_0
    return-void
.end method

.method public updateSignalIconCount(I)V
    .locals 1
    .param p1, "signals"    # I

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mSignalCount:I

    if-eq v0, p1, :cond_0

    .line 134
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SystemIconController;->mSignalCount:I

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->refreshIcons()V

    .line 137
    :cond_0
    return-void
.end method
