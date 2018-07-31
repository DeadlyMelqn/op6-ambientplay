.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentWindowView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;,
        Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mConfirm:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->initViews()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "confirm"    # Ljava/lang/Runnable;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 247
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    .line 208
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 248
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->setImportantForAccessibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    .line 251
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 253
    return-void
.end method

.method private initViews()V
    .locals 14

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->removeAllViews()V

    .line 293
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get5(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-set1(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;I)I

    .line 297
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get3(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 298
    const v2, 0x7f0d00af

    .line 304
    .local v2, "layout":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v2, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    .line 307
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    const v11, 0x7f0a01ed

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 308
    .local v8, "title":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 309
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f11038b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    .local v6, "span":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 311
    .local v7, "start":I
    const-string/jumbo v10, "pin_off"

    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0801fb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    .local v0, "hide":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    new-instance v1, Landroid/text/style/ImageSpan;

    const/4 v10, 0x1

    invoke-direct {v1, v0, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 315
    .local v1, "image":Landroid/text/style/ImageSpan;
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v6, v1, v7, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 316
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v0    # "hide":Landroid/graphics/drawable/Drawable;
    .end local v1    # "image":Landroid/text/style/ImageSpan;
    .end local v6    # "span":Landroid/text/SpannableStringBuilder;
    .end local v7    # "start":I
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    const v11, 0x7f0a0216

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 320
    .local v5, "ok":Landroid/widget/Button;
    new-instance v10, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$4;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 329
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContentLayout:Landroid/view/ViewGroup;

    .line 331
    .local v9, "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get3(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get3(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070275

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 333
    .local v3, "offsetX":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070277

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 338
    .local v4, "offsetY":I
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get3(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 339
    rsub-int/lit8 v3, v3, 0x0

    .line 341
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 342
    int-to-float v10, v3

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 343
    int-to-float v10, v4

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 345
    new-instance v10, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;

    invoke-direct {v10, p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 373
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .end local v9    # "view":Landroid/view/View;
    :goto_2
    return-void

    .line 299
    .end local v2    # "layout":I
    .end local v5    # "ok":Landroid/widget/Button;
    .end local v8    # "title":Landroid/widget/TextView;
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get3(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 300
    const v2, 0x7f0d00ae

    .restart local v2    # "layout":I
    goto/16 :goto_0

    .line 302
    .end local v2    # "layout":I
    :cond_4
    const v2, 0x7f0d00ad

    .restart local v2    # "layout":I
    goto/16 :goto_0

    .line 335
    .restart local v5    # "ok":Landroid/widget/Button;
    .restart local v8    # "title":Landroid/widget/TextView;
    .restart local v9    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070274

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 336
    .restart local v3    # "offsetX":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070276

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .restart local v4    # "offsetY":I
    goto :goto_1

    .line 371
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .end local v9    # "view":Landroid/view/View;
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v11, -0x80000000

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 259
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mContext:Landroid/content/Context;

    .line 260
    const/4 v2, 0x3

    .line 259
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->enable()V

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->initViews()V

    .line 266
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->mOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->disable()V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get2(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V

    .line 282
    const-wide/16 v2, 0xfa

    .line 272
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method
