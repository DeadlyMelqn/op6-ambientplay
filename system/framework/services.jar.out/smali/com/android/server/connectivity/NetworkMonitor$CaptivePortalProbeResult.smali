.class public final Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptivePortalProbeResult"
.end annotation


# static fields
.field static final FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field static final FAILED_CODE:I = 0x257

.field static final SUCCESS:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

.field static final SUCCESS_CODE:I = 0xcc


# instance fields
.field final detectUrl:Ljava/lang/String;

.field private final mHttpResponseCode:I

.field final redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 586
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    const/16 v1, 0x257

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 587
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    const/16 v1, 0xcc

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->SUCCESS:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 582
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "httpResponseCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 629
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "httpResponseCode"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "detectUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    if-eqz p2, :cond_1

    .line 600
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get2()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 601
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get2()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 600
    if-eqz v3, :cond_2

    .line 602
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get2()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tmpUrl$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 603
    .local v1, "tmpUrl":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "captive_portal_url_blacklist redirect url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " httpResponseCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/16 p1, 0xcc

    .line 606
    const/4 p2, 0x0

    .line 623
    .end local v1    # "tmpUrl":Ljava/lang/String;
    .end local v2    # "tmpUrl$iterator":Ljava/util/Iterator;
    .end local p2    # "redirectUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    .line 624
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    .line 625
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    .line 626
    return-void

    .line 611
    .restart local p2    # "redirectUrl":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 612
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get1()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 613
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "blacklisted redirect url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " httpResponseCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/16 p1, 0xcc

    .line 615
    const/4 p2, 0x0

    .line 616
    .local p2, "redirectUrl":Ljava/lang/String;
    goto :goto_0

    .line 611
    .local p2, "redirectUrl":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method isFailed()Z
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPortal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v2, 0x18f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSuccessful()Z
    .locals 2

    .prologue
    .line 636
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHttpResponseCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", redirectUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", detectUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
