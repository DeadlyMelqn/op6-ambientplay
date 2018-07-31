.class public final Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "HotspotSignalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVirtualSimstate([I)V
    .locals 5
    .param p1, "softSimstate"    # [I

    .prologue
    const/4 v2, 0x0

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "exist":Z
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 201
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 203
    .local v1, "softsimState":I
    sget v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    if-ne v1, v4, :cond_1

    .line 204
    const/4 v0, 0x1

    .line 210
    .end local v1    # "softsimState":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "virtual sim state change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-set0(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    .line 212
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 213
    return-void

    .line 201
    .restart local v1    # "softsimState":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
