.class public Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.source "StatusBarIconControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field private final mIconBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "StatusBarIconControllerImpl"

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 74
    const v2, 0x1070040

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;-><init>([Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    .line 70
    const-class v1, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/IconLogger;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    .line 75
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 76
    const-class v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->loadDimens()V

    .line 81
    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 83
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "icon_blacklist"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-class v1, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 88
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SystemIconController;->addCallback(Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;)V

    .line 98
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_0
    return-void
.end method

.method private addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "slot":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v3

    .line 144
    .local v3, "viewIndex":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    .local v0, "blocked":Z
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const-class v4, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 149
    .local v1, "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/SystemIconController;->setBlocked(Ljava/lang/String;Z)V

    .line 150
    iget-boolean v4, p2, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/statusbar/policy/SystemIconController;->setIcon(Ljava/lang/String;I)V

    .line 153
    .end local v1    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 154
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$4;

    invoke-direct {v5, v0, v3, v2, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$4;-><init>(ZILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 155
    return-void

    .line 150
    .restart local v1    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method private handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v0

    .line 280
    .local v0, "viewIndex":I
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-class v1, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v2, p2, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 281
    :goto_0
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->setIcon(Ljava/lang/String;I)V

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;

    invoke-direct {v2, v0, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 287
    return-void

    .line 282
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_10226(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .prologue
    .line 259
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_11137(ILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p2, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .prologue
    .line 286
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_5922(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "blocked"    # Z
    .param p3, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p4, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .prologue
    .line 154
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_6876(IILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0
    .param p0, "viewIndex"    # I
    .param p1, "height"    # I
    .param p2, "l"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .prologue
    .line 177
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconExternal(II)V

    return-void
.end method

.method private loadDimens()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method private setCustIconVisibilityInner(Ljava/lang/String;)V
    .locals 9
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 220
    :cond_0
    sget-boolean v6, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " doesn\'t exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    return-void

    .line 224
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v3

    .line 225
    .local v3, "index":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    .line 226
    .local v2, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v2, :cond_3

    .line 227
    return-void

    .line 231
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 232
    .local v0, "count":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v5

    .line 234
    .local v5, "viewIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 235
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 236
    .local v4, "manager":Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 237
    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v7, "statusbar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 236
    if-eqz v6, :cond_5

    .line 238
    :cond_4
    invoke-virtual {v4, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIconInner(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 234
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v4    # "manager":Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
    :cond_6
    return-void
.end method


# virtual methods
.method public addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 5
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .prologue
    .line 102
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 105
    .local v2, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v2, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    .local v3, "slot":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    .local v0, "blocked":Z
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v4

    invoke-virtual {p1, v4, v3, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V

    .line 103
    .end local v0    # "blocked":Z
    .end local v3    # "slot":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 308
    const v2, 0x105016b

    .line 307
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 309
    .local v0, "iconSize":I
    new-instance v2, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 312
    .end local v0    # "iconSize":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 292
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    iget-object v3, v4, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 293
    .local v3, "statusIcons":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 294
    .local v0, "N":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  icon views: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 296
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 298
    .local v2, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " visibility ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    invoke-super {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 302
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_3568(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 89
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "slot":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setCustIconVisibilityInner(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "slot":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->loadDimens()V

    .line 318
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string/jumbo v3, "icon_blacklist"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 125
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIcons:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v0, "current":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mSlots:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .local v1, "currentSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIcon(Ljava/lang/String;)V

    .line 129
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_2
    return-void
.end method

.method public removeIcon(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    if-nez v2, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const-class v2, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 253
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/SystemIconController;->setVisibility(Ljava/lang/String;I)V

    .line 256
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconLogger:Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconHidden(Ljava/lang/String;)V

    .line 257
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->removeIcon(I)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v1

    .line 259
    .local v1, "viewIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 260
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIcon(I)V

    .line 189
    return-void
.end method

.method public removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 1
    .param p1, "group"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->destroy()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public setExternalIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getViewIndex(I)I

    move-result v1

    .line 175
    .local v1, "viewIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 176
    const v3, 0x7f070433

    .line 175
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 177
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 178
    return-void
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 264
    if-nez p2, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIcon(I)V

    .line 266
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 269
    .local v0, "isNew":Z
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 270
    if-eqz v0, :cond_2

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 275
    :goto_1
    return-void

    .line 268
    .end local v0    # "isNew":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isNew":Z
    goto :goto_0

    .line 273
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_1
.end method

.method public setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 8
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    .line 160
    .local v7, "index":I
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 161
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 163
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    move v5, v4

    move-object v6, p3

    .line 162
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 164
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 167
    iput-object p3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 168
    invoke-direct {p0, v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 183
    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visibility"    # Z

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlotIndex(Ljava/lang/String;)I

    move-result v2

    .line 193
    .local v2, "index":I
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    .line 194
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v3, p2, :cond_1

    .line 195
    :cond_0
    return-void

    .line 198
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " setIconVisibility slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    const-string/jumbo v5, " visibility:"

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 203
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    const-class v3, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 206
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->getSlot(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v3, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/policy/SystemIconController;->setVisibility(Ljava/lang/String;I)V

    .line 209
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 210
    return-void

    .line 206
    .restart local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_3
    const/16 v3, 0x8

    goto :goto_0
.end method
