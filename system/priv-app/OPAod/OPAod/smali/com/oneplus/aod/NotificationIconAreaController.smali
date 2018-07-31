.class public Lcom/oneplus/aod/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBatteryEmptyView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreIcon:Landroid/widget/TextView;

.field private final mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mNotificationEmptyView:Landroid/view/View;

.field protected mNotificationIconArea:Landroid/widget/LinearLayout;

.field mNotificationIconDozeHelper:Lcom/oneplus/doze/NotificationIconDozeHelper;

.field private mNotificationIcons:Lcom/oneplus/aod/IconMerger;

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v0, "NotificationIconArea"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 58
    new-instance v0, Lcom/oneplus/doze/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/oneplus/doze/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/oneplus/doze/NotificationIconDozeHelper;

    .line 59
    iput-object p1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 61
    return-void
.end method

.method private caculateMaxIconAmounts()I
    .locals 5

    .prologue
    .line 259
    iget-object v2, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 260
    .local v1, "containerWidth":I
    iget v2, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    iget v4, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    add-int/2addr v3, v4

    div-int v0, v2, v3

    .line 262
    .local v0, "amount":I
    const/4 v2, 0x5

    return v2
.end method

.method private generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    iget v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private reloadDimens()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconSize:I

    .line 98
    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mIconHPadding:I

    .line 99
    iget-object v1, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    const v2, 0x7f0801dd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 100
    return-void
.end method

.method private theOnlyOneNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z
    .locals 8
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;
    .param p2, "notificationData"    # Lcom/oneplus/aod/NotificationData;

    .prologue
    const/4 v7, 0x1

    .line 158
    invoke-virtual {p2}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 160
    .local v3, "size":I
    const/4 v2, 0x0

    .line 161
    .local v2, "notificationCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 162
    iget-object v4, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/aod/NotificationData$Entry;

    iget-object v4, v4, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    if-le v2, v7, :cond_0

    .line 165
    const/4 v4, 0x0

    return v4

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const-string/jumbo v4, "NotificationIconArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "theOnlyOneNotification: force show "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " icon"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v7
.end method


# virtual methods
.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    const v0, 0x7f0e0042

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mBatteryEmptyView:Landroid/view/View;

    .line 68
    const v0, 0x7f0e0047

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    .line 69
    const v0, 0x7f0e0048

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    .line 72
    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0049

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/IconMerger;

    .line 71
    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    .line 74
    iget-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    .line 75
    invoke-direct {p0}, Lcom/oneplus/aod/NotificationIconAreaController;->reloadDimens()V

    .line 76
    return-void
.end method

.method protected shouldShowNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z
    .locals 4
    .param p1, "entry"    # Lcom/oneplus/aod/NotificationData$Entry;
    .param p2, "notificationData"    # Lcom/oneplus/aod/NotificationData;

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v1, p1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/oneplus/aod/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 125
    if-eqz v1, :cond_0

    .line 127
    const-string/jumbo v1, "NotificationIconArea"

    const-string/jumbo v2, "don\'t show notification icon due to is ambient"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v3

    .line 131
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/NotificationIconAreaController;->theOnlyOneNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z

    move-result v0

    .line 134
    .local v0, "theOnlyOne":Z
    iget-object v1, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 135
    const-string/jumbo v1, "NotificationIconArea"

    const-string/jumbo v2, "don\'t show notification icon due to is app custom group child"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v3

    .line 141
    :cond_1
    iget-object v1, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 142
    const-string/jumbo v1, "NotificationIconArea"

    const-string/jumbo v2, "don\'t show notification icon due to is group child"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v3

    .line 152
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public updateNotificationIcons(Lcom/oneplus/aod/NotificationData;)V
    .locals 21
    .param p1, "notificationData"    # Lcom/oneplus/aod/NotificationData;

    .prologue
    .line 178
    const-string/jumbo v2, "NotificationIconArea"

    const-string/jumbo v4, "updateNotificationIcons"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/aod/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v9

    .line 182
    .local v9, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/NotificationData$Entry;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 183
    .local v17, "size":I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v18, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/aod/StatusBarIconView;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/clock/ClockViewCtrl;->getClockStyle()I

    move-result v2

    sget v4, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    if-eq v2, v4, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 192
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 193
    .local v13, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0106

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 196
    const/4 v2, 0x0

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 204
    :goto_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    .line 205
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/aod/NotificationData$Entry;

    .line 206
    .local v10, "ent":Lcom/oneplus/aod/NotificationData$Entry;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/oneplus/aod/NotificationIconAreaController;->shouldShowNotification(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v3, v10, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    .line 210
    .local v3, "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    .line 212
    .local v12, "isGrayScale":Z
    if-eqz v12, :cond_4

    .line 213
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 217
    :goto_3
    iget-object v2, v10, Lcom/oneplus/aod/NotificationData$Entry;->icon:Lcom/oneplus/aod/StatusBarIconView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v3    # "v":Landroid/widget/ImageView;
    .end local v12    # "isGrayScale":Z
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 189
    .end local v10    # "ent":Lcom/oneplus/aod/NotificationData$Entry;
    .end local v11    # "i":I
    .end local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    :goto_4
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_4

    .line 198
    .restart local v13    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0106

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 200
    const/4 v2, 0x0

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 215
    .restart local v3    # "v":Landroid/widget/ImageView;
    .restart local v10    # "ent":Lcom/oneplus/aod/NotificationData$Entry;
    .restart local v11    # "i":I
    .restart local v12    # "isGrayScale":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconDozeHelper:Lcom/oneplus/doze/NotificationIconDozeHelper;

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/doze/NotificationIconDozeHelper;->setImageDark(Landroid/widget/ImageView;ZZJZ)V

    goto :goto_3

    .line 221
    .end local v3    # "v":Landroid/widget/ImageView;
    .end local v10    # "ent":Lcom/oneplus/aod/NotificationData$Entry;
    .end local v12    # "isGrayScale":Z
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/NotificationIconAreaController;->reloadDimens()V

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/NotificationIconAreaController;->caculateMaxIconAmounts()I

    move-result v14

    .line 224
    .local v14, "maxIconAmounts":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    invoke-virtual {v2}, Lcom/oneplus/aod/IconMerger;->removeAllViews()V

    .line 225
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v14, :cond_6

    const/16 v16, 0x1

    .line 227
    .local v16, "showMore":Z
    :goto_5
    const-string/jumbo v2, "NotificationIconArea"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotificationIcons: toShow size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 230
    const-string/jumbo v2, "NotificationIconArea"

    const-string/jumbo v4, "updateNotificationIcons: setVisibility to gone"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    return-void

    .line 225
    .end local v16    # "showMore":Z
    :cond_6
    const/16 v16, 0x0

    .restart local v16    # "showMore":Z
    goto :goto_5

    .line 235
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIconArea:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationEmptyView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 239
    if-eqz v16, :cond_9

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const-string/jumbo v2, "NotificationIconArea"

    const-string/jumbo v4, "more than 7 icons"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_6
    if-eqz v16, :cond_a

    move/from16 v19, v14

    .line 249
    .local v19, "toShowCount":I
    :goto_7
    const/4 v11, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v11, v0, :cond_b

    .line 250
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    .line 251
    .local v20, "v":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_8

    .line 252
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oneplus/aod/NotificationIconAreaController;->generateIconLayoutParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    .line 253
    .local v15, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mNotificationIcons:Lcom/oneplus/aod/IconMerger;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v11, v15}, Lcom/oneplus/aod/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .end local v15    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 244
    .end local v19    # "toShowCount":I
    .end local v20    # "v":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/aod/NotificationIconAreaController;->mMoreIcon:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 247
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    .restart local v19    # "toShowCount":I
    goto :goto_7

    .line 256
    :cond_b
    return-void
.end method
