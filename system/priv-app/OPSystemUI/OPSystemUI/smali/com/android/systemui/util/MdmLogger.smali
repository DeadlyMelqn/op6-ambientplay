.class public Lcom/android/systemui/util/MdmLogger;
.super Ljava/lang/Object;
.source "MdmLogger.java"


# static fields
.field private static gaInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

.field private static mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sInstance:Lcom/android/systemui/util/MdmLogger;

.field private static sTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sTouchGear:Z


# direct methods
.method static synthetic -get0()Lcom/android/systemui/util/GoogleAnalyticsHelper;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->gaInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

    return-object v0
.end method

.method static synthetic -get1()Lnet/oneplus/odm/insight/tracker/AppTracker;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/util/GoogleAnalyticsHelper;)Lcom/android/systemui/util/GoogleAnalyticsHelper;
    .locals 0
    .param p0, "-value"    # Lcom/android/systemui/util/GoogleAnalyticsHelper;

    .prologue
    sput-object p0, Lcom/android/systemui/util/MdmLogger;->gaInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    .line 18
    sput-object v0, Lcom/android/systemui/util/MdmLogger;->gaInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

    .line 19
    sput-object v0, Lcom/android/systemui/util/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sTouchGear:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    .line 28
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.AirplaneModeTile"

    const-string/jumbo v2, "quick_airplane"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.BatterySaverTile"

    const-string/jumbo v2, "quick_battery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.BluetoothTile"

    const-string/jumbo v2, "quick_bt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.CastTile"

    const-string/jumbo v2, "quick_cast"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.CellularTile"

    const-string/jumbo v2, "quick_mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.ColorInversionTile"

    const-string/jumbo v2, "quick_invert"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.DataSaverTile"

    const-string/jumbo v2, "quick_ds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.FlashlightTile"

    const-string/jumbo v2, "quick_fl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.GameModeTile"

    const-string/jumbo v2, "quick_game"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.HotspotTile"

    const-string/jumbo v2, "quick_hot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.LocationTile"

    const-string/jumbo v2, "quick_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.NfcTile"

    const-string/jumbo v2, "quick_nfc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.NightDisplayTile"

    const-string/jumbo v2, "quick_night"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.ReadModeTile"

    const-string/jumbo v2, "quick_read"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.RotationLockTile"

    const-string/jumbo v2, "quick_ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.VPNTile"

    const-string/jumbo v2, "quick_vpn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.WifiTile"

    const-string/jumbo v2, "quick_wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.WorkModeTile"

    const-string/jumbo v2, "quick_work"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string/jumbo v1, "Tile.OtgTile"

    const-string/jumbo v2, "quick_otg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-direct {v0, p1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 51
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MdmLogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    .line 53
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sHandler:Landroid/os/Handler;

    .line 57
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/systemui/util/MdmLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/MdmLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->init(Landroid/content/Context;)V

    .line 66
    const-string/jumbo v0, "MdmLogger"

    const-string/jumbo v1, "MdmLogger is initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/MdmLogger$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/util/MdmLogger$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method public static logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tileTag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v1, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0, p1, p2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string/jumbo v1, "MdmLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot get tag from tileTag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
