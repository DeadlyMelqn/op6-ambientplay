.class final Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionsChangedWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final mStub:Landroid/media/session/IActiveSessionsListener$Stub;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    .prologue
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    .prologue
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .locals 1
    .param p0, "-this"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    .prologue
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;
    .locals 1
    .param p0, "-this"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    .prologue
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    .locals 0
    .param p0, "-this"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    .prologue
    invoke-direct {p0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->release()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;-><init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;

    .line 541
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    .line 542
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 543
    iput-object p3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mHandler:Landroid/os/Handler;

    .line 544
    return-void
.end method

.method private release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 574
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 575
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    .line 576
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mHandler:Landroid/os/Handler;

    .line 577
    return-void
.end method
