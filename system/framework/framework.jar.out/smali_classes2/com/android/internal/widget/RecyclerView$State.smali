.class public Lcom/android/internal/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field private mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method static synthetic -set0(Lcom/android/internal/widget/RecyclerView$State;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    .line 11167
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11173
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 11186
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 11191
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 11193
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11195
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11197
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11199
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11205
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11207
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 11141
    return-void
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 3
    .param p1, "accepted"    # I

    .prologue
    .line 11147
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 11148
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11149
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 11148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11149
    const-string/jumbo v2, " but it is "

    .line 11148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11150
    iget v2, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 11148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11152
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 11364
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 11318
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11319
    return-object v1

    .line 11321
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 11392
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    .line 11393
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    .line 11392
    :goto_0
    return v0

    .line 11394
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .prologue
    .line 11347
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 11356
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeasuring()Z
    .locals 1

    .prologue
    .line 11264
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 11272
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method prepareForNestedPrefetch(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 11241
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 11242
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 11243
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11244
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11245
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11246
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11247
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 11333
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 11336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11337
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 11303
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11304
    return-void

    .line 11306
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11307
    return-void
.end method

.method reset()Lcom/android/internal/widget/RecyclerView$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    .line 11224
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 11225
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11227
    :cond_0
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 11228
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11229
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11230
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11400
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mTargetPosition:I

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11401
    const-string/jumbo v1, ", mData="

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11401
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11402
    const-string/jumbo v1, ", mItemCount="

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11402
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11403
    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11403
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11404
    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11405
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11406
    const-string/jumbo v1, ", mStructureChanged="

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11406
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11407
    const-string/jumbo v1, ", mInPreLayout="

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11407
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11408
    const-string/jumbo v1, ", mRunSimpleAnimations="

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11408
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11409
    const-string/jumbo v1, ", mRunPredictiveAnimations="

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11409
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11410
    const/16 v1, 0x7d

    .line 11399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 11283
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .prologue
    .line 11294
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
