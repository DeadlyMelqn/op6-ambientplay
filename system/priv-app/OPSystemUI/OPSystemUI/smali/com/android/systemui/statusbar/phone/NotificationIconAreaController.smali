.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkIconColor:I

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private final mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationIconArea:Landroid/view/View;

.field private mNotificationIconColor:I

.field private mNotificationIconHPadding:I

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 54
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateViews(F)V

    .line 58
    return-void
.end method

.method private applyNotificationIconsTint()V
    .locals 4

    .prologue
    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 299
    .local v1, "iv":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 297
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$0bHtyKFJ7kwHShDU04o3QjO6EJY;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$0bHtyKFJ7kwHShDU04o3QjO6EJY;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->executeOnLayout(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 305
    .end local v1    # "iv":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    return-void
.end method

.method private generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconHPadding:I

    .line 99
    .local v0, "padding":I
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result v3

    .line 99
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v1

    .line 98
    .end local v0    # "padding":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "padding":I
    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_6665(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_6795(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 108
    const v1, 0x7f070435

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 110
    const v1, 0x7f070438

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconHPadding:I

    .line 112
    return-void
.end method

.method private updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V
    .locals 27
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p3, "hostLayout"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .param p4, "showAmbient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/NotificationData;",
            "Ljava/util/function/Function",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    new-instance v22, Ljava/util/ArrayList;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v25

    .line 199
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v22, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 205
    .local v24, "view":Landroid/view/View;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 206
    check-cast v24, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v24    # "view":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    .line 207
    .local v8, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;Z)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 208
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v8    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 217
    :cond_1
    new-instance v18, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 218
    .local v18, "replacingIcons":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v20, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_9

    .line 220
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 221
    .local v5, "child":Landroid/view/View;
    instance-of v0, v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 219
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 224
    :cond_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 225
    const/4 v11, 0x0

    .local v11, "iconWasReplaced":Z
    move-object/from16 v17, v5

    .line 226
    check-cast v17, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 227
    .local v17, "removedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, "removedGroupKey":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_6

    .line 229
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 230
    .local v4, "candidate":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 231
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 230
    if-eqz v25, :cond_4

    .line 232
    if-nez v11, :cond_5

    .line 233
    const/4 v11, 0x1

    .line 228
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 235
    :cond_5
    const/4 v11, 0x0

    .line 240
    .end local v4    # "candidate":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_6
    if-eqz v11, :cond_8

    .line 241
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 242
    .local v19, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-nez v19, :cond_7

    .line 243
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .restart local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 252
    .end local v5    # "child":Landroid/view/View;
    .end local v11    # "iconWasReplaced":Z
    .end local v12    # "j":I
    .end local v16    # "removedGroupKey":Ljava/lang/String;
    .end local v17    # "removedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v7, "duplicates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "key$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 254
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 255
    .restart local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 256
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 259
    .end local v13    # "key":Ljava/lang/String;
    .end local v19    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/support/v4/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 260
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V

    .line 262
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 263
    .local v21, "toRemoveCount":I
    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v10, v0, :cond_c

    .line 264
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 263
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 267
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    .line 268
    .local v15, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, 0x0

    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_e

    .line 269
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    .line 271
    .local v23, "v":Landroid/view/View;
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    .line 272
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_d

    .line 273
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10, v15}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 268
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 277
    .end local v23    # "v":Landroid/view/View;
    :cond_e
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v6

    .line 280
    .local v6, "childCount":I
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v6, :cond_10

    .line 281
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 282
    .local v3, "actual":Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 283
    .local v9, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v3, v9, :cond_f

    .line 280
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 286
    :cond_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 287
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;I)V

    goto :goto_8

    .line 289
    .end local v3    # "actual":Landroid/view/View;
    .end local v9    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_10
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 290
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V

    .line 291
    return-void
.end method

.method private updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 6
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 308
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v5, 0x7f0a0137

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 309
    .local v2, "isPreL":Z
    const/4 v0, 0x0

    .line 311
    .local v0, "color":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v1

    .line 314
    .local v1, "colorize":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-static {v4, p1, v5}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    .line 315
    .local v3, "tint":I
    if-eqz v1, :cond_0

    .line 316
    move v0, v3

    .line 319
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 321
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 323
    return-void
.end method


# virtual methods
.method protected getHeight()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object v0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 61
    const v0, 0x7f0d00b6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 71
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 73
    const v2, 0x7f0a0200

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 76
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_12312(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0
    .param p1, "iv"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "iconTint"    # I

    .prologue
    .line 129
    if-nez p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 134
    .line 265
    :goto_0
    float-to-int v0, p2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraNotchIgnoring()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDarkIconColor:I

    if-nez v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconColor:I

    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 142
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 86
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public readRenovateMods()V
    .locals 1

    sget v0, Lcom/android/mwilky/Renovate;->mNotificationIconColorOP:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDarkIconColor:I

    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 1
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 81
    return-void
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;Z)Z
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p3, "showAmbient"    # Z

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    .line 151
    return v3

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    return v3

    .line 156
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 157
    return v3

    .line 161
    :cond_2
    const/4 v0, 0x0

    .line 162
    .local v0, "extra":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 166
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_3
    if-eqz v0, :cond_4

    const-string/jumbo v1, "hide_icon"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    return v3

    .line 171
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 3
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    sget-object v0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$INST$0:Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 180
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$INST$1:Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 182
    const/4 v2, 0x1

    .line 181
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 185
    return-void
.end method

.method public updateViews(F)V
    .locals 2

    float-to-int v0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->readRenovateMods()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mDarkIconColor:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconColor:I

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    return-void
.end method
