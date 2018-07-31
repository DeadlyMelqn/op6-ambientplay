.class final Lcom/android/server/media/MediaSessionService$FullUserRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FullUserRecord"
.end annotation


# static fields
.field private static final COMPONENT_NAME_USER_ID_DELIM:Ljava/lang/String; = ","


# instance fields
.field private mCallback:Landroid/media/session/ICallback;

.field private final mFullUserId:I

.field private mInitialDownMusicOnly:Z

.field private mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

.field private mInitialDownVolumeStream:I

.field private mLastMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

.field private mOnMediaKeyListenerUid:I

.field private mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

.field private mOnVolumeKeyLongPressListenerUid:I

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

.field private mRestoredMediaButtonReceiverUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "-value"    # Landroid/media/session/ICallback;

    .prologue
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "-value"    # Landroid/view/KeyEvent;

    .prologue
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "-value"    # Landroid/media/session/IOnMediaKeyListener;

    .prologue
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "-value"    # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .prologue
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .prologue
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;I)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;
    .param p2, "fullUserId"    # I

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 659
    new-instance v2, Lcom/android/server/media/MediaSessionStack;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-get0(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlaybackMonitor;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/server/media/MediaSessionStack;-><init>(Lcom/android/server/media/AudioPlaybackMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 661
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 662
    const-string/jumbo v3, "media_button_receiver"

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 661
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "mediaButtonReceiver":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 664
    return-void

    .line 666
    :cond_0
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "tokens":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 668
    :cond_1
    return-void

    .line 670
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 671
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I

    .line 672
    return-void
.end method

.method private getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-wrap0(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get5(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 765
    :goto_0
    return-object v0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_0
.end method

.method private pushAddressedPlayerChangedLocked()V
    .locals 5

    .prologue
    .line 743
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    if-nez v2, :cond_0

    .line 744
    return-void

    .line 747
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 748
    .local v1, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v1, :cond_2

    .line 749
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    .line 750
    new-instance v3, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    .line 749
    invoke-interface {v2, v3}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V

    .line 762
    .end local v1    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    :goto_0
    return-void

    .line 751
    .restart local v1    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get3(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    .line 752
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    .line 753
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get3(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 752
    invoke-interface {v2, v3}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 759
    .end local v1    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaSessionService"

    const-string/jumbo v3, "Failed to pushAddressedPlayerChangedLocked"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 755
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get3(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 756
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    .line 757
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get3(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 756
    invoke-interface {v2, v3}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public destroySessionsForUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 675
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v2

    .line 676
    .local v2, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "session$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 677
    .local v0, "session":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, v0}, Lcom/android/server/media/MediaSessionService;->-wrap6(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0

    .line 679
    .end local v0    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Record for full_user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 685
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 686
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 687
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    if-ne v3, v4, :cond_0

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", profile_user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-get4(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "indent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Volume key long-press listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Volume key long-press listener package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 695
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v5, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    invoke-static {v4, v5}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v4

    .line 694
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Media key listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Media key listener package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 698
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v5, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    invoke-static {v4, v5}, Lcom/android/server/media/MediaSessionService;->-wrap4(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v4

    .line 697
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Last MediaButtonReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Restored MediaButtonReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "oldMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "newMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 709
    const-string/jumbo v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Media button session is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 712
    if-eqz p1, :cond_0

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 715
    :cond_0
    if-eqz p2, :cond_1

    .line 716
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 717
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get6(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 719
    :cond_1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 721
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v3, 0x0

    .line 725
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v2

    .line 726
    .local v2, "receiver":Landroid/app/PendingIntent;
    iput-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    .line 727
    iput-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 728
    const-string/jumbo v1, ""

    .line 729
    .local v1, "componentName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 730
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 731
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 731
    if-eqz v3, :cond_0

    .line 733
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 736
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-get2(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 737
    const-string/jumbo v4, "media_button_receiver"

    .line 738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 739
    iget v6, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 736
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 740
    return-void
.end method
