.class Landroid/media/tv/TvView$1;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvView;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 118
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p2}, Landroid/media/tv/TvView;->-set6(Landroid/media/tv/TvView;I)I

    .line 119
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p3}, Landroid/media/tv/TvView;->-set12(Landroid/media/tv/TvView;I)I

    .line 120
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p4}, Landroid/media/tv/TvView;->-set7(Landroid/media/tv/TvView;I)I

    .line 121
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-set5(Landroid/media/tv/TvView;Z)Z

    .line 122
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v1}, Landroid/media/tv/TvView;->-get8(Landroid/media/tv/TvView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v2}, Landroid/media/tv/TvView;->-get10(Landroid/media/tv/TvView;)I

    move-result v2

    iget-object v3, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v3}, Landroid/media/tv/TvView;->-get9(Landroid/media/tv/TvView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/media/tv/TvView;->-wrap2(Landroid/media/tv/TvView;III)V

    .line 123
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-set4(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 128
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v1}, Landroid/media/tv/TvView;->-get6(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-wrap5(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 129
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-set4(Landroid/media/tv/TvView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 134
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-set5(Landroid/media/tv/TvView;Z)Z

    .line 135
    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-wrap5(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 136
    return-void
.end method
