.class public Lcom/android/systemui/recents/WhiteList;
.super Ljava/lang/Object;
.source "WhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/WhiteList$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sContext:Landroid/content/Context;

.field private static sGetWhiteListFail:Z

.field private static sInit:Z

.field private static sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private static sWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/WhiteList;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/recents/WhiteList;->getWhiteList(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/recents/WhiteList;->DEBUG:Z

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/WhiteList;->sInit:Z

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/WhiteList;->sGetWhiteListFail:Z

    .line 33
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.oppo.qetest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.oppo.qetest.remote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.oppo.qemonitor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.oppo.qemonitor.remote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "system"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "system:ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "android.process.acore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "android.process.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.android.dialer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.android.nfc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.android.providers.telephony"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.android.providers.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.apps.inputmethod.zhuyin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.sohu.inputmethod.sogou"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.baidu.input"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.inputmethod.pinyin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.xinshuru.inputmethod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.cootek.smartinputv5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.qqpinyin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.touchtype.swiftkey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.syntellia.fleksy.keyboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.baidu.input_huawei"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.komoxo.octopusime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.bingime.ime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.nuance.swype.dtc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.iflytek.inputmethod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.emoji.keyboard.touchpal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.baidu.input_mi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.baidu.input_miv6"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.baidu.input_yijia"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.process.gapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gms.persistent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gms.unstable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.apps.messaging"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.gms.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.inputmethod.latin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.tts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "org.codeaurora.ims"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qualcomm.telephony"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qualcomm.qcrilmsgtunnel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qualcomm.qti.telephonyservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qualcomm.qti.GBAHttpAuthentication.auth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qti.qualcomm.datastatusnotification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qualcomm.location.XT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qualcomm.qti.tetherservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qualcomm.wfd.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.nxp.spi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.oneplus.ota"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "net.oneplus.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.oneplus.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "net.oneplus.odm.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qq.tencent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.wb.alert.sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.zdworks.android.zdclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "org.tpmkranz.notifyme"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "mohammad.adib.sidebar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "mohammad.adib.sidebar.lite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mobileqqi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.cmcm.locker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "mobi.appplus.hilocker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.henry.app.optimizer.passcode.lockscreen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.solo.cm.go.locker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.jiubang.goscreenlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.qti.service.colorservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.android.bluetooth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.snapchat.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.viber.voip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.bbm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.skype.raider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.skype.rover"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "org.telegram.messenger"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.linkedin.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "cn.ledongli.ldl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.twitter.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.sgiggle.production"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.bsb.hike"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.imo.android.imoim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "org.codeaurora.bluetooth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.google.android.apps.tachyon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.delcom.standard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.softsim.control"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.UCMobile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.myfitnesspal.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.amap.android.ams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.monefy.app.lite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "android.ext.services"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.microsoft.teams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.oneplus.faceunlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "org.simalliance.openmobileapi.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.tencent.tim"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.xtc.watch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.UCMobile.intl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.hm.health"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    const-string/jumbo v0, "WhiteList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Raw WhiteList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpWhiteList(Ljava/io/PrintWriter;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 260
    sget-object v2, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    sget-object v3, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "pkg":[Ljava/lang/Object;
    if-eqz p0, :cond_1

    .line 263
    const-string/jumbo v2, "WHITE LIST APP:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v2, "   "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 266
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v2, " , "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 269
    return-void

    .line 272
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 273
    const-string/jumbo v2, "WhiteList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "idx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_2
    return-void
.end method

.method private static getWhiteList(Lorg/json/JSONArray;)V
    .locals 10
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v9, 0x1

    .line 226
    if-eqz p0, :cond_3

    .line 228
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 229
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 230
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "do_not_kill_package_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 232
    .local v5, "list":Lorg/json/JSONArray;
    sget-object v7, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    monitor-enter v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :try_start_1
    sget-object v6, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 235
    sget-object v6, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    :try_start_2
    monitor-exit v7

    .line 228
    .end local v2    # "i":I
    .end local v5    # "list":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .restart local v5    # "list":Lorg/json/JSONArray;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "list":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "WhiteList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWhiteList error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sput-boolean v9, Lcom/android/systemui/recents/WhiteList;->sGetWhiteListFail:Z

    .line 256
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "index":I
    :goto_2
    return-void

    .line 240
    .restart local v3    # "index":I
    :cond_2
    const/4 v6, 0x0

    :try_start_3
    sput-boolean v6, Lcom/android/systemui/recents/WhiteList;->sGetWhiteListFail:Z

    .line 241
    const-string/jumbo v6, "WhiteList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RecentAppWhiteList updated complete sWhiteList size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 245
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "WhiteList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWhiteList error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sput-boolean v9, Lcom/android/systemui/recents/WhiteList;->sGetWhiteListFail:Z

    goto :goto_2

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "index":I
    :cond_3
    const-string/jumbo v6, "WhiteList"

    const-string/jumbo v7, "jsonArray is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sput-boolean v9, Lcom/android/systemui/recents/WhiteList;->sGetWhiteListFail:Z

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    sget-boolean v0, Lcom/android/systemui/recents/WhiteList;->sInit:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/WhiteList;->sInit:Z

    .line 181
    sput-object p0, Lcom/android/systemui/recents/WhiteList;->sContext:Landroid/content/Context;

    .line 182
    invoke-static {}, Lcom/android/systemui/recents/WhiteList;->registerObserver()V

    .line 186
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/WhiteList;->sGetWhiteListFail:Z

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/WhiteList$1;

    invoke-direct {v1}, Lcom/android/systemui/recents/WhiteList$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_1
    return-void
.end method

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string/jumbo v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const-string/jumbo v0, "oneplus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 173
    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/android/systemui/recents/WhiteList;->sWhiteList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static registerObserver()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 204
    sget-object v2, Lcom/android/systemui/recents/WhiteList;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v2, :cond_0

    .line 205
    new-instance v1, Lcom/android/systemui/recents/WhiteList$OnlineConfigUpdater;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/WhiteList$OnlineConfigUpdater;-><init>(Lcom/android/systemui/recents/WhiteList$OnlineConfigUpdater;)V

    .line 206
    .local v1, "updater":Lcom/android/systemui/recents/WhiteList$OnlineConfigUpdater;
    new-instance v2, Lcom/oneplus/config/ConfigObserver;

    .line 207
    sget-object v3, Lcom/android/systemui/recents/WhiteList;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "RecentAppWhiteList"

    .line 206
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    sput-object v2, Lcom/android/systemui/recents/WhiteList;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 209
    :try_start_0
    sget-object v2, Lcom/android/systemui/recents/WhiteList;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v2}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 210
    sget-boolean v2, Lcom/android/systemui/recents/WhiteList;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WhiteList"

    const-string/jumbo v3, "Register online config observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "WhiteList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Register online config fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
