.class public Landroid/media/MediaCasStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaCasStateException.java"


# instance fields
.field private final mDiagnosticInfo:Ljava/lang/String;

.field private final mErrorCode:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "diagnosticInfo"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    iput p1, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    .line 34
    iput-object p3, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static throwExceptionIfNeeded(I)V
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    .line 39
    return-void
.end method

.method static throwExceptionIfNeeded(ILjava/lang/String;)V
    .locals 6
    .param p0, "err"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 42
    if-nez p0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 49
    :cond_1
    const-string/jumbo v0, ""

    .line 50
    .local v0, "diagnosticInfo":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 82
    :pswitch_0
    const-string/jumbo v0, "Unknown CAS state exception"

    .line 85
    :goto_0
    new-instance v1, Landroid/media/MediaCasStateException;

    .line 86
    const-string/jumbo v2, "%s (err=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-direct {v1, p0, p1, v2}, Landroid/media/MediaCasStateException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 52
    :pswitch_1
    const-string/jumbo v0, "General CAS error"

    goto :goto_0

    .line 55
    :pswitch_2
    const-string/jumbo v0, "No license"

    goto :goto_0

    .line 58
    :pswitch_3
    const-string/jumbo v0, "License expired"

    goto :goto_0

    .line 61
    :pswitch_4
    const-string/jumbo v0, "Session not opened"

    goto :goto_0

    .line 64
    :pswitch_5
    const-string/jumbo v0, "Unsupported scheme or data format"

    goto :goto_0

    .line 67
    :pswitch_6
    const-string/jumbo v0, "Invalid CAS state"

    goto :goto_0

    .line 70
    :pswitch_7
    const-string/jumbo v0, "Insufficient output protection"

    goto :goto_0

    .line 73
    :pswitch_8
    const-string/jumbo v0, "Tamper detected"

    goto :goto_0

    .line 76
    :pswitch_9
    const-string/jumbo v0, "Not initialized"

    goto :goto_0

    .line 79
    :pswitch_a
    const-string/jumbo v0, "Decrypt error"

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDiagnosticInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    return v0
.end method
