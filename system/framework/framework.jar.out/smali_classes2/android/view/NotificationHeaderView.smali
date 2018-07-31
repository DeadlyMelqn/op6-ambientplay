.class public Landroid/view/NotificationHeaderView;
.super Landroid/view/ViewGroup;
.source "NotificationHeaderView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$1;,
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# static fields
.field public static final NO_COLOR:I = 0x1


# instance fields
.field private mAcceptAllTouches:Z

.field private mAppName:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mChildMinWidth:I

.field private final mContentEndMargin:I

.field private mEntireHeaderClickable:Z

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandOnlyOnButton:Z

.field private mExpanded:Z

.field private mHeaderBackgroundHeight:I

.field private mHeaderText:Landroid/view/View;

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mIconColor:I

.field private mInfo:Landroid/view/View;

.field private mOriginalNotificationColor:I

.field private mProfileBadge:Landroid/view/View;

.field mProvider:Landroid/view/ViewOutlineProvider;

.field private mShowExpandButtonAtEnd:Z

.field private mShowWorkBadgeAtEnd:Z

.field private mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;


# direct methods
.method static synthetic -get0(Landroid/view/NotificationHeaderView;)Z
    .locals 1
    .param p0, "-this"    # Landroid/view/NotificationHeaderView;

    .prologue
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return v0
.end method

.method static synthetic -get1(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "-this"    # Landroid/view/NotificationHeaderView;

    .prologue
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Landroid/view/NotificationHeaderView;

    .prologue
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/NotificationHeaderView;)Z
    .locals 1
    .param p0, "-this"    # Landroid/view/NotificationHeaderView;

    .prologue
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return v0
.end method

.method static synthetic -get4(Landroid/view/NotificationHeaderView;)I
    .locals 1
    .param p0, "-this"    # Landroid/view/NotificationHeaderView;

    .prologue
    iget v0, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    return v0
.end method

.method static synthetic -get5(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;
    .locals 1
    .param p0, "-this"    # Landroid/view/NotificationHeaderView;

    .prologue
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Landroid/view/NotificationHeaderView;

    .prologue
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    new-instance v1, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-direct {v1, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v1, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    .line 65
    new-instance v1, Landroid/view/NotificationHeaderView$1;

    invoke-direct {v1, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v1, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 89
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    .line 91
    const v1, 0x1050104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    .line 93
    const v1, 0x1050110

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    .line 94
    const v1, 0x1120084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    .line 95
    return-void
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 4

    .prologue
    .line 415
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 416
    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 418
    return-object v0

    .line 415
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object p0
.end method

.method private updateExpandButton()V
    .locals 4

    .prologue
    .line 277
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    if-eqz v2, :cond_0

    .line 278
    const v1, 0x1080322

    .line 279
    .local v1, "drawableId":I
    const v0, 0x10401e0

    .line 284
    .local v0, "contentDescriptionId":I
    :goto_0
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget v3, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 286
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/view/NotificationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 287
    return-void

    .line 281
    .end local v0    # "contentDescriptionId":I
    .end local v1    # "drawableId":I
    :cond_0
    const v1, 0x108035a

    .line 282
    .restart local v1    # "drawableId":I
    const v0, 0x10401df

    .restart local v0    # "contentDescriptionId":I
    goto :goto_0
.end method

.method private updateTouchListener()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 234
    :cond_0
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 196
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getExpandButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method public getOriginalIconColor()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return v0
.end method

.method public getOriginalNotificationColor()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return v0
.end method

.method public getWorkProfileIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 434
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    return v0

    .line 437
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->-wrap0(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 100
    const v0, 0x10201ab

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    .line 101
    const v0, 0x102027c

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    .line 102
    const v0, 0x1020232

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 103
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 104
    const v0, 0x1020377

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    .line 105
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v10

    .line 155
    .local v10, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v6

    .line 156
    .local v6, "end":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v4

    .line 157
    .local v4, "childCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v18

    sub-int v12, v17, v18

    .line 158
    .local v12, "ownHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_5

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 160
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 158
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 164
    .local v5, "childHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 165
    .local v14, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v17

    add-int v10, v10, v17

    .line 166
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v15, v10, v17

    .line 167
    .local v15, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, v12, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 168
    .local v16, "top":I
    add-int v2, v16, v5

    .line 169
    .local v2, "bottom":I
    move v8, v10

    .line 170
    .local v8, "layoutLeft":I
    move v9, v15

    .line 171
    .local v9, "layoutRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    move/from16 v17, v0

    sub-int v9, v6, v17

    .line 173
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v8, v9, v17

    move v6, v8

    .line 175
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_3

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v13

    .line 177
    .local v13, "paddingEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 178
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    .line 180
    :cond_2
    sub-int v9, v6, v13

    .line 181
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v8, v9, v17

    move v6, v8

    .line 183
    .end local v13    # "paddingEnd":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getLayoutDirection()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 184
    move v11, v8

    .line 185
    .local v11, "ltrLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v17

    sub-int v8, v17, v9

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v17

    sub-int v9, v17, v11

    .line 188
    .end local v11    # "ltrLeft":I
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v3, v8, v0, v9, v2}, Landroid/view/View;->layout(IIII)V

    .line 189
    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v17

    add-int v10, v15, v17

    goto/16 :goto_1

    .line 191
    .end local v2    # "bottom":I
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v8    # "layoutLeft":I
    .end local v9    # "layoutRight":I
    .end local v14    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "right":I
    .end local v16    # "top":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 192
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 109
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 110
    .local v6, "givenWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 112
    .local v5, "givenHeight":I
    const/high16 v15, -0x80000000

    .line 111
    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 114
    .local v14, "wrapContentWidthSpec":I
    const/high16 v15, -0x80000000

    .line 113
    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 115
    .local v13, "wrapContentHeightSpec":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v16

    add-int v12, v15, v16

    .line 116
    .local v12, "totalWidth":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v15

    if-ge v7, v15, :cond_1

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 116
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 124
    .local v8, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v16, v0

    .line 123
    invoke-static/range {v14 .. v16}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v4

    .line 126
    .local v4, "childWidthSpec":I
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v16, v0

    .line 125
    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v3

    .line 127
    .local v3, "childHeightSpec":I
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 128
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v12, v15

    goto :goto_1

    .line 130
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    if-le v12, v6, :cond_3

    .line 131
    sub-int v10, v12, v6

    .line 133
    .local v10, "overFlow":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 134
    .local v1, "appWidth":I
    if-lez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    if-le v1, v15, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    sub-int v15, v1, v15

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int v9, v1, v15

    .line 136
    .local v9, "newSize":I
    const/high16 v15, -0x80000000

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 137
    .restart local v4    # "childWidthSpec":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    .line 138
    sub-int v15, v1, v9

    sub-int/2addr v10, v15

    .line 141
    .end local v4    # "childWidthSpec":I
    .end local v9    # "newSize":I
    :cond_2
    if-lez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 144
    .local v11, "textWidth":I
    sub-int v15, v11, v10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 145
    .restart local v9    # "newSize":I
    const/high16 v15, -0x80000000

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 146
    .restart local v4    # "childWidthSpec":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    .line 149
    .end local v1    # "appWidth":I
    .end local v4    # "childWidthSpec":I
    .end local v9    # "newSize":I
    .end local v10    # "overFlow":I
    .end local v11    # "textWidth":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Landroid/view/NotificationHeaderView;->setMeasuredDimension(II)V

    .line 150
    return-void
.end method

.method public setAcceptAllTouches(Z)V
    .locals 1
    .param p1, "acceptAllTouches"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    if-nez v0, :cond_0

    .end local p1    # "acceptAllTouches":Z
    :goto_0
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    .line 448
    return-void

    .line 447
    .restart local p1    # "acceptAllTouches":Z
    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public setExpandOnlyOnButton(Z)V
    .locals 0
    .param p1, "expandOnlyOnButton"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 455
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    .line 456
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 270
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    .line 271
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateExpandButton()V

    .line 272
    return-void
.end method

.method public setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 203
    if-eqz p1, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    .line 205
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 207
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 213
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    .line 214
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    .line 210
    iput-object v1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 211
    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x0

    .line 244
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 245
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 248
    return-void
.end method

.method public setOriginalIconColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 252
    iput p1, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    .line 253
    return-void
.end method

.method public setOriginalNotificationColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 261
    iput p1, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    .line 262
    return-void
.end method

.method public setShowExpandButtonAtEnd(Z)V
    .locals 1
    .param p1, "showExpandButtonAtEnd"    # Z

    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    if-eq p1, v0, :cond_0

    .line 303
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    .line 304
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    .line 306
    :cond_0
    return-void
.end method

.method public setShowWorkBadgeAtEnd(Z)V
    .locals 1
    .param p1, "showWorkBadgeAtEnd"    # Z

    .prologue
    .line 290
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    if-eq p1, v0, :cond_0

    .line 291
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    .line 292
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    .line 294
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
