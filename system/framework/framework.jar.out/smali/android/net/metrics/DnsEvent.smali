.class public final Landroid/net/metrics/DnsEvent;
.super Ljava/lang/Object;
.source "DnsEvent.java"


# static fields
.field private static final SIZE_LIMIT:I = 0x4e20


# instance fields
.field public eventCount:I

.field public eventTypes:[B

.field public latenciesMs:[I

.field public final netId:I

.field public returnCodes:[B

.field public final transports:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "transports"    # J
    .param p4, "initialCapacity"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    .line 51
    iput-wide p2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    .line 52
    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 53
    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 54
    new-array v0, p4, [I

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 55
    return-void
.end method


# virtual methods
.method public addResult(BBI)V
    .locals 4
    .param p1, "eventType"    # B
    .param p2, "returnCode"    # B
    .param p3, "latencyMs"    # I

    .prologue
    .line 58
    iget v0, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    const/16 v1, 0x4e20

    if-lt v0, v1, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    iget v0, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 63
    iget v0, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    int-to-double v0, v0

    const-wide v2, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/net/metrics/DnsEvent;->resize(I)V

    .line 65
    :cond_1
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p1, v0, v1

    .line 66
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p2, v0, v1

    .line 67
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput p3, v0, v1

    .line 68
    iget v0, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    .line 69
    return-void
.end method

.method public resize(I)V
    .locals 1
    .param p1, "newLength"    # I

    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 73
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 74
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DnsEvent("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 81
    .local v1, "t":I
    invoke-static {v1}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "t":I
    :cond_0
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " events)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
