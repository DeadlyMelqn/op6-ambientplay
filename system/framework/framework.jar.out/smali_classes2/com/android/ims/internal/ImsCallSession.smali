.class public Lcom/android/ims/internal/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;,
        Lcom/android/ims/internal/ImsCallSession$Listener;,
        Lcom/android/ims/internal/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mClosed:Z

.field private mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

.field private final miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 1
    .param p0, "-this"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p0, "-this"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 3
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 467
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 469
    if-eqz p1, :cond_0

    .line 471
    :try_start_0
    new-instance v1, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;)V

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Lcom/android/ims/internal/ImsCallSession$Listener;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 481
    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 482
    return-void
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 749
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 750
    return-void

    .line 754
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 488
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 489
    return-void

    .line 493
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 494
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 497
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 495
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 870
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 871
    return-void

    .line 875
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 506
    return-object v2

    .line 510
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 523
    return-object v2

    .line 527
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 540
    return-object v2

    .line 544
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 591
    return-object v2

    .line 595
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 556
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 557
    return-object v2

    .line 561
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 608
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 609
    return v2

    .line 613
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 573
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 574
    return-object v2

    .line 578
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 799
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 800
    return-void

    .line 804
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 888
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 889
    return-void

    .line 893
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    return-void

    .line 894
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isAlive()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 627
    return v2

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v0

    .line 631
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 641
    return v2

    .line 639
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 659
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 660
    return v2

    .line 664
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isMultiparty()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 989
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 990
    return v2

    .line 994
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public merge()V
    .locals 2

    .prologue
    .line 834
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 835
    return-void

    .line 839
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    return-void

    .line 840
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reject(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 766
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 767
    return-void

    .line 771
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 906
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 907
    return-void

    .line 911
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 817
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 818
    return-void

    .line 822
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 925
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 926
    return-void

    .line 930
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .prologue
    .line 1007
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1008
    return-void

    .line 1012
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendRttModifyRequest(Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "to"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1024
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1025
    return-void

    .line 1029
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyRequest(Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :goto_0
    return-void

    .line 1030
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendRttModifyResponse(Z)V
    .locals 2
    .param p1, "response"    # Z

    .prologue
    .line 1041
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 1042
    return-void

    .line 1046
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyResponse(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 973
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 974
    return-void

    .line 978
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/ImsCallSession$Listener;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 679
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 687
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 688
    return-void

    .line 692
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 709
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 710
    return-void

    .line 714
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 731
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 732
    return-void

    .line 736
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 943
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 944
    return-void

    .line 948
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 957
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 958
    return-void

    .line 962
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 782
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 783
    return-void

    .line 787
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1452
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1454
    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/ims/internal/ImsCallSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    const-string/jumbo v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 852
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    .line 853
    return-void

    .line 857
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
