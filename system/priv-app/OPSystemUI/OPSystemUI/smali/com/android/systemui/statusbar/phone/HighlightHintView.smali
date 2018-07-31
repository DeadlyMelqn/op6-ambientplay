.class public Lcom/android/systemui/statusbar/phone/HighlightHintView;
.super Landroid/widget/FrameLayout;
.source "HighlightHintView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field public static TAG_KEYGUARD_STATUSBAR:I

.field public static TAG_STATUSBAR:I


# instance fields
.field private mBgHeightMax:I

.field mChronometerContainer:Landroid/widget/FrameLayout;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mHint:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mOrientation:I

.field mhighlighthintContentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "HighlightHintView"

    sput-object v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    .line 40
    const/16 v0, 0x3e9

    sput v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_KEYGUARD_STATUSBAR:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 196
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mhighlighthintContentWidth:I

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBgHeightMax:I

    .line 57
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0d003e

    .line 58
    .local v0, "layoutId":I
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->addView(Landroid/view/View;)V

    .line 59
    return-void

    .line 57
    .end local v0    # "layoutId":I
    :cond_0
    const v0, 0x7f0d003c

    .restart local v0    # "layoutId":I
    goto :goto_0
.end method

.method private getMaxHighlightHintTextWidth()I
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 198
    const-class v10, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v8

    .line 199
    .local v8, "notificationData":Lcom/android/systemui/statusbar/NotificationData;
    if-nez v8, :cond_0

    .line 200
    return v12

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget v11, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-ne v10, v11, :cond_1

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    .line 203
    .local v0, "chronometer":Landroid/widget/Chronometer;
    :goto_0
    if-nez v0, :cond_2

    .line 204
    return v12

    .line 202
    .end local v0    # "chronometer":Landroid/widget/Chronometer;
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v0

    .restart local v0    # "chronometer":Landroid/widget/Chronometer;
    goto :goto_0

    .line 207
    :cond_2
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 208
    .local v6, "measurewidth":I
    invoke-static {v12, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 210
    .local v5, "measureHeight":I
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v1

    .line 211
    .local v1, "chronometermeasureWidth":I
    if-eqz v1, :cond_3

    iget v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mhighlighthintContentWidth:I

    if-eq v10, v1, :cond_4

    .line 212
    :cond_3
    invoke-virtual {v0, v6, v5}, Landroid/widget/Chronometer;->measure(II)V

    .line 213
    iput v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mhighlighthintContentWidth:I

    .line 216
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Chronometer;->getMeasuredWidth()I

    move-result v2

    .line 217
    .local v2, "highlighthintContentWidth":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 218
    .local v3, "highlighthintIconWidth":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070137

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 219
    .local v9, "padding":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v2

    sub-int/2addr v10, v3

    sub-int v4, v10, v9

    .line 220
    .local v4, "maxWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getWidth()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v7, v10

    .line 221
    .local v7, "minWidth":I
    if-lez v4, :cond_6

    .end local v4    # "maxWidth":I
    :goto_2
    return v4

    .line 218
    .end local v7    # "minWidth":I
    .end local v9    # "padding":I
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "padding":I
    goto :goto_1

    .restart local v4    # "maxWidth":I
    .restart local v7    # "minWidth":I
    :cond_6
    move v4, v7

    .line 221
    goto :goto_2
.end method

.method private updateHint()V
    .locals 17

    .prologue
    .line 87
    const-class v14, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v14}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v14}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    .line 88
    .local v9, "notificationData":Lcom/android/systemui/statusbar/NotificationData;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    if-nez v14, :cond_1

    .line 89
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 92
    .local v7, "n":Landroid/app/Notification;
    if-nez v7, :cond_2

    .line 93
    return-void

    .line 96
    :cond_2
    invoke-virtual {v7}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v2

    .line 98
    .local v2, "bgColor":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 99
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 98
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 101
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_9

    .line 102
    invoke-virtual {v7}, Landroid/app/Notification;->getStatusBarIcon()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 103
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070421

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 111
    .local v13, "textSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    if-eqz v14, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    int-to-float v15, v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    invoke-virtual {v7}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    .line 114
    invoke-virtual {v7}, Landroid/app/Notification;->getTextOnStatusBar()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "text":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 117
    .local v8, "newHint":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getMaxHighlightHintTextWidth()I

    move-result v6

    .line 121
    .local v6, "maxWidth":I
    if-lez v6, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    .end local v6    # "maxWidth":I
    .end local v8    # "newHint":Ljava/lang/StringBuffer;
    .end local v11    # "text":Ljava/lang/String;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    if-eqz v14, :cond_7

    .line 132
    invoke-virtual {v7}, Landroid/app/Notification;->ShowChronometerOnStatusBar()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0601be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 137
    .local v12, "textColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget v15, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-ne v14, v15, :cond_b

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getStatusBarChronometer()Landroid/widget/Chronometer;

    move-result-object v3

    .line 138
    .local v3, "chronometer":Landroid/widget/Chronometer;
    :goto_2
    if-eqz v3, :cond_6

    .line 139
    invoke-virtual {v3}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 140
    invoke-virtual {v3}, Landroid/widget/Chronometer;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v14, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_5
    int-to-float v14, v13

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v14}, Landroid/widget/Chronometer;->setTextSize(IF)V

    .line 143
    invoke-virtual {v3, v12}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 144
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v14}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 152
    .end local v3    # "chronometer":Landroid/widget/Chronometer;
    .end local v12    # "textColor":I
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v14, :cond_8

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 155
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_8

    .line 156
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 157
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 166
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v13    # "textSize":I
    :cond_8
    :goto_4
    return-void

    .line 106
    .restart local v10    # "res":Landroid/content/res/Resources;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 163
    .end local v10    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    .line 164
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 127
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "res":Landroid/content/res/Resources;
    .restart local v13    # "textSize":I
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 137
    .restart local v12    # "textColor":I
    :cond_b
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getKeyguardChronometer()Landroid/widget/Chronometer;

    move-result-object v3

    .restart local v3    # "chronometer":Landroid/widget/Chronometer;
    goto :goto_2

    .line 149
    .end local v3    # "chronometer":Landroid/widget/Chronometer;
    .end local v12    # "textColor":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 161
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private updateLayout()V
    .locals 6

    .prologue
    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    .local v0, "height":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBgHeightMax:I

    if-le v0, v2, :cond_0

    .line 77
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mBgHeightMax:I

    .line 79
    :cond_0
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 80
    const v2, 0x800013

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getPaddingEnd()I

    move-result v5

    .line 81
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setPaddingRelative(IIII)V

    .line 84
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 184
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->addCallback(Ljava/lang/Object;)V

    .line 185
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 171
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    .line 174
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    .line 179
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 191
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->removeCallback(Ljava/lang/Object;)V

    .line 192
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 64
    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mIconView:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0a012b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mHint:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0a012c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mChronometerContainer:Landroid/widget/FrameLayout;

    .line 67
    const v0, 0x7f0a0128

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContainer:Landroid/view/ViewGroup;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintView;->mOrientation:I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateLayout()V

    .line 70
    return-void
.end method

.method public onHighlightHintInfoChange()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    .line 245
    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/systemui/statusbar/phone/HighlightHintView;->TAG_STATUSBAR:I

    if-eq v1, v2, :cond_0

    .line 230
    return-void

    .line 233
    :cond_0
    const-class v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v0

    .line 234
    .local v0, "show":Z
    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->updateHint()V

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setVisibility(I)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HighlightHintView;->setVisibility(I)V

    goto :goto_0
.end method
