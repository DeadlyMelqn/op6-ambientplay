.class Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    iput p2, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->val$status:I

    .line 4233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4236
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-static {v0}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->-get1(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmPreparedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-static {v1}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->-get0(Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate$1;->val$status:I

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnDrmPreparedListener;->onDrmPrepared(Landroid/media/MediaPlayer;I)V

    .line 4237
    return-void
.end method
