.class public Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;
.super Landroid/widget/RelativeLayout;
.source "OemCameraNotchGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemCameraNotchGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotchTipsView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$1;,
        Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field private mCirclePaint:Landroid/graphics/Paint;

.field private mOrientationListener:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/OemCameraNotchGuide;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->initViews()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/OemCameraNotchGuide;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/OemCameraNotchGuide;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    .line 165
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 299
    new-instance v0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$1;-><init>(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)V

    iput-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 166
    invoke-direct {p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->init()V

    .line 167
    return-void
.end method

.method private drawTriangle(IIIIZLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "inverted"    # Z
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 216
    .local v0, "p1":Landroid/graphics/Point;
    div-int/lit8 v6, p3, 0x2

    add-int v4, p1, v6

    .line 217
    .local v4, "pointX":I
    if-eqz p5, :cond_0

    add-int v5, p2, p4

    .line 218
    .local v5, "pointY":I
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 219
    .local v1, "p2":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    add-int v6, p1, p3

    invoke-direct {v2, v6, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 221
    .local v2, "p3":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 222
    .local v3, "path":Landroid/graphics/Path;
    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 223
    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 224
    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 228
    invoke-virtual {p7, v3, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    return-void

    .line 217
    .end local v1    # "p2":Landroid/graphics/Point;
    .end local v2    # "p3":Landroid/graphics/Point;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v5    # "pointY":I
    :cond_0
    sub-int v5, p2, p4

    .restart local v5    # "pointY":I
    goto :goto_0
.end method

.method private drawTriangleland(IIIIZLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "inverted"    # Z
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 200
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 201
    .local v0, "p1":Landroid/graphics/Point;
    if-eqz p5, :cond_0

    sub-int v4, p1, p4

    .line 202
    .local v4, "pointX":I
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    div-int/lit8 v5, p3, 0x2

    sub-int v5, p2, v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 203
    .local v1, "p2":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v5, p2

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 205
    .local v2, "p3":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 206
    .local v3, "path":Landroid/graphics/Path;
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 207
    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 212
    invoke-virtual {p7, v3, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 213
    return-void

    .line 201
    .end local v1    # "p2":Landroid/graphics/Point;
    .end local v2    # "p3":Landroid/graphics/Point;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "pointX":I
    :cond_0
    add-int v4, p1, p4

    .restart local v4    # "pointX":I
    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 169
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->setBackgroundColor(I)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mCirclePaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mCirclePaint:Landroid/graphics/Paint;

    const v1, -0xdf721d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    return-void
.end method

.method private initViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 241
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget-object v6, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v6}, Lcom/android/server/policy/OemCameraNotchGuide;->-get2(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    iput v6, v5, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    .line 242
    const-string/jumbo v5, "OemCameraNotchGuide"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initViews OemCameraNotchGuide mRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v7, v7, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->removeAllViews()V

    .line 244
    iget-object v6, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mContext:Landroid/content/Context;

    .line 245
    const v7, 0x5030003

    .line 244
    invoke-static {v5, v7, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v6, v5}, Lcom/android/server/policy/OemCameraNotchGuide;->-set0(Lcom/android/server/policy/OemCameraNotchGuide;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 246
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v5}, Lcom/android/server/policy/OemCameraNotchGuide;->-get0(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 247
    const v6, 0x50e0003

    .line 246
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 248
    .local v1, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v5, v5, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 250
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v5, v5, Lcom/android/server/policy/OemCameraNotchGuide;->mMarginNotchland:I

    invoke-virtual {v2, v5, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v5}, Lcom/android/server/policy/OemCameraNotchGuide;->-get0(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 264
    const v6, 0x50e0006

    .line 263
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 265
    .local v4, "ok":Landroid/widget/Button;
    new-instance v5, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$2;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$2;-><init>(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v5}, Lcom/android/server/policy/OemCameraNotchGuide;->-get0(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 275
    const v6, 0x50e0005

    .line 274
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 276
    .local v0, "go":Landroid/widget/Button;
    new-instance v5, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$3;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$3;-><init>(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v5}, Lcom/android/server/policy/OemCameraNotchGuide;->-get0(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->getBubbleLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mOrientationListener:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;

    if-nez v5, :cond_0

    .line 288
    new-instance v5, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;

    iget-object v6, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v9}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;-><init>(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mOrientationListener:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;

    .line 291
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mOrientationListener:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;

    invoke-virtual {v5}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;->enable()V

    .line 292
    return-void

    .line 253
    .end local v0    # "go":Landroid/widget/Button;
    .end local v4    # "ok":Landroid/widget/Button;
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v5, v5, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    if-ne v5, v9, :cond_2

    .line 255
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v5, v5, Lcom/android/server/policy/OemCameraNotchGuide;->mMarginNotchland:I

    invoke-virtual {v2, v8, v8, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 259
    const v6, 0x505000c

    .line 258
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 260
    .local v3, "margin_left2":I
    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v5, v5, Lcom/android/server/policy/OemCameraNotchGuide;->mMarginNotchTop:I

    invoke-virtual {v2, v3, v5, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getBubbleLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 308
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 309
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 310
    const v2, 0x10500a0

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 311
    const/4 v2, -0x2

    .line 308
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v1, v1, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 313
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 315
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v1, v1, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 317
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 233
    invoke-direct {p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->initViews()V

    .line 234
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 237
    const-string/jumbo v0, "OemCameraNotchGuide"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mOrientationListener:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mOrientationListener:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;->disable()V

    .line 298
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    const v6, 0x5050009

    .line 178
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 180
    .local v3, "width":I
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    const v6, 0x505000a

    .line 180
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 182
    .local v4, "height":I
    const/4 v1, 0x0

    .line 183
    .local v1, "x":I
    const/4 v2, 0x0

    .line 184
    .local v2, "y":I
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v0, v0, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    if-ne v0, v7, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v0, v0, Lcom/android/server/policy/OemCameraNotchGuide;->mMarginNotchland:I

    sub-int v1, v0, v4

    .line 186
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v0, v0, Lcom/android/server/policy/OemCameraNotchGuide;->mScreenWidth:I

    div-int/lit8 v2, v0, 0x2

    .line 187
    iget-object v6, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->drawTriangleland(IIIIZLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 197
    :goto_0
    const-string/jumbo v0, "OemCameraNotchGuide"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDraw OemCameraNotchGuide x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v0, v0, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->getMeasuredWidth()I

    move-result v0

    iget-object v5, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v5, v5, Lcom/android/server/policy/OemCameraNotchGuide;->mMarginNotchland:I

    sub-int/2addr v0, v5

    add-int v1, v0, v4

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v0, v0, Lcom/android/server/policy/OemCameraNotchGuide;->mScreenWidth:I

    div-int/lit8 v2, v0, 0x2

    .line 191
    iget-object v6, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move v5, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->drawTriangleland(IIIIZLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v0, v0, Lcom/android/server/policy/OemCameraNotchGuide;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int v1, v0, v6

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v2, v0, Lcom/android/server/policy/OemCameraNotchGuide;->mMarginNotchTop:I

    .line 195
    iget-object v6, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->drawTriangle(IIIIZLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
