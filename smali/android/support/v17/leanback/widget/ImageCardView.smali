.class public Landroid/support/v17/leanback/widget/ImageCardView;
.super Landroid/support/v17/leanback/widget/BaseCardView;
.source "ImageCardView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mBadgeImage:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/TextView;

.field mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoArea:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 290
    sget v0, Landroid/support/v17/leanback/R$attr;->imageCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    sget v0, Landroid/support/v17/leanback/R$style;->Widget_Leanback_ImageCardView:I

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v17/leanback/widget/ImageCardView;->buildImageCardView(Landroid/util/AttributeSet;II)V

    .line 161
    return-void
.end method

.method private buildImageCardView(Landroid/util/AttributeSet;II)V
    .locals 20
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyle"    # I

    .prologue
    .line 165
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusable(Z)V

    .line 166
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 169
    .local v12, "inflater":Landroid/view/LayoutInflater;
    sget v15, Landroid/support/v17/leanback/R$layout;->lb_image_card_view:I

    move-object/from16 v0, p0

    invoke-virtual {v12, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 171
    sget-object v16, Landroid/support/v17/leanback/R$styleable;->lbImageCardView:[I

    .line 170
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 173
    .local v5, "cardAttrs":Landroid/content/res/TypedArray;
    sget v15, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_lbImageCardViewType:I

    const/16 v16, 0x0

    .line 172
    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 175
    .local v6, "cardType":I
    if-nez v6, :cond_1

    const/4 v10, 0x1

    .line 176
    .local v10, "hasImageOnly":Z
    :goto_0
    and-int/lit8 v15, v6, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v11, 0x1

    .line 177
    .local v11, "hasTitle":Z
    :goto_1
    and-int/lit8 v15, v6, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v7, 0x1

    .line 178
    .local v7, "hasContent":Z
    :goto_2
    and-int/lit8 v15, v6, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v9, 0x1

    .line 180
    .local v9, "hasIconRight":Z
    :goto_3
    if-nez v9, :cond_5

    and-int/lit8 v15, v6, 0x8

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v8, 0x1

    .line 182
    .local v8, "hasIconLeft":Z
    :goto_4
    sget v15, Landroid/support/v17/leanback/R$id;->main_image:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-nez v15, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    aput v18, v17, v19

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/high16 v17, 0x10e0000

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 188
    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    sget v15, Landroid/support/v17/leanback/R$id;->info_field:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    .line 192
    if-eqz v10, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v17/leanback/widget/ImageCardView;->removeView(Landroid/view/View;)V

    .line 194
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    return-void

    .line 175
    .end local v7    # "hasContent":Z
    .end local v8    # "hasIconLeft":Z
    .end local v9    # "hasIconRight":Z
    .end local v10    # "hasImageOnly":Z
    .end local v11    # "hasTitle":Z
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "hasImageOnly":Z
    goto/16 :goto_0

    .line 176
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "hasTitle":Z
    goto/16 :goto_1

    .line 177
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "hasContent":Z
    goto/16 :goto_2

    .line 178
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "hasIconRight":Z
    goto/16 :goto_3

    .line 180
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "hasIconLeft":Z
    goto/16 :goto_4

    .line 198
    :cond_6
    if-eqz v11, :cond_7

    .line 199
    sget v15, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_title:I

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 199
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    :cond_7
    if-eqz v7, :cond_8

    .line 205
    sget v15, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_content:I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 205
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    :cond_8
    if-nez v9, :cond_9

    if-eqz v8, :cond_b

    .line 211
    :cond_9
    sget v13, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_right:I

    .line 212
    .local v13, "layoutId":I
    if-eqz v8, :cond_a

    .line 213
    sget v13, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_left:I

    .line 215
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v13, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    .line 216
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    .end local v13    # "layoutId":I
    :cond_b
    if-eqz v11, :cond_c

    xor-int/lit8 v15, v7, 0x1

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v15, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    .local v14, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v8, :cond_14

    .line 225
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getId()I

    move-result v15

    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v14    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_c
    if-eqz v7, :cond_f

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 236
    .restart local v14    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v11, :cond_d

    .line 237
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    :cond_d
    if-eqz v8, :cond_e

    .line 241
    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 242
    const/16 v15, 0x14

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getId()I

    move-result v15

    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 245
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .end local v14    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v15, :cond_11

    .line 250
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 251
    .restart local v14    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v7, :cond_15

    .line 252
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getId()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .end local v14    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_11
    sget v15, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_infoAreaBackground:I

    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 266
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_12

    .line 267
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/ImageCardView;->setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-nez v15, :cond_13

    .line 274
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :cond_13
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-void

    .line 227
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getId()I

    move-result v15

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_5

    .line 253
    :cond_15
    if-eqz v11, :cond_10

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getId()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6
.end method

.method private fadeIn()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 468
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 471
    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 480
    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onAttachedToWindow()V

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    .line 482
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 483
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ImageCardView;->fadeIn()V

    .line 485
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    .line 490
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 492
    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onDetachedFromWindow()V

    .line 493
    return-void
.end method

.method public setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_0
    return-void
.end method
