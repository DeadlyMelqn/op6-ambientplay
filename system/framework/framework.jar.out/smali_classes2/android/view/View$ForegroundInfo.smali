.class Landroid/view/View$ForegroundInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForegroundInfo"
.end annotation


# instance fields
.field private mBoundsChanged:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mGravity:I

.field private mInsidePadding:Z

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mTintInfo:Landroid/view/View$TintInfo;


# direct methods
.method static synthetic -get0(Landroid/view/View$ForegroundInfo;)Z
    .locals 1
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;

    .prologue
    iget-boolean v0, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    return v0
.end method

.method static synthetic -get1(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/View$ForegroundInfo;)I
    .locals 1
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;

    .prologue
    iget v0, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    return v0
.end method

.method static synthetic -get3(Landroid/view/View$ForegroundInfo;)Z
    .locals 1
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;

    .prologue
    iget-boolean v0, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    return v0
.end method

.method static synthetic -get4(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get5(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get6(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;
    .locals 1
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;

    return-object v0
.end method

.method static synthetic -set0(Landroid/view/View$ForegroundInfo;Z)Z
    .locals 0
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    return p1
.end method

.method static synthetic -set1(Landroid/view/View$ForegroundInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;
    .param p1, "-value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set2(Landroid/view/View$ForegroundInfo;I)I
    .locals 0
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    return p1
.end method

.method static synthetic -set3(Landroid/view/View$ForegroundInfo;Z)Z
    .locals 0
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    return p1
.end method

.method static synthetic -set4(Landroid/view/View$ForegroundInfo;Landroid/view/View$TintInfo;)Landroid/view/View$TintInfo;
    .locals 0
    .param p0, "-this"    # Landroid/view/View$ForegroundInfo;
    .param p1, "-value"    # Landroid/view/View$TintInfo;

    .prologue
    iput-object p1, p0, Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4080
    const/16 v0, 0x77

    iput v0, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    .line 4081
    iput-boolean v1, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    .line 4082
    iput-boolean v1, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    .line 4083
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;

    .line 4084
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;

    .line 4077
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$ForegroundInfo;)V
    .locals 0
    .param p1, "-this0"    # Landroid/view/View$ForegroundInfo;

    .prologue
    invoke-direct {p0}, Landroid/view/View$ForegroundInfo;-><init>()V

    return-void
.end method
