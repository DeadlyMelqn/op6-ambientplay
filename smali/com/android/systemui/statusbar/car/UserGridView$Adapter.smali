.class final Lcom/android/systemui/statusbar/car/UserGridView$Adapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "UserGridView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/UserGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field private mContainerWidth:I

.field private final mPodImageAvatarHeight:I

.field private final mPodImageAvatarWidth:I

.field private final mPodMarginBetween:I

.field private final mPodWidth:I

.field private final mUserAdapter:Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;

.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/car/UserGridView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/UserGridView;
    .param p2, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    .line 203
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 204
    new-instance v1, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/car/UserGridView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/car/UserGridView$Adapter;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mUserAdapter:Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;

    .line 206
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/car/UserGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodWidth:I

    .line 209
    const v1, 0x7f07006b

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodMarginBetween:I

    .line 211
    const v1, 0x7f07006a

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodImageAvatarWidth:I

    .line 213
    const v1, 0x7f070069

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodImageAvatarHeight:I

    .line 214
    return-void
.end method

.method private getDefaultUserIcon(Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "userName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 265
    invoke-interface {p1, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 266
    .local v1, "displayText":Ljava/lang/CharSequence;
    iget v6, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodImageAvatarWidth:I

    iget v7, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodImageAvatarHeight:I

    .line 267
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 266
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 268
    .local v3, "out":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 271
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 272
    .local v5, "shape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 273
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 274
    iget-object v6, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060031

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 275
    iget v6, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodImageAvatarWidth:I

    iget v7, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodImageAvatarHeight:I

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 276
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 280
    .local v4, "paint":Landroid/graphics/Paint;
    iget-object v6, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060032

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 282
    iget-object v6, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/car/UserGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 283
    const v7, 0x7f070068

    .line 282
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 284
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 290
    .local v2, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodImageAvatarWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    .line 291
    iget v8, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodImageAvatarHeight:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 290
    invoke-virtual {v0, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 293
    return-object v3
.end method

.method private getIconsPerPage()I
    .locals 3

    .prologue
    .line 227
    iget v0, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mContainerWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodMarginBetween:I

    add-int/2addr v0, v1

    .line 228
    iget v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodMarginBetween:I

    add-int/2addr v1, v2

    .line 227
    div-int/2addr v0, v1

    return v0
.end method

.method private makeUserPod(Landroid/view/LayoutInflater;Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 298
    iget-object v5, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mUserAdapter:Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;

    invoke-virtual {v5, p3}, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v3

    .line 299
    .local v3, "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    const v5, 0x7f0d0021

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 301
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0a02be

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 302
    .local v2, "nameView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 303
    iget-object v5, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mUserAdapter:Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;

    invoke-virtual {v5, p2, v3}, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {v4, v5}, Landroid/view/View;->setActivated(Z)V

    .line 309
    :goto_0
    const v5, 0x7f0a02bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 310
    .local v1, "iconView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 311
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getDefaultUserIcon(Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    :goto_1
    new-instance v5, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc$2;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-object v4

    .line 306
    .end local v1    # "iconView":Landroid/widget/ImageView;
    :cond_1
    const v5, 0x7f1104e9

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    .restart local v1    # "iconView":Landroid/widget/ImageView;
    :cond_2
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v5, :cond_3

    .line 313
    const v5, 0x7f080082

    invoke-virtual {p2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const v5, 0x7f060031

    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 315
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 317
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    return-void
.end method

.method public getCount()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getIconsPerPage()I

    move-result v0

    .line 342
    .local v0, "iconsPerPage":I
    if-nez v0, :cond_0

    .line 343
    return v1

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mUserAdapter:Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;->getCount()I

    move-result v1

    int-to-double v2, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getIconsPerPage()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 233
    iget-object v8, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 237
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0d0022

    const/4 v9, 0x0

    .line 236
    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 239
    .local v6, "pods":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getIconsPerPage()I

    move-result v2

    .line 240
    .local v2, "iconsPerPage":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mUserAdapter:Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/car/UserGridView$WrappedBaseUserAdapter;->getCount()I

    move-result v8

    add-int/lit8 v9, p2, 0x1

    mul-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 241
    .local v4, "limit":I
    mul-int v1, p2, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 242
    invoke-direct {p0, v3, v0, v1, v6}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->makeUserPod(Landroid/view/LayoutInflater;Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 243
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    add-int/lit8 v8, v4, -0x1

    if-ge v1, v8, :cond_0

    const/4 v8, 0x1

    if-le v4, v8, :cond_0

    .line 248
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mPodMarginBetween:I

    invoke-virtual {v5, v10, v10, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    return-object v6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 354
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_UserGridView$Adapter_13960(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;Landroid/view/View;)V
    .locals 1
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->-get0(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->-get0(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;->onUserSelected(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 329
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->showOfflineAuthUi()V

    :goto_0
    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->-get1(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 360
    sub-int v0, p2, p4

    sub-int v1, p4, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->mContainerWidth:I

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->notifyDataSetChanged()V

    .line 362
    return-void
.end method
