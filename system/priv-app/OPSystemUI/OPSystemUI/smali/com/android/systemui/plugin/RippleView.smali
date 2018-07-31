.class public Lcom/android/systemui/plugin/RippleView;
.super Landroid/view/View;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/RippleView$1;
    }
.end annotation


# static fields
.field public static MESSAGE_DELAY:I


# instance fields
.field private COLOR:I

.field private DURATION:F

.field private END_RADIUS_FISRT:F

.field private END_RADIUS_SECOND:F

.field private START_RADIUS_FIRST:F

.field private START_RADIUS_SECOND:F

.field private STROKE_WIDTH_FIRST:I

.field private STROKE_WIDTH_SECOUND:I

.field private final TAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isStartRipple:Z

.field private mClickCount:I

.field private mOffsetFirst:F

.field private mOffsetSecond:F

.field private mPositionX:I

.field private mPositionY:I

.field private mRipplePaintFirst:Landroid/graphics/Paint;

.field private mRipplePaintSecond:Landroid/graphics/Paint;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private rippleFirstRadius:I

.field private rippleSecendRadius:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/plugin/RippleView;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/plugin/RippleView;

    .prologue
    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/plugin/RippleView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/plugin/RippleView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/plugin/RippleView;->isStartRipple:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/plugin/RippleView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/plugin/RippleView;

    .prologue
    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/plugin/RippleView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/plugin/RippleView;

    .prologue
    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/plugin/RippleView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/plugin/RippleView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/plugin/RippleView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/plugin/RippleView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x14

    sput v0, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const-string/jumbo v0, "RippleView"

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    .line 27
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    .line 28
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    .line 29
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_SECOND:F

    .line 30
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_SECOND:F

    .line 31
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    .line 32
    const-string/jumbo v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_FIRST:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_SECOUND:I

    .line 39
    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    .line 47
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    .line 48
    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    .line 50
    new-instance v0, Lcom/android/systemui/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/RippleView$1;-><init>(Lcom/android/systemui/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RippleView;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string/jumbo v0, "RippleView"

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    .line 27
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    .line 28
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    .line 29
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_SECOND:F

    .line 30
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_SECOND:F

    .line 31
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    .line 32
    const-string/jumbo v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_FIRST:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_SECOUND:I

    .line 39
    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    .line 47
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    .line 48
    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    .line 50
    new-instance v0, Lcom/android/systemui/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/RippleView$1;-><init>(Lcom/android/systemui/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RippleView;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const-string/jumbo v0, "RippleView"

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    .line 27
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    .line 28
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    .line 29
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_SECOND:F

    .line 30
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_SECOND:F

    .line 31
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    .line 32
    const-string/jumbo v0, "#888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_FIRST:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_SECOUND:I

    .line 39
    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    .line 47
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    .line 48
    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    .line 50
    new-instance v0, Lcom/android/systemui/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/RippleView$1;-><init>(Lcom/android/systemui/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/RippleView;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 101
    iget-object v2, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v2, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v2, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 107
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 108
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    .line 109
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    .line 110
    return-void
.end method


# virtual methods
.method public generatePosition()V
    .locals 8

    .prologue
    .line 175
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 176
    .local v4, "rand":Ljava/util/Random;
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 177
    .local v0, "maxX":I
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v2, v5

    .line 178
    .local v2, "minX":I
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 179
    .local v1, "maxY":I
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v3, v5

    .line 181
    .local v3, "minY":I
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    if-nez v5, :cond_0

    .line 182
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 183
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v2, v5

    .line 184
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 185
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v3, v5

    .line 186
    sub-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    .line 187
    sub-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    .line 210
    :goto_0
    const-string/jumbo v5, "RippleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generatePosition : click = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " < x < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " < y < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v5, "RippleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generatePosition: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 188
    :cond_0
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 189
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 190
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 191
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 192
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v3, v5

    .line 193
    sub-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    .line 194
    sub-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    goto/16 :goto_0

    .line 195
    :cond_1
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 196
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 197
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 198
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 199
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 200
    sub-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    .line 201
    sub-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    goto/16 :goto_0

    .line 203
    :cond_2
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 204
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    float-to-int v2, v5

    .line 205
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 206
    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 207
    sub-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    .line 208
    sub-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->mScreenHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    goto/16 :goto_0
.end method

.method public isValidPosition(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    return v5

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 220
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 221
    .local v1, "y":F
    const-string/jumbo v2, "RippleView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidPosition: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    sub-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 223
    const-string/jumbo v2, "RippleView"

    const-string/jumbo v3, "isValidPosition: true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v2, 0x1

    return v2

    .line 226
    :cond_1
    return v5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide v10, 0x406fe00000000000L    # 255.0

    const-wide v8, 0x400921ff2e48e8a7L    # 3.1416

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget-boolean v2, p0, Lcom/android/systemui/plugin/RippleView;->isStartRipple:Z

    if-eqz v2, :cond_1

    .line 117
    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    if-ltz v2, :cond_0

    .line 118
    sget v2, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    double-to-int v0, v2

    .line 119
    .local v0, "i1":I
    iget-object v2, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mOffsetFirst:F

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->rippleFirstRadius:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 121
    iget-object v5, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    .end local v0    # "i1":I
    :cond_0
    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    if-ltz v2, :cond_1

    .line 124
    sget v2, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    double-to-int v1, v2

    .line 125
    .local v1, "i2":I
    iget-object v2, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget v2, p0, Lcom/android/systemui/plugin/RippleView;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/plugin/RippleView;->mPositionY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_SECOND:F

    iget v5, p0, Lcom/android/systemui/plugin/RippleView;->mOffsetSecond:F

    iget v6, p0, Lcom/android/systemui/plugin/RippleView;->rippleSecendRadius:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 127
    iget-object v5, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    .line 126
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    .end local v1    # "i2":I
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugin/RippleView;->isValidPosition(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 161
    .local v0, "isValid":Z
    const-string/jumbo v1, "RippleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent: isValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 164
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 171
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 166
    :cond_1
    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/plugin/RippleView;->stopRipple()V

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/plugin/RippleView;->startRipple()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mClickCount:I

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/plugin/RippleView;->generatePosition()V

    .line 150
    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_FISRT:F

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    sub-float/2addr v0, v1

    sget v1, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mOffsetFirst:F

    .line 151
    iget v0, p0, Lcom/android/systemui/plugin/RippleView;->END_RADIUS_SECOND:F

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->START_RADIUS_FIRST:F

    sub-float/2addr v0, v1

    sget v1, Lcom/android/systemui/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->DURATION:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/plugin/RippleView;->mOffsetSecond:F

    .line 152
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_FIRST:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->STROKE_WIDTH_SECOUND:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/plugin/RippleView;->COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    return-void
.end method

.method public startRipple()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/plugin/RippleView;->generatePosition()V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/RippleView;->startRipple(I)V

    .line 135
    return-void
.end method

.method public startRipple(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/RippleView;->isStartRipple:Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    int-to-long v2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    return-void
.end method

.method public stopRipple()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Lcom/android/systemui/plugin/RippleView;->isStartRipple:Z

    .line 144
    iget-object v0, p0, Lcom/android/systemui/plugin/RippleView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    return-void
.end method
