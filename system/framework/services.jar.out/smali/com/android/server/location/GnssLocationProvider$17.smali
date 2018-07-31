.class Lcom/android/server/location/GnssLocationProvider$17;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$17;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 1987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    .prologue
    .line 2003
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap33()V

    .line 2004
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1990
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap21()I

    move-result v0

    return v0
.end method

.method public start(JZ)Z
    .locals 3
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z

    .prologue
    .line 1994
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1995
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid periodNanos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1996
    const-string/jumbo v2, "in batching request, not started"

    .line 1995
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    const/4 v0, 0x0

    return v0

    .line 1999
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->-wrap15(JZ)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 2007
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap18()Z

    move-result v0

    return v0
.end method
