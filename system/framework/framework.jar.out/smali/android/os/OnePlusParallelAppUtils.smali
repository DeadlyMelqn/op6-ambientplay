.class public Landroid/os/OnePlusParallelAppUtils;
.super Ljava/lang/Object;
.source "OnePlusParallelAppUtils.java"


# static fields
.field private static final BASIC_PARALLEL_APPS:[Ljava/lang/String;

.field public static final DBG:Z

.field public static final DBG_ALL:Z

.field public static final DBG_DUMPDSATCK:Z

.field public static final DBG_DUMPVSATCK:Z

.field private static final IS_PARALLEL_APP_FEATURE:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusParallelAppUtils"

.field private static WHITE_AUTH_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-array v0, v4, [I

    const/16 v1, 0x1c

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    .line 53
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "android"

    aput-object v1, v0, v3

    .line 55
    const-string/jumbo v1, "com.google.android.webview"

    aput-object v1, v0, v4

    .line 56
    const-string/jumbo v1, "com.android.webview"

    aput-object v1, v0, v5

    .line 57
    const-string/jumbo v1, "com.android.keychain"

    aput-object v1, v0, v6

    .line 58
    const-string/jumbo v1, "com.google.android.packageinstaller"

    aput-object v1, v0, v7

    .line 59
    const-string/jumbo v1, "com.android.packageinstaller"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "com.android.providers.telephony"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "com.android.providers.calendar"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "com.android.providers.media"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "com.android.documentsui"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "com.android.externalstorage"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "com.android.providers.downloads"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "com.android.providers.settings"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "com.android.server.telecom"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "com.google.android.gms"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "com.google.android.gsf"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "com.qualcomm.qti.tetherservice"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "com.android.vpndialogs"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "com.android.phone"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "com.android.providers.contacts"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "com.android.settings"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "com.oneplus"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "com.android.printspooler"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "com.oneplus.ifaaservice"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 53
    sput-object v0, Landroid/os/OnePlusParallelAppUtils;->BASIC_PARALLEL_APPS:[Ljava/lang/String;

    .line 82
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    const-string/jumbo v1, "media"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.android.contacts"

    aput-object v1, v0, v4

    const-string/jumbo v1, "contacts;com.android.contacts"

    aput-object v1, v0, v5

    .line 84
    const-string/jumbo v1, "com.android.contacts.files"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.oneplus.note.fileProvider"

    aput-object v1, v0, v7

    .line 85
    const-string/jumbo v1, "com.google.android.apps.photos.contentprovider"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "com.android.externalstorage.documents"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "oneplus.gallery"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "com.google.android.apps.docs.storage"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "com.oneplus.security.database.SafeProvider"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 82
    sput-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "persist.debug.onepluspa.all"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    .line 149
    const-string/jumbo v0, "persist.debug.onepluspa.stackd"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPDSATCK:Z

    .line 151
    const-string/jumbo v0, "persist.debug.onepluspa.stackv"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPVSATCK:Z

    .line 154
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    or-int/2addr v0, v1

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBasicParallelApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->BASIC_PARALLEL_APPS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 101
    sget-boolean v1, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    sget-object v3, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 104
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    sget-boolean v1, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v1, :cond_0

    .line 106
    const-string/jumbo v1, "OnePlusParallelAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": isParallelAuth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "authority":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method public static isParallelAuth(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "isSystemApp"    # Z

    .prologue
    const/4 v2, 0x0

    .line 116
    sget-boolean v1, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p1}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 119
    return v2

    .line 122
    :cond_0
    sget-object v3, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    .line 123
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    sget-boolean v1, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v1, :cond_1

    .line 125
    const-string/jumbo v1, "OnePlusParallelAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": isParallelAuth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 122
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "authority":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static isParallelUser(I)Z
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 134
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_1

    .line 135
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isParallelUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static pLogd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "OnePlusParallelAppUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPDSATCK:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pLogv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "OnePlusParallelAppUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPVSATCK:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
