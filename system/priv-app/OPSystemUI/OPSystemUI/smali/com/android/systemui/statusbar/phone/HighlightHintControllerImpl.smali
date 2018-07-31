.class public Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;
.super Ljava/lang/Object;
.source "HighlightHintControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController;


# instance fields
.field private mBarState:I

.field private mBgColor:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedVisible:Z

.field private mHeadUpShow:Z

.field private mHighlightHintShow:Z

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    .line 21
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 26
    iput v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    .line 17
    return-void
.end method

.method private dumpInfo()V
    .locals 4

    .prologue
    .line 119
    sget-boolean v1, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 120
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 121
    .local v0, "isExpanededAfterUnlock":Z
    :goto_0
    const-string/jumbo v1, "HighlightHintCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHighlightHintShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    const-string/jumbo v3, " showNotification:"

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v3

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    const-string/jumbo v3, " HeadsUp:"

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    const-string/jumbo v3, " expanededAfterUnlock:"

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "isExpanededAfterUnlock":Z
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isExpanededAfterUnlock":Z
    goto :goto_0
.end method

.method private onHighlightHintInfoUpdate()V
    .locals 3

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 76
    .local v0, "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    goto :goto_0

    .line 78
    .end local v0    # "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    :cond_0
    return-void
.end method

.method private onHighlightHintStateChange()V
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->shouldShowHighlightHint()Z

    move-result v2

    .line 64
    .local v2, "show":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    if-eq v2, v3, :cond_0

    .line 65
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->dumpInfo()V

    .line 67
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .line 68
    .local v0, "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    goto :goto_0

    .line 71
    .end local v0    # "callback":Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    .line 109
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    .line 111
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 129
    const-string/jumbo v0, "HighlightHintController state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mHighlightHintShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  show highlight hint Notification:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  highlight hint data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  HeadsUp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mExpandedVisible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public getHighlighColor()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    return v0
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public isHighLightHintShow()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    return v0
.end method

.method public onBarStatechange(I)V
    .locals 1
    .param p1, "barstate"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-eq v0, p1, :cond_0

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 60
    :cond_0
    return-void
.end method

.method public onExpandedVisibleChange(Z)V
    .locals 1
    .param p1, "visiable"    # Z

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eq v0, p1, :cond_0

    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 53
    :cond_0
    return-void
.end method

.method public onHeadUpPinnedModeChange(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    if-eq v0, p1, :cond_0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 46
    :cond_0
    return-void
.end method

.method public onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1
    .param p1, "data"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintInfoUpdate()V

    .line 39
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public shouldShowHighlightHint()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v2, :cond_0

    .line 95
    return v1

    .line 99
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 100
    .local v0, "isExpanededAfterUnlock":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    xor-int/lit8 v1, v0, 0x1

    :cond_1
    return v1

    .line 99
    .end local v0    # "isExpanededAfterUnlock":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isExpanededAfterUnlock":Z
    goto :goto_0
.end method
