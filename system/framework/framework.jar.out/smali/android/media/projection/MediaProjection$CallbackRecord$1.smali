.class Landroid/media/projection/MediaProjection$CallbackRecord$1;
.super Ljava/lang/Object;
.source "MediaProjection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/projection/MediaProjection$CallbackRecord;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/projection/MediaProjection$CallbackRecord;


# direct methods
.method constructor <init>(Landroid/media/projection/MediaProjection$CallbackRecord;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/projection/MediaProjection$CallbackRecord;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/projection/MediaProjection$CallbackRecord$1;->this$1:Landroid/media/projection/MediaProjection$CallbackRecord;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord$1;->this$1:Landroid/media/projection/MediaProjection$CallbackRecord;

    invoke-static {v0}, Landroid/media/projection/MediaProjection$CallbackRecord;->-get0(Landroid/media/projection/MediaProjection$CallbackRecord;)Landroid/media/projection/MediaProjection$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    .line 208
    return-void
.end method
