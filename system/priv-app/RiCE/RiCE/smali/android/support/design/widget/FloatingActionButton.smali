.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/support/design/widget/VisibilityAwareImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;,
        Landroid/support/design/widget/FloatingActionButton$Behavior;,
        Landroid/support/design/widget/FloatingActionButton$Size;,
        Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final AUTO_MINI_LARGEST_SCREEN_WIDTH:I = 0x1d6

.field private static final LOG_TAG:Ljava/lang/String; = "FloatingActionButton"

.field public static final NO_CUSTOM_SIZE:I = 0x0

.field public static final SIZE_AUTO:I = -0x1

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field mCompatPadding:Z

.field private mCustomSize:I

.field private mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

.field mImagePadding:I

.field private mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

.field private mMaxImageSize:I

.field private mRippleColor:I

.field final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I

.field private final mTouchArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 162
    invoke-direct/range {p0 .. p3}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    .line 164
    invoke-static/range {p1 .. p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 166
    sget-object v0, Landroid/support/design/R$styleable;->FloatingActionButton:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 169
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 170
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/design/widget/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 172
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_rippleColor:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 173
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    .line 174
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_fabCustomSize:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->mCustomSize:I

    .line 176
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    .line 177
    sget v0, Landroid/support/design/R$styleable;->FloatingActionButton_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 178
    sget v3, Landroid/support/design/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 180
    sget v3, Landroid/support/design/R$styleable;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    new-instance p1, Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    .line 184
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/design/R$dimen;->design_fab_image_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mMaxImageSize:I

    .line 188
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p1

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object p3, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v2, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    iget v3, p0, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 190
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    .line 191
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    return-void
.end method

.method static synthetic access$001(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 69
    invoke-super/range {p0 .. p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createImpl()Landroid/support/design/widget/FloatingActionButtonImpl;
    .locals 2

    .line 837
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 838
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonLollipop;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/FloatingActionButtonLollipop;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V

    return-object v0

    .line 840
    :cond_0
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$ShadowDelegateImpl;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V

    return-object v0
.end method

.method private getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;
    .locals 1

    .line 830
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    if-nez v0, :cond_0

    .line 831
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->createImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    .line 833
    :cond_0
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    return-object p0
.end method

.method private getSizeDimension(I)I
    .locals 3

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 474
    iget v1, p0, Landroid/support/design/widget/FloatingActionButton;->mCustomSize:I

    if-eqz v1, :cond_0

    .line 475
    iget p0, p0, Landroid/support/design/widget/FloatingActionButton;->mCustomSize:I

    return p0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    .line 489
    sget p0, Landroid/support/design/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 486
    :cond_1
    sget p0, Landroid/support/design/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 480
    :cond_2
    invoke-virtual/range {v0 .. v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 481
    invoke-virtual/range {v0 .. v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 482
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_3

    .line 483
    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 484
    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static resolveAdjustedSize(II)I
    .locals 2

    .line 546
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 547
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    .line 558
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method private wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .locals 1
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 429
    :cond_0
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 507
    invoke-super/range {p0 .. p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->drawableStateChanged()V

    .line 508
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 251
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 279
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getCompatElevation()F
    .locals 0

    .line 814
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getElevation()F

    move-result p0

    return p0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 541
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getContentBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getContentRect(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 524
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 526
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 527
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 528
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 529
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getCustomSize()I
    .locals 0

    .line 464
    iget p0, p0, Landroid/support/design/widget/FloatingActionButton;->mCustomSize:I

    return p0
.end method

.method public getRippleColor()I
    .locals 0
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 222
    iget p0, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    return p0
.end method

.method public getSize()I
    .locals 0

    .line 419
    iget p0, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    return p0
.end method

.method getSizeDimension()I
    .locals 1

    .line 468
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension(I)I

    move-result p0

    return p0
.end method

.method public getUseCompatPadding()Z
    .locals 0

    .line 390
    iget-boolean p0, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    return p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method

.method public hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    return-void
.end method

.method hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 1
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 360
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 513
    invoke-super/range {p0 .. p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->jumpDrawablesToCurrentState()V

    .line 514
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 495
    invoke-super/range {p0 .. p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->onAttachedToWindow()V

    .line 496
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 501
    invoke-super/range {p0 .. p0}, Landroid/support/design/widget/VisibilityAwareImageButton;->onDetachedFromWindow()V

    .line 502
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 198
    iget v1, p0, Landroid/support/design/widget/FloatingActionButton;->mMaxImageSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->mImagePadding:I

    .line 199
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->updatePadding()V

    .line 201
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result p1

    .line 202
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result p2

    .line 206
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 209
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 570
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mTouchArea:Landroid/graphics/Rect;

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 579
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    .line 310
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    .line 300
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    .line 305
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 262
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 263
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 264
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 292
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 293
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 294
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 0

    .line 826
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    return-void
.end method

.method public setCustomSize(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 455
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mCustomSize:I

    return-void

    .line 453
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Custom size should be non-negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 316
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/AppCompatImageHelper;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatImageHelper;->setImageResource(I)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 236
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    if-eq v0, p1, :cond_0

    .line 237
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 238
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setRippleColor(I)V

    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 1

    .line 405
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    if-eq p1, v0, :cond_0

    .line 406
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .line 374
    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 375
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton;->mCompatPadding:Z

    .line 376
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onCompatShadowChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 68
    invoke-super/range {p0 .. p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method

.method public show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 334
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 1

    .line 338
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/FloatingActionButtonImpl;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    return-void
.end method
