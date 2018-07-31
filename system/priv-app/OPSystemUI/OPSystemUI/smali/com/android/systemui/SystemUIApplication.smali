.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/SysUiServiceProvider;


# static fields
.field private static final DEBUG:Z

.field private static mGearContext:Landroid/content/Context;


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final SERVICES_PER_USER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/SystemUIApplication;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 76
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Class;

    .line 77
    const-class v1, Lcom/android/systemui/Dependency;

    aput-object v1, v0, v3

    .line 78
    const-class v1, Lcom/android/systemui/util/NotificationChannels;

    aput-object v1, v0, v4

    .line 79
    const-class v1, Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;

    aput-object v1, v0, v5

    .line 80
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    aput-object v1, v0, v6

    .line 81
    const-class v1, Lcom/android/systemui/recents/Recents;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 82
    const-class v1, Lcom/android/systemui/volume/VolumeUI;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 83
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 84
    const-class v1, Lcom/android/systemui/SystemBars;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 85
    const-class v1, Lcom/android/systemui/usb/StorageNotification;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 86
    const-class v1, Lcom/android/systemui/power/PowerUI;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 87
    const-class v1, Lcom/android/systemui/media/RingtonePlayer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 88
    const-class v1, Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 89
    const-class v1, Lcom/android/systemui/pip/PipUI;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 90
    const-class v1, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 91
    const-class v1, Lcom/android/systemui/VendorServices;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 92
    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor$Service;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 93
    const-class v1, Lcom/android/systemui/LatencyTester;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 94
    const-class v1, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 95
    const-class v1, Lcom/android/systemui/RoundedCorners;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 76
    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    .line 102
    new-array v0, v6, [Ljava/lang/Class;

    .line 103
    const-class v1, Lcom/android/systemui/Dependency;

    aput-object v1, v0, v3

    .line 104
    const-class v1, Lcom/android/systemui/util/NotificationChannels;

    aput-object v1, v0, v4

    .line 105
    const-class v1, Lcom/android/systemui/recents/Recents;

    aput-object v1, v0, v5

    .line 102
    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/SystemUIApplication;->mGearContext:Landroid/content/Context;

    return-object v0
.end method

.method private startServicesIfNeeded([Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x1

    .line 191
    iget-boolean v7, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v7, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-nez v7, :cond_1

    .line 198
    const-string/jumbo v7, "1"

    const-string/jumbo v10, "sys.boot_completed"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 199
    iput-boolean v12, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    .line 200
    sget-boolean v7, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SystemUIService"

    const-string/jumbo v10, "BOOT_COMPLETED was already sent"

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    const-string/jumbo v7, "SystemUIService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Starting SystemUI services for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 205
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 204
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 205
    const-string/jumbo v11, "."

    .line 204
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v5, Landroid/util/TimingsTraceLog;

    const-string/jumbo v7, "SystemUIBootTiming"

    .line 207
    const-wide/16 v10, 0x1000

    .line 206
    invoke-direct {v5, v7, v10, v11}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 208
    .local v5, "log":Landroid/util/TimingsTraceLog;
    const-string/jumbo v7, "StartServices"

    invoke-virtual {v5, v7}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 211
    invoke-static {p0}, Lcom/android/systemui/util/MdmLogger;->init(Landroid/content/Context;)V

    .line 214
    array-length v0, p1

    .line 215
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 216
    aget-object v1, p1, v4

    .line 217
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v7, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "SystemUIService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "StartServices"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 222
    .local v8, "ti":J
    :try_start_0
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/SystemUIFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 223
    .local v6, "newService":Ljava/lang/Object;
    iget-object v10, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    if-nez v6, :cond_6

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    :goto_1
    check-cast v7, Lcom/android/systemui/SystemUI;

    aput-object v7, v10, v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v7, v7, v4

    iput-object p0, v7, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 231
    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v7, v7, v4

    iget-object v10, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v10, v7, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 232
    sget-boolean v7, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "SystemUIService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "running: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/android/systemui/SystemUI;->start()V

    .line 234
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    .line 238
    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 239
    const-string/jumbo v7, "SystemUIService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Initialization of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_4
    iget-boolean v7, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v7, :cond_5

    .line 242
    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 215
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    move-object v7, v6

    .line 223
    goto/16 :goto_1

    .line 226
    .end local v6    # "newService":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 227
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 224
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 225
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 245
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    .end local v8    # "ti":J
    :cond_7
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 246
    const-class v7, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/PluginManager;

    .line 247
    new-instance v10, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    .line 275
    const-class v11, Lcom/android/systemui/plugins/OverlayPlugin;

    .line 246
    invoke-interface {v7, v10, v11, v12}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 277
    iput-boolean v12, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    .line 278
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 282
    iget-boolean v2, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v1, v2

    .line 284
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/16 v6, 0x3e8

    .line 118
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 122
    sget-boolean v3, Lcom/android/systemui/SystemUIApplication;->DEBUG:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x1f4

    :goto_0
    int-to-long v4, v3

    .line 123
    .local v4, "thresholdMs":J
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/os/Looper;->setSlowDispatchThresholdMs(J)V

    .line 130
    .end local v4    # "thresholdMs":J
    :cond_0
    const v3, 0x7f120363

    invoke-virtual {p0, v3}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    sput-object p0, Lcom/android/systemui/SystemUIApplication;->mGearContext:Landroid/content/Context;

    .line 132
    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    .line 134
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 137
    new-instance v3, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    return-void

    :cond_1
    move v3, v6

    .line 122
    goto :goto_0

    .line 156
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 158
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    return-void

    .line 165
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    invoke-direct {p0, v3}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    goto :goto_1
.end method

.method startSecondaryUserServicesIfNeeded()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    .line 188
    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    .line 178
    return-void
.end method
