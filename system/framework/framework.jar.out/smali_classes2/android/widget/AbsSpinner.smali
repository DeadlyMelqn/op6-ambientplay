.class public abstract Landroid/widget/AbsSpinner;
.super Landroid/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSpinner$RecycleBin;,
        Landroid/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .param p0, "-this"    # Landroid/widget/AbsSpinner;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/AbsSpinner;->LOG_TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 48
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 49
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 50
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 51
    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 62
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 49
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 50
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 51
    iput v4, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 52
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    new-instance v3, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 77
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getImportantForAutofill()I

    move-result v3

    if-nez v3, :cond_0

    .line 78
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsSpinner;->setImportantForAutofill(I)V

    .line 81
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    .line 84
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    .line 83
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 87
    .local v2, "entries":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 88
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 89
    const v3, 0x1090008

    .line 88
    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 90
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setFocusable(Z)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 103
    return-void
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    sget-object v0, Landroid/widget/AbsSpinner;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 503
    :cond_1
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 504
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 378
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    .line 379
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 259
    const/4 v1, -0x1

    .line 260
    const/4 v2, -0x2

    .line 258
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 491
    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 316
    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 181
    .local v6, "widthMode":I
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_5

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 183
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 185
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 187
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    iget v10, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_8

    iget v8, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 190
    iget-boolean v8, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    .line 194
    :cond_0
    const/4 v2, 0x0

    .line 195
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 196
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .line 198
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 199
    .local v4, "selectedPosition":I
    if-ltz v4, :cond_3

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 201
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 202
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 204
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 207
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 211
    :cond_1
    if-eqz v5, :cond_3

    .line 213
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 215
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    .line 216
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 217
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 220
    :cond_2
    invoke-virtual {p0, v5, p1, p2}, Landroid/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 222
    invoke-virtual {p0, v5}, Landroid/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 223
    invoke-virtual {p0, v5}, Landroid/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 225
    const/4 v1, 0x0

    .line 229
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_4

    .line 231
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 232
    if-nez v6, :cond_4

    .line 233
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 237
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 238
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 240
    const/4 v8, 0x0

    invoke-static {v2, p2, v8}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v0

    .line 241
    .local v0, "heightSize":I
    const/4 v8, 0x0

    invoke-static {v3, p1, v8}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v7

    .line 243
    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, Landroid/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 244
    iput p2, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 245
    iput p1, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 246
    return-void

    .line 182
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_5
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 184
    :cond_6
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 186
    :cond_7
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 188
    :cond_8
    iget v8, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v6, 0x1

    move-object v0, p1

    .line 443
    check-cast v0, Landroid/widget/AbsSpinner$SavedState;

    .line 445
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 447
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 448
    iput-boolean v6, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    .line 449
    iput-boolean v6, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    .line 450
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsSpinner;->mSyncRowId:J

    .line 451
    iget v1, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncPosition:I

    .line 452
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncMode:I

    .line 453
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 455
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 430
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 431
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 432
    .local v0, "ss":Landroid/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    .line 433
    iget-wide v2, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    .line 438
    :goto_0
    return-object v0

    .line 436
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 354
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 355
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 356
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 357
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 361
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 362
    invoke-virtual {p0, v3}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 364
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 365
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    iget v4, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    return v4

    .line 361
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 370
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 265
    .local v0, "childCount":I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    .line 266
    .local v4, "recycleBin":Landroid/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    .line 269
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 270
    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 271
    .local v5, "v":Landroid/view/View;
    add-int v2, v3, v1

    .line 272
    .local v2, "index":I
    invoke-virtual {v4, v2, v5}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "index":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 331
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 333
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 155
    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    .line 156
    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    .line 158
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 159
    iput v2, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 160
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 162
    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 163
    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 164
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    .line 165
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 113
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 118
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 121
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 123
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 124
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mOldItemCount:I

    .line 125
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    .line 126
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    .line 128
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 129
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 131
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 133
    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 136
    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_1

    .line 138
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    .line 148
    .end local v0    # "position":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 149
    return-void

    .line 131
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "position":I
    goto :goto_0

    .line 142
    .end local v0    # "position":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    .line 143
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 145
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 289
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 290
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    .line 291
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 281
    if-eqz p2, :cond_1

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_1

    .line 282
    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 283
    .local v0, "shouldAnimate":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 284
    return-void

    .line 282
    .end local v0    # "shouldAnimate":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "shouldAnimate":Z
    goto :goto_0

    .line 281
    .end local v0    # "shouldAnimate":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "shouldAnimate":Z
    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 302
    iget v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 304
    iget v1, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 305
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 306
    invoke-virtual {p0, v0, p2}, Landroid/widget/AbsSpinner;->layout(IZ)V

    .line 307
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 309
    .end local v0    # "delta":I
    :cond_0
    return-void
.end method
