.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field mLoadBitmap:Landroid/os/AsyncTask;
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
.end field

.field final synthetic this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;)Landroid/print/PrintAttributes;
    .locals 1
    .param p0, "-this"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    .prologue
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;)V
    .locals 0
    .param p0, "-this"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    .prologue
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->cancelLoad()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Ljava/lang/String;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;ILandroid/net/Uri;)V
    .locals 1
    .param p1, "this$1"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$jobName:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    iput p4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$fittingMode:I

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$imageFile:Landroid/net/Uri;

    .line 580
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    .line 1
    return-void
.end method

.method private cancelLoad()V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->-get0(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 689
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 691
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 694
    return-void

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 698
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 699
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->cancelLoad()V

    .line 700
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 703
    :cond_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 706
    :cond_1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 708
    iput-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    .line 710
    :cond_2
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 592
    monitor-enter p0

    .line 593
    :try_start_0
    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mAttributes:Landroid/print/PrintAttributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 596
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 598
    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 602
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$jobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v9

    .line 606
    .local v9, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 607
    .local v8, "changed":Z
    invoke-virtual {p4, v9, v8}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 608
    return-void

    .line 611
    .end local v8    # "changed":Z
    .end local v9    # "info":Landroid/print/PrintDocumentInfo;
    :cond_1
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$imageFile:Landroid/net/Uri;

    iget-object v4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$jobName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;Landroid/os/CancellationSignal;Landroid/net/Uri;Ljava/lang/String;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 685
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 7
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    .line 716
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$fittingMode:I

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->-wrap4(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 718
    return-void
.end method
