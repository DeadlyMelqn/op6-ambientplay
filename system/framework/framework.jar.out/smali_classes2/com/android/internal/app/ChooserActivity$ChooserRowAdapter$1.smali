.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 1309
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1312
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1313
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v3

    .line 1314
    .local v3, "rcount":I
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1315
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    array-length v5, v5

    if-eq v5, v3, :cond_5

    .line 1316
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v1

    .line 1317
    .local v1, "old":[Lcom/android/internal/app/ChooserActivity$RowScale;
    if-eqz v1, :cond_2

    array-length v2, v1

    .line 1318
    .local v2, "oldRCount":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    new-array v6, v3, [Lcom/android/internal/app/ChooserActivity$RowScale;

    invoke-static {v5, v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-set0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 1319
    if-eqz v1, :cond_1

    if-lez v3, :cond_1

    .line 1320
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    .line 1321
    array-length v6, v1

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1320
    invoke-static {v1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1324
    :cond_1
    move v0, v3

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1325
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    .line 1324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1317
    .end local v0    # "i":I
    .end local v2    # "oldRCount":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "oldRCount":I
    goto :goto_0

    .line 1328
    .restart local v0    # "i":I
    :cond_3
    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_4

    .line 1329
    new-instance v5, Lcom/android/internal/app/ChooserActivity$RowScale;

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/app/ChooserActivity$RowScale;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V

    .line 1330
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get1(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1329
    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity$RowScale;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v4

    .line 1331
    .local v4, "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    aput-object v4, v5, v0

    .line 1328
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1339
    .end local v4    # "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    :cond_4
    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_5

    .line 1340
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$RowScale;->startAnimation()V

    .line 1339
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1344
    .end local v0    # "i":I
    .end local v1    # "old":[Lcom/android/internal/app/ChooserActivity$RowScale;
    .end local v2    # "oldRCount":I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    .line 1347
    const-string/jumbo v5, "ChooserActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyDataSetChanged: num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void
.end method

.method public onInvalidated()V
    .locals 4

    .prologue
    .line 1353
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1354
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetInvalidated()V

    .line 1355
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get2(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1357
    .local v0, "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    .line 1356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1360
    .end local v0    # "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    :cond_0
    return-void
.end method
