.class public Lcom/ice/box/iab/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field mResult:Lcom/ice/box/iab/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/ice/box/iab/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ice/box/iab/IabException;-><init>(Lcom/ice/box/iab/IabResult;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/ice/box/iab/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/ice/box/iab/IabException;-><init>(Lcom/ice/box/iab/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/ice/box/iab/IabResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/ice/box/iab/IabException;-><init>(Lcom/ice/box/iab/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/ice/box/iab/IabResult;Ljava/lang/Exception;)V
    .locals 1

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iput-object p1, p0, Lcom/ice/box/iab/IabException;->mResult:Lcom/ice/box/iab/IabResult;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/ice/box/iab/IabResult;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ice/box/iab/IabException;->mResult:Lcom/ice/box/iab/IabResult;

    return-object p0
.end method
