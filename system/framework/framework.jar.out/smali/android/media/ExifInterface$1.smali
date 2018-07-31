.class Landroid/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPosition:J

.field final synthetic this$0:Landroid/media/ExifInterface;

.field final synthetic val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method constructor <init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/ExifInterface;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/ExifInterface$1;->this$0:Landroid/media/ExifInterface;

    iput-object p2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    .line 2566
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2570
    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2598
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 7
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 2575
    if-nez p5, :cond_0

    .line 2576
    return v1

    .line 2578
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 2579
    return v4

    .line 2581
    :cond_1
    iget-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 2582
    iget-object v1, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v1, p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2583
    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 2586
    :cond_2
    iget-object v1, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v1, p3, p4, p5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v0

    .line 2587
    .local v0, "bytesRead":I
    if-gez v0, :cond_3

    .line 2588
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 2589
    return v4

    .line 2592
    :cond_3
    iget-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 2593
    return v0
.end method
