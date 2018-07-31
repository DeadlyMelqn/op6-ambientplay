.class public Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "LinkAccessibilityHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkAccessibilityHelper"


# instance fields
.field private final mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 78
    new-instance v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;-><init>(Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    .line 114
    :goto_0
    iput-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    .line 115
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    goto :goto_0
.end method

.method private static convertToLocalHorizontalCoordinate(Landroid/widget/TextView;F)F
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "x"    # F

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 342
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 343
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 344
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 345
    return p1
.end method

.method private getBoundsForSpan(Landroid/text/style/ClickableSpan;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "span"    # Landroid/text/style/ClickableSpan;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 294
    iget-object v9, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 295
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 296
    instance-of v9, v6, Landroid/text/Spanned;

    if-eqz v9, :cond_0

    .line 297
    iget-object v9, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 298
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    move-object v5, v6

    .line 299
    check-cast v5, Landroid/text/Spanned;

    .line 300
    .local v5, "spannedText":Landroid/text/Spanned;
    invoke-interface {v5, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 301
    .local v4, "spanStart":I
    invoke-interface {v5, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 302
    .local v3, "spanEnd":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    .line 303
    .local v8, "xStart":F
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    .line 304
    .local v7, "xEnd":F
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 305
    .local v2, "lineStart":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 306
    .local v1, "lineEnd":I
    invoke-virtual {v0, v2, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 307
    if-ne v1, v2, :cond_1

    .line 310
    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p2, Landroid/graphics/Rect;->left:I

    .line 311
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p2, Landroid/graphics/Rect;->right:I

    .line 325
    :goto_0
    iget-object v9, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 328
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "lineEnd":I
    .end local v2    # "lineStart":I
    .end local v3    # "spanEnd":I
    .end local v4    # "spanStart":I
    .end local v5    # "spannedText":Landroid/text/Spanned;
    .end local v7    # "xEnd":F
    .end local v8    # "xStart":F
    :cond_0
    return-object p2

    .line 317
    .restart local v0    # "layout":Landroid/text/Layout;
    .restart local v1    # "lineEnd":I
    .restart local v2    # "lineStart":I
    .restart local v3    # "spanEnd":I
    .restart local v4    # "spanStart":I
    .restart local v5    # "spannedText":Landroid/text/Spanned;
    .restart local v7    # "xEnd":F
    .restart local v8    # "xStart":F
    :cond_1
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 318
    float-to-int v9, v8

    iput v9, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 320
    :cond_2
    float-to-int v9, v8

    iput v9, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private static getLineAtCoordinate(Landroid/widget/TextView;F)I
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "y"    # F

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 351
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 352
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 353
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 354
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private static getOffsetAtCoordinate(Landroid/widget/TextView;IF)I
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    .line 358
    invoke-static {p0, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->convertToLocalHorizontalCoordinate(Landroid/widget/TextView;F)F

    move-result p2

    .line 359
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private static getOffsetForPosition(Landroid/widget/TextView;FF)I
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 335
    :cond_0
    invoke-static {p0, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getLineAtCoordinate(Landroid/widget/TextView;F)I

    move-result v0

    .line 336
    .local v0, "line":I
    invoke-static {p0, v0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getOffsetAtCoordinate(Landroid/widget/TextView;IF)I

    move-result v1

    return v1
.end method

.method private getSpanForOffset(I)Landroid/text/style/ClickableSpan;
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 270
    iget-object v3, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 271
    .local v2, "text":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 272
    check-cast v0, Landroid/text/Spanned;

    .line 273
    .local v0, "spannedText":Landroid/text/Spanned;
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 274
    .local v1, "spans":[Landroid/text/style/ClickableSpan;
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 275
    const/4 v3, 0x0

    aget-object v3, v1, v3

    return-object v3

    .line 278
    .end local v0    # "spannedText":Landroid/text/Spanned;
    .end local v1    # "spans":[Landroid/text/style/ClickableSpan;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "span"    # Landroid/text/style/ClickableSpan;

    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 283
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 284
    check-cast v0, Landroid/text/Spanned;

    .line 285
    .local v0, "spannedText":Landroid/text/Spanned;
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 286
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 285
    invoke-interface {v0, v2, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 288
    .end local v0    # "spannedText":Landroid/text/Spanned;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    goto :goto_0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 200
    iget-object v5, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 201
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 202
    check-cast v3, Landroid/text/Spanned;

    .line 203
    .local v3, "spannedText":Landroid/text/Spanned;
    iget-object v5, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-static {v5, p1, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getOffsetForPosition(Landroid/widget/TextView;FF)I

    move-result v2

    .line 204
    .local v2, "offset":I
    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {v3, v2, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 205
    .local v1, "linkSpans":[Landroid/text/style/ClickableSpan;
    array-length v5, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 206
    const/4 v5, 0x0

    aget-object v0, v1, v5

    .line 207
    .local v0, "linkSpan":Landroid/text/style/ClickableSpan;
    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    return v5

    .line 210
    .end local v0    # "linkSpan":Landroid/text/style/ClickableSpan;
    .end local v1    # "linkSpans":[Landroid/text/style/ClickableSpan;
    .end local v2    # "offset":I
    .end local v3    # "spannedText":Landroid/text/Spanned;
    :cond_0
    const/high16 v5, -0x80000000

    return v5
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 214
    iget-object v5, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 215
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v5, v3, Landroid/text/Spanned;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 216
    check-cast v2, Landroid/text/Spanned;

    .line 217
    .local v2, "spannedText":Landroid/text/Spanned;
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v5

    .line 218
    const-class v6, Landroid/text/style/ClickableSpan;

    .line 217
    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 219
    .local v0, "linkSpans":[Landroid/text/style/ClickableSpan;
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 220
    .local v1, "span":Landroid/text/style/ClickableSpan;
    invoke-interface {v2, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "linkSpans":[Landroid/text/style/ClickableSpan;
    .end local v1    # "span":Landroid/text/style/ClickableSpan;
    .end local v2    # "spannedText":Landroid/text/Spanned;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 257
    const/16 v1, 0x10

    if-ne p2, v1, :cond_1

    .line 258
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 259
    .local v0, "span":Landroid/text/style/ClickableSpan;
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 261
    const/4 v1, 0x1

    return v1

    .line 263
    :cond_0
    const-string/jumbo v1, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LinkSpan is null for offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v0    # "span":Landroid/text/style/ClickableSpan;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 227
    .local v0, "span":Landroid/text/style/ClickableSpan;
    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string/jumbo v1, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LinkSpan is null for offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 237
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getSpanForOffset(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 238
    .local v0, "span":Landroid/text/style/ClickableSpan;
    if-eqz v0, :cond_1

    .line 239
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getTextForSpan(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 244
    :goto_0
    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 245
    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getBoundsForSpan(Landroid/text/style/ClickableSpan;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 247
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const-string/jumbo v1, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LinkSpan bounds is empty for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v5, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 252
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 253
    return-void

    .line 241
    :cond_1
    const-string/jumbo v1, "LinkAccessibilityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LinkSpan is null for offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->mExploreByTouchHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method
