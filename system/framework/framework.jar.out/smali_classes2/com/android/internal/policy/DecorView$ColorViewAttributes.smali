.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field final seascapeGravity:I

.field final systemUiHideFlag:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I


# direct methods
.method private constructor <init>(IIIIILjava/lang/String;II)V
    .locals 0
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "horizontalGravity"    # I
    .param p5, "seascapeGravity"    # I
    .param p6, "transitionName"    # Ljava/lang/String;
    .param p7, "id"    # I
    .param p8, "hideWindowFlag"    # I

    .prologue
    .line 2436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2439
    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    .line 2440
    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    .line 2441
    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    .line 2442
    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 2443
    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    .line 2444
    iput p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    .line 2445
    iput-object p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    .line 2446
    iput p8, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    .line 2447
    return-void
.end method

.method synthetic constructor <init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes;)V
    .locals 0
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "horizontalGravity"    # I
    .param p5, "seascapeGravity"    # I
    .param p6, "transitionName"    # Ljava/lang/String;
    .param p7, "id"    # I
    .param p8, "hideWindowFlag"    # I
    .param p9, "-this8"    # Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public isPresent(IIZ)Z
    .locals 2
    .param p1, "sysUiVis"    # I
    .param p2, "windowFlags"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2450
    iget v1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    .line 2451
    iget v1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_1

    .line 2452
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 2450
    .end local p3    # "force":Z
    :goto_0
    return p3

    .line 2452
    .restart local p3    # "force":Z
    :cond_0
    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 2450
    goto :goto_0
.end method

.method public isVisible(IIIZ)Z
    .locals 2
    .param p1, "sysUiVis"    # I
    .param p2, "color"    # I
    .param p3, "windowFlags"    # I
    .param p4, "force"    # Z

    .prologue
    .line 2463
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(IIZ)Z

    move-result v0

    .line 2464
    .local v0, "present":Z
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v1

    return v1
.end method

.method public isVisible(ZIIZ)Z
    .locals 2
    .param p1, "present"    # Z
    .param p2, "color"    # I
    .param p3, "windowFlags"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2457
    if-eqz p1, :cond_1

    .line 2458
    const/high16 v1, -0x1000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 2459
    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 2457
    .end local p4    # "force":Z
    :goto_0
    return p4

    .line 2459
    .restart local p4    # "force":Z
    :cond_0
    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    move p4, v0

    .line 2457
    goto :goto_0
.end method
