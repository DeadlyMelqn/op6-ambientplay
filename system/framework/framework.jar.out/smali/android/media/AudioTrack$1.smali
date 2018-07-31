.class Landroid/media/AudioTrack$1;
.super Ljava/lang/Thread;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioTrack;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioTrack;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioTrack;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/AudioTrack$1;->this$0:Landroid/media/AudioTrack;

    iput p2, p0, Landroid/media/AudioTrack$1;->val$delay:I

    .line 2053
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2056
    :try_start_0
    iget v2, p0, Landroid/media/AudioTrack$1;->val$delay:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2060
    :goto_0
    iget-object v2, p0, Landroid/media/AudioTrack$1;->this$0:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->baseSetStartDelayMs(I)V

    .line 2062
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioTrack$1;->this$0:Landroid/media/AudioTrack;

    invoke-static {v2}, Landroid/media/AudioTrack;->-wrap2(Landroid/media/AudioTrack;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2068
    :goto_1
    return-void

    .line 2057
    :catch_0
    move-exception v1

    .line 2058
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2063
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_1
.end method
