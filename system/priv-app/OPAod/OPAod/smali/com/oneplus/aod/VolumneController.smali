.class public Lcom/oneplus/aod/VolumneController;
.super Ljava/lang/Object;
.source "VolumneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/VolumneController$1;,
        Lcom/oneplus/aod/VolumneController$2;,
        Lcom/oneplus/aod/VolumneController$SettingObserver;
    }
.end annotation


# static fields
.field public static MODE_NONE:I = 0x0

.field public static MODE_RING:I = 0x0

.field public static MODE_SILENCE:I = 0x0

.field public static MODE_VIBRATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VolumneController"


# instance fields
.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDNDEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mObserver:Lcom/oneplus/aod/VolumneController$SettingObserver;

.field private mTextView:Landroid/widget/TextView;

.field private final mWorker:Landroid/os/Handler;

.field private final mWorkerThread:Landroid/os/HandlerThread;

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/aod/VolumneController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/aod/VolumneController;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/aod/VolumneController;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/aod/VolumneController;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;
    .param p1, "-value"    # Landroid/widget/ImageView;

    .prologue
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController;->mIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/aod/VolumneController;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;
    .param p1, "-value"    # Landroid/widget/TextView;

    .prologue
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController;->mTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/aod/VolumneController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/aod/VolumneController;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/VolumneController;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/VolumneController;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/aod/VolumneController;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/VolumneController;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/VolumneController;->updateDND(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/aod/VolumneController;->MODE_NONE:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/aod/VolumneController;->MODE_SILENCE:I

    .line 44
    const/4 v0, 0x2

    sput v0, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    .line 45
    const/4 v0, 0x3

    sput v0, Lcom/oneplus/aod/VolumneController;->MODE_RING:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aodUpdateMonitor"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    .line 69
    new-instance v0, Lcom/oneplus/aod/VolumneController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/VolumneController$1;-><init>(Lcom/oneplus/aod/VolumneController;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v0, Lcom/oneplus/aod/VolumneController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/VolumneController$2;-><init>(Lcom/oneplus/aod/VolumneController;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 52
    const-string/jumbo v0, "VolumneController"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 55
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/oneplus/aod/VolumneController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mWorker:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/oneplus/aod/VolumneController$SettingObserver;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mWorker:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/VolumneController$SettingObserver;-><init>(Lcom/oneplus/aod/VolumneController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mObserver:Lcom/oneplus/aod/VolumneController$SettingObserver;

    .line 60
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mObserver:Lcom/oneplus/aod/VolumneController$SettingObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/VolumneController$SettingObserver;->init()V

    .line 61
    invoke-direct {p0}, Lcom/oneplus/aod/VolumneController;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIcon:Landroid/widget/ImageView;

    .line 62
    invoke-direct {p0}, Lcom/oneplus/aod/VolumneController;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mTextView:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/aod/VolumneController;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/VolumneController;->mZenMode:I

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 65
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method private getIconView()Landroid/widget/ImageView;
    .locals 7

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "iconView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 174
    .local v3, "mainView":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 175
    const v5, 0x7f0e0055

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 177
    .local v4, "temp":Landroid/view/View;
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v2    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "temp":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v2

    .line 178
    .restart local v2    # "iconView":Landroid/widget/ImageView;
    .restart local v4    # "temp":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "VolumneController"

    const-string/jumbo v6, "find ImageView fail resId=2131624021"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v4}, Landroid/view/View;->debug()V

    goto :goto_0
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 7

    .prologue
    .line 187
    const/4 v4, 0x0

    .line 188
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/oneplus/aod/VolumneController;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 189
    .local v2, "mainView":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 190
    const v5, 0x7f0e0056

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 192
    .local v3, "temp":Landroid/view/View;
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v3    # "temp":Landroid/view/View;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-object v4

    .line 193
    .restart local v3    # "temp":Landroid/view/View;
    .restart local v4    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "VolumneController"

    const-string/jumbo v6, "find TextView fail resId=2131624022"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->debug()V

    goto :goto_0
.end method

.method private updateDND(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dnd_mode_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    .line 158
    const-string/jumbo v0, "VolumneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDND: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 4

    .prologue
    .line 147
    sget v1, Lcom/oneplus/aod/VolumneController;->MODE_NONE:I

    .line 149
    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "three_Key_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    :goto_0
    return v1

    .line 150
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isDNDEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    new-array v2, v0, [I

    const/16 v3, 0x29

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    const-string/jumbo v2, "VolumneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDNDEnabled: zenMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/aod/VolumneController;->mZenMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v2, p0, Lcom/oneplus/aod/VolumneController;->mZenMode:I

    sget v3, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 166
    :cond_1
    const-string/jumbo v0, "VolumneController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDNDEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-boolean v0, p0, Lcom/oneplus/aod/VolumneController;->mDNDEnabled:Z

    return v0
.end method
