.class public Lcom/android/server/secrecy/policy/SecrecySwitchHelper;
.super Ljava/lang/Object;
.source "SecrecySwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;,
        Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;
    }
.end annotation


# static fields
.field private static final DATA_FILE_DIR:Ljava/lang/String; = "data/system/sys_secrecy_switch_list.xml"

.field public static final FILTER_NAME:Ljava/lang/String; = "sys_secrecy_switch_list"

.field private static final SYS_FILE_DIR:Ljava/lang/String; = "system/etc/sys_secrecy_switch_list.xml"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

.field private final mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

.field private mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;


# direct methods
.method static synthetic -get0(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;)Lcom/android/server/secrecy/work/ActivityConfig;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    .prologue
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchUpdateListener"    # Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v1, "SecrecyService.SecrecySwitchHelper"

    iput-object v1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->TAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/android/server/secrecy/work/ActivityConfig;->getInstance()Lcom/android/server/secrecy/work/ActivityConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mActivityCofig:Lcom/android/server/secrecy/work/ActivityConfig;

    .line 196
    new-instance v1, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-direct {v1, p0, p2}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;-><init>(Lcom/android/server/secrecy/policy/SecrecySwitchHelper;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V

    iput-object v1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    .line 197
    iput-object p2, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    const-string/jumbo v2, "system/etc/sys_secrecy_switch_list.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->parseContentFromXML(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, "SecrecySwitchHelper dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 255
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "support = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getSupportSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "activityswitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getActivitySwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logswitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getLogSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "adb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getAdbSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mac_timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getMacTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id_timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getIdTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public dumpToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->dumpToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivitySwitch()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getActivitySwitch()Z

    move-result v0

    return v0
.end method

.method public getAdbSwitch()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getAdbSwitch()Z

    move-result v0

    return v0
.end method

.method public getIdTimeout()J
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getIdTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLogSwitch()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getLogSwitch()Z

    move-result v0

    return v0
.end method

.method public getMacTimeout()J
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getMacTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportSwitch()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mSecrecySwitchUpdateInfo:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$SecrecySwitchUpdateInfo;->getSupportSwitch()Z

    move-result v0

    return v0
.end method

.method public getUpdateFromProvider()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->mISwitchUpdateListener:Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;

    invoke-interface {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;->onSecrecyUpdateFromProvider()V

    .line 237
    :cond_0
    const-string/jumbo v0, "SecrecyService.SecrecySwitchHelper"

    const-string/jumbo v1, "update SecrecySwitchHelper config"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
