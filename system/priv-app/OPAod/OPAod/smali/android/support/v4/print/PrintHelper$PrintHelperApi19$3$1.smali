.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;Landroid/os/CancellationSignal;Landroid/net/Uri;Ljava/lang/String;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0
    .param p1, "this$2"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$imageFile:Landroid/net/Uri;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$jobName:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 611
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 628
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$imageFile:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->-wrap1(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 629
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 625
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 682
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 683
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 678
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 637
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 641
    if-eqz p1, :cond_1

    .line 642
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-boolean v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mPrintActivityRespectsOrientation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    if-nez v0, :cond_1

    .line 645
    :cond_0
    monitor-enter p0

    .line 646
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->-get0(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;)Landroid/print/PrintAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .local v9, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    monitor-exit p0

    .line 649
    if-eqz v9, :cond_1

    .line 650
    invoke-virtual {v9}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    invoke-static {p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->-wrap3(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 651
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 653
    .local v5, "rotation":Landroid/graphics/Matrix;
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    .line 654
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 661
    .end local v5    # "rotation":Landroid/graphics/Matrix;
    .end local v9    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object p1, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    .line 662
    if-eqz p1, :cond_2

    .line 663
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$jobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v8

    .line 668
    .local v8, "info":Landroid/print/PrintDocumentInfo;
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    .line 670
    .local v7, "changed":Z
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0, v8, v7}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 675
    .end local v7    # "changed":Z
    .end local v8    # "info":Landroid/print/PrintDocumentInfo;
    :goto_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    iput-object v10, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 676
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 673
    :cond_2
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0, v10}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 635
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    .line 616
    new-instance v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;

    invoke-direct {v1, p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;)V

    .line 615
    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 623
    return-void
.end method