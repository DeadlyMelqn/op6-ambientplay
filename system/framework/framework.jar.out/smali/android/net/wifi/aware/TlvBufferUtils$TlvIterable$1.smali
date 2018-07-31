.class Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mOffset:I

.field final synthetic this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V
    .locals 1
    .param p1, "this$1"    # Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 506
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get1(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 511
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 515
    :cond_0
    const/4 v1, 0x0

    .line 516
    .local v1, "type":I
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 517
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v1, v3, v4

    .line 521
    :cond_1
    :goto_0
    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, "length":I
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 525
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v2, v3, v4

    .line 529
    :cond_2
    :goto_1
    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 531
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BILandroid/net/wifi/aware/TlvBufferUtils$TlvElement;)V

    .line 532
    .local v0, "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 533
    return-object v0

    .line 518
    .end local v0    # "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    .end local v2    # "length":I
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 519
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v1

    goto :goto_0

    .line 526
    .restart local v2    # "length":I
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 527
    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v2

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
