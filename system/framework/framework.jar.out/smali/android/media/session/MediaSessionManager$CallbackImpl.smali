.class final Landroid/media/session/MediaSessionManager$CallbackImpl;
.super Landroid/media/session/ICallback$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/MediaSessionManager$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSessionManager$CallbackImpl;)Landroid/media/session/MediaSessionManager$Callback;
    .locals 1
    .param p0, "-this"    # Landroid/media/session/MediaSessionManager$CallbackImpl;

    .prologue
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mCallback:Landroid/media/session/MediaSessionManager$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/session/MediaSessionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 642
    invoke-direct {p0}, Landroid/media/session/ICallback$Stub;-><init>()V

    .line 643
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mCallback:Landroid/media/session/MediaSessionManager$Callback;

    .line 644
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    .line 645
    return-void
.end method


# virtual methods
.method public onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "mediaButtonReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 682
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$4;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$CallbackImpl$4;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    return-void
.end method

.method public onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 671
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$3;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$CallbackImpl$3;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 677
    return-void
.end method

.method public onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "mediaButtonReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 661
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl$2;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    return-void
.end method

.method public onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 650
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl$1;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    return-void
.end method
