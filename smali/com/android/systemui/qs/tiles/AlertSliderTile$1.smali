.class Lcom/android/systemui/qs/tiles/AlertSliderTile$1;
.super Ljava/lang/Object;
.source "AlertSliderTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AlertSliderTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AlertSliderTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$1;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onZenChanged(I)V
    .locals 2
    .param p1, "zen"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$1;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-get5(Lcom/android/systemui/qs/tiles/AlertSliderTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$1;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->showDetail(Z)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$1;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-wrap3(Lcom/android/systemui/qs/tiles/AlertSliderTile;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AlertSliderTile$1;->this$0:Lcom/android/systemui/qs/tiles/AlertSliderTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AlertSliderTile;->-set0(Lcom/android/systemui/qs/tiles/AlertSliderTile;Z)Z

    .line 206
    return-void
.end method
