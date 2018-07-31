.class public Lcom/android/server/policy/ScreenDecor;
.super Ljava/lang/Object;
.source "ScreenDecor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ScreenDecor$ScreenHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_SCREEN_DECOR:I = 0x2

.field private static final ONEPLUS_PRODUCT_DUMPLING:Ljava/lang/String; = "dumpling"

.field private static final ONEPLUS_PRODUCT_ENCHILADA:Ljava/lang/String; = "enchilada"

.field private static final SCREEN_DECOR_BOTTOM:I = 0x0

.field private static final SCREEN_DECOR_LEFT:I = 0x2

.field private static final SCREEN_DECOR_RIGHT:I = 0x1

.field private static final SCREEN_DECOR_TOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ScreenDecor"

.field static final UPDATE_SCREEN_DECOR:I = 0x1

.field private static mProductName:Ljava/lang/String;


# instance fields
.field downBitmap_0:Landroid/graphics/Bitmap;

.field downBitmap_180:Landroid/graphics/Bitmap;

.field downBitmap_270:Landroid/graphics/Bitmap;

.field downBitmap_90:Landroid/graphics/Bitmap;

.field mAlreadyExpand:Z

.field mContext:Landroid/content/Context;

.field mDownHeight:I

.field mDownLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mDownView:Landroid/view/View;

.field mExpandAllowed:Z

.field mExpandOffset:I

.field mExpandUpHeight:I

.field mHandler:Lcom/android/server/policy/ScreenDecor$ScreenHandler;

.field mPolicy:Landroid/view/WindowManagerPolicy;

.field mRotation:I

.field protected mScreenDecorDownView:Landroid/widget/ImageView;

.field protected mScreenDecorUpExpandView:Landroid/widget/ImageView;

.field protected mScreenDecorUpView:Landroid/widget/ImageView;

.field mUpExpand:Z

.field mUpExpandLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mUpExpandView:Landroid/view/View;

.field mUpHeight:I

.field mUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mUpView:Landroid/view/View;

.field mWindowManager:Landroid/view/WindowManager;

.field upBitmap_0:Landroid/graphics/Bitmap;

.field upBitmap_180:Landroid/graphics/Bitmap;

.field upBitmap_270:Landroid/graphics/Bitmap;

.field upBitmap_90:Landroid/graphics/Bitmap;

.field upExpandBitmap_0:Landroid/graphics/Bitmap;

.field upExpandBitmap_180:Landroid/graphics/Bitmap;

.field upExpandBitmap_270:Landroid/graphics/Bitmap;

.field upExpandBitmap_90:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/policy/ScreenDecor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/ScreenDecor;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/ScreenDecor;->refreshScreenDecor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorUpView:Landroid/widget/ImageView;

    .line 71
    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorUpExpandView:Landroid/widget/ImageView;

    .line 72
    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorDownView:Landroid/widget/ImageView;

    .line 73
    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpView:Landroid/view/View;

    .line 74
    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    .line 75
    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mDownView:Landroid/view/View;

    .line 102
    iput-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    .line 127
    iput-object p1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/server/policy/ScreenDecor;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    .line 130
    new-instance v0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ScreenDecor$ScreenHandler;-><init>(Lcom/android/server/policy/ScreenDecor;)V

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mHandler:Lcom/android/server/policy/ScreenDecor$ScreenHandler;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->loadBitmap()V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->initScreenDecorView()V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->addScreenDecor()V

    .line 134
    return-void
.end method

.method public static isSupportRoundScreen()Z
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/ScreenDecor;->mProductName:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "enchilada"

    sget-object v1, Lcom/android/server/policy/ScreenDecor;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-string/jumbo v0, "dumpling"

    sget-object v1, Lcom/android/server/policy/ScreenDecor;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    if-eqz v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private refreshScreenDecor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->updateViewPicture()V

    .line 155
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mUpView:Landroid/view/View;

    .line 156
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/policy/ScreenDecor;->updateLayoutParams(Landroid/view/WindowManager$LayoutParams;ZZ)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 155
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mDownView:Landroid/view/View;

    .line 158
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mDownLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/policy/ScreenDecor;->updateLayoutParams(Landroid/view/WindowManager$LayoutParams;ZZ)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 157
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    .line 160
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/policy/ScreenDecor;->updateLayoutParams(Landroid/view/WindowManager$LayoutParams;ZZ)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 159
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method


# virtual methods
.method public addScreenDecor()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->updateViewPicture()V

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ScreenDecor;->getDecorLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 304
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mUpView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mUpLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->getExpandLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 307
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->expandEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/policy/ScreenDecor;->getDecorLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mDownLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 318
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mDownView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->mDownLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method createExpandBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 337
    iget-object v6, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 338
    const v7, 0x105016a

    .line 337
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOffset:I

    .line 339
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 340
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    iget-object v6, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 342
    iget-object v6, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 343
    const v7, 0x502000b

    .line 342
    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 344
    .local v5, "smallAngle":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 346
    iget v7, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOffset:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 344
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    .local v1, "expandBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 348
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 349
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 350
    .local v2, "mPaint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOffset:I

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 351
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 352
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/policy/ScreenDecor;->mExpandOffset:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 353
    return-object v1
.end method

.method doExpandScreenDecor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    iget-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    if-ne v0, v1, :cond_0

    .line 379
    return-void

    .line 380
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    .line 382
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    if-eqz v0, :cond_1

    .line 385
    iput-boolean v2, p0, Lcom/android/server/policy/ScreenDecor;->mAlreadyExpand:Z

    .line 386
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method expandEnable()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandScreenDecor(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-ne p1, v0, :cond_1

    .line 395
    :cond_0
    return-void

    .line 396
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    .line 397
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mHandler:Lcom/android/server/policy/ScreenDecor$ScreenHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->sendEmptyMessage(I)Z

    .line 398
    return-void
.end method

.method getDecorLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 2
    .param p1, "top"    # Z

    .prologue
    .line 247
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 248
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 249
    const-string/jumbo v1, "ScreenDecorTop"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 254
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/policy/ScreenDecor;->updateLayoutParams(Landroid/view/WindowManager$LayoutParams;ZZ)Landroid/view/WindowManager$LayoutParams;

    .line 255
    return-object v0

    .line 251
    :cond_0
    const-string/jumbo v1, "ScreenDecorBottom"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method getDownHeight()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/server/policy/ScreenDecor;->mDownHeight:I

    return v0
.end method

.method getExpandLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 259
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 260
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "ScreenDecorExpand"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    const/16 v1, 0x7e1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 263
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/policy/ScreenDecor;->updateLayoutParams(Landroid/view/WindowManager$LayoutParams;ZZ)Landroid/view/WindowManager$LayoutParams;

    .line 264
    return-object v0
.end method

.method getUpExpandHeight()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/android/server/policy/ScreenDecor;->mExpandUpHeight:I

    return v0
.end method

.method getUpHeight()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpHeight:I

    return v0
.end method

.method initScreenDecorView()V
    .locals 4

    .prologue
    const v3, 0x50e0002

    const v1, 0x5030002

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpView:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorUpView:Landroid/widget/ImageView;

    .line 212
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mUpExpandView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorUpExpandView:Landroid/widget/ImageView;

    .line 214
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 215
    const v1, 0x5030001

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mDownView:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mDownView:Landroid/view/View;

    .line 217
    const v1, 0x50e0001

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorDownView:Landroid/widget/ImageView;

    .line 218
    return-void
.end method

.method public final loadBitmap()V
    .locals 6

    .prologue
    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 170
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 171
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 173
    const-string/jumbo v1, "dumpling"

    sget-object v2, Lcom/android/server/policy/ScreenDecor;->mProductName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    const v2, 0x5020009

    .line 174
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_0:Landroid/graphics/Bitmap;

    .line 176
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    const v2, 0x5020007

    .line 176
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_0:Landroid/graphics/Bitmap;

    .line 186
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_90:Landroid/graphics/Bitmap;

    .line 187
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_180:Landroid/graphics/Bitmap;

    .line 188
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_270:Landroid/graphics/Bitmap;

    .line 189
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/ScreenDecor;->mUpHeight:I

    .line 191
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_90:Landroid/graphics/Bitmap;

    .line 192
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_180:Landroid/graphics/Bitmap;

    .line 193
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_270:Landroid/graphics/Bitmap;

    .line 194
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/ScreenDecor;->mDownHeight:I

    .line 196
    iget-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->createExpandBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    .line 198
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_90:Landroid/graphics/Bitmap;

    .line 199
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_180:Landroid/graphics/Bitmap;

    .line 200
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/policy/ScreenDecor;->rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_270:Landroid/graphics/Bitmap;

    .line 201
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandUpHeight:I

    .line 203
    :cond_1
    return-void

    .line 178
    :cond_2
    const-string/jumbo v1, "enchilada"

    sget-object v2, Lcom/android/server/policy/ScreenDecor;->mProductName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    const v2, 0x502000a

    .line 179
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_0:Landroid/graphics/Bitmap;

    .line 181
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 182
    const v2, 0x5020008

    .line 181
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_0:Landroid/graphics/Bitmap;

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/ScreenDecor;->mExpandAllowed:Z

    goto/16 :goto_0
.end method

.method public onRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 146
    const-string/jumbo v0, "ScreenDecor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRotationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput p1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->mHandler:Lcom/android/server/policy/ScreenDecor$ScreenHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->sendEmptyMessage(I)Z

    .line 151
    return-void
.end method

.method public rotate(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "angle"    # F

    .prologue
    const/4 v1, 0x0

    .line 164
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    .local v5, "matrix":Landroid/graphics/Matrix;
    neg-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method updateLayoutParams(Landroid/view/WindowManager$LayoutParams;ZZ)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "top"    # Z
    .param p3, "expand"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 269
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->getUpExpandHeight()I

    move-result v0

    .line 272
    .local v0, "height":I
    :goto_0
    if-eqz p2, :cond_4

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-nez v1, :cond_4

    .line 273
    :cond_0
    const v1, 0x800033

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 274
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 275
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 289
    :cond_1
    :goto_1
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 290
    const v1, 0x80518

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 295
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 296
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 297
    return-object p1

    .line 270
    .end local v0    # "height":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->getUpHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 271
    .end local v0    # "height":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/ScreenDecor;->getDownHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 272
    :cond_4
    if-nez p2, :cond_5

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-eq v1, v4, :cond_0

    .line 276
    :cond_5
    if-eqz p2, :cond_7

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-ne v1, v3, :cond_7

    .line 277
    :cond_6
    const v1, 0x800033

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 278
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 279
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 276
    :cond_7
    if-nez p2, :cond_8

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-eq v1, v5, :cond_6

    .line 280
    :cond_8
    if-eqz p2, :cond_a

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-ne v1, v5, :cond_a

    .line 281
    :cond_9
    const v1, 0x800035

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 282
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 283
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 280
    :cond_a
    if-nez p2, :cond_b

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-eq v1, v3, :cond_9

    .line 284
    :cond_b
    if-nez p2, :cond_c

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-nez v1, :cond_c

    .line 285
    :goto_2
    const v1, 0x800053

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 286
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 287
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 284
    :cond_c
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    if-ne v1, v4, :cond_1

    goto :goto_2
.end method

.method updateViewPicture()V
    .locals 5

    .prologue
    .line 224
    iget v3, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_90:Landroid/graphics/Bitmap;

    .line 226
    .local v1, "bitmap_up":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_90:Landroid/graphics/Bitmap;

    .line 227
    .local v0, "bitmap_down":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_90:Landroid/graphics/Bitmap;

    .line 241
    .local v2, "bitmap_up_expand":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorUpView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    iget-object v3, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorUpExpandView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    iget-object v3, p0, Lcom/android/server/policy/ScreenDecor;->mScreenDecorDownView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    return-void

    .line 228
    .end local v0    # "bitmap_down":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap_up":Landroid/graphics/Bitmap;
    .end local v2    # "bitmap_up_expand":Landroid/graphics/Bitmap;
    :cond_0
    iget v3, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_270:Landroid/graphics/Bitmap;

    .line 230
    .restart local v1    # "bitmap_up":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_270:Landroid/graphics/Bitmap;

    .line 231
    .restart local v0    # "bitmap_down":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_270:Landroid/graphics/Bitmap;

    .restart local v2    # "bitmap_up_expand":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 232
    .end local v0    # "bitmap_down":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap_up":Landroid/graphics/Bitmap;
    .end local v2    # "bitmap_up_expand":Landroid/graphics/Bitmap;
    :cond_1
    iget v3, p0, Lcom/android/server/policy/ScreenDecor;->mRotation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 233
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_180:Landroid/graphics/Bitmap;

    .line 234
    .restart local v1    # "bitmap_up":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_180:Landroid/graphics/Bitmap;

    .line 235
    .restart local v0    # "bitmap_down":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_180:Landroid/graphics/Bitmap;

    .restart local v2    # "bitmap_up_expand":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 237
    .end local v0    # "bitmap_down":Landroid/graphics/Bitmap;
    .end local v1    # "bitmap_up":Landroid/graphics/Bitmap;
    .end local v2    # "bitmap_up_expand":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/ScreenDecor;->upBitmap_0:Landroid/graphics/Bitmap;

    .line 238
    .restart local v1    # "bitmap_up":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor;->downBitmap_0:Landroid/graphics/Bitmap;

    .line 239
    .restart local v0    # "bitmap_down":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    .restart local v2    # "bitmap_up_expand":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
