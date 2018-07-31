.class public Lcom/android/systemui/util/leak/GarbageMonitor$Service;
.super Lcom/android/systemui/SystemUI;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static final ENABLED:Z


# instance fields
.field private mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 87
    const-string/jumbo v1, "debug.enable_leak_reporting"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    :cond_0
    sput-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->ENABLED:Z

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 95
    const-string/jumbo v2, "sysui_force_garbage_monitor"

    .line 94
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 96
    .local v0, "forceEnable":Z
    :goto_0
    sget-boolean v1, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->ENABLED:Z

    if-nez v1, :cond_1

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 97
    return-void

    .line 94
    .end local v0    # "forceEnable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "forceEnable":Z
    goto :goto_0

    .line 99
    :cond_1
    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    iput-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 100
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$Service;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/util/leak/GarbageMonitor;->start()V

    .line 101
    return-void
.end method
