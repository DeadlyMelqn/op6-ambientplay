.class public Lcom/oneplus/notification/NotificationLedController;
.super Ljava/lang/Object;
.source "NotificationLedController.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefLowBatteryWarningLevel:I

.field private mLightBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLightPolicyFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/oneplus/notification/NotificationLedController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/NotificationLedController;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/notification/NotificationLedController;->mLightBlockedPackages:Ljava/util/HashSet;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/notification/NotificationLedController;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "notification_led_policy.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/oneplus/notification/NotificationLedController;->mLightPolicyFile:Landroid/util/AtomicFile;

    .line 59
    invoke-direct {p0}, Lcom/oneplus/notification/NotificationLedController;->loadLightPolicyFile()V

    .line 60
    iput-object p1, p0, Lcom/oneplus/notification/NotificationLedController;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/notification/NotificationLedController;->mDefLowBatteryWarningLevel:I

    .line 62
    return-void
.end method

.method private handleSaveLightPolicyFile()V
    .locals 9

    .prologue
    .line 114
    sget-object v5, Lcom/oneplus/notification/NotificationLedController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "handleSaveLightPolicyFile"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v6, p0, Lcom/oneplus/notification/NotificationLedController;->mLightPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v6

    .line 118
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/notification/NotificationLedController;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 124
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 125
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 126
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    const-string/jumbo v5, "notification-policy"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const-string/jumbo v5, "version"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v8, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const-string/jumbo v5, "blocked-packages"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    iget-object v5, p0, Lcom/oneplus/notification/NotificationLedController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v5, "package"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string/jumbo v5, "name"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    const-string/jumbo v5, "package"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lcom/oneplus/notification/NotificationLedController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to save light policy file, restoring backup"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/oneplus/notification/NotificationLedController;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6

    .line 144
    return-void

    .line 119
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lcom/oneplus/notification/NotificationLedController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to save light policy file"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 121
    return-void

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    const-string/jumbo v5, "blocked-packages"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string/jumbo v5, "notification-policy"

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 138
    iget-object v5, p0, Lcom/oneplus/notification/NotificationLedController;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 115
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "pkg$iterator":Ljava/util/Iterator;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private loadLightPolicyFile()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 65
    iget-object v10, p0, Lcom/oneplus/notification/NotificationLedController;->mLightPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v10

    .line 66
    :try_start_0
    iget-object v9, p0, Lcom/oneplus/notification/NotificationLedController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v4, 0x0

    .line 69
    .local v4, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v9, p0, Lcom/oneplus/notification/NotificationLedController;->mLightPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 70
    .local v4, "infile":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 71
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v5, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    const/4 v8, 0x1

    .line 75
    .local v8, "version":I
    :cond_0
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    if-eq v7, v13, :cond_4

    .line 76
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "tag":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    .line 78
    const-string/jumbo v9, "notification-policy"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 80
    const-string/jumbo v9, "version"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v9, "blocked-packages"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 82
    :cond_2
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v13, :cond_0

    .line 83
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 84
    const-string/jumbo v9, "package"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 85
    iget-object v9, p0, Lcom/oneplus/notification/NotificationLedController;->mLightBlockedPackages:Ljava/util/HashSet;

    .line 86
    const-string/jumbo v11, "name"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 94
    .end local v4    # "infile":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "version":I
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    monitor-exit v10

    .line 106
    return-void

    .line 87
    .restart local v4    # "infile":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    .restart local v8    # "version":I
    :cond_3
    :try_start_3
    const-string/jumbo v9, "blocked-packages"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    goto :goto_0

    .line 103
    .end local v6    # "tag":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 65
    .end local v4    # "infile":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "version":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 100
    :catch_1
    move-exception v3

    .line 101
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    sget-object v9, Lcom/oneplus/notification/NotificationLedController;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Unable to parse notification light policy"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 98
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    sget-object v9, Lcom/oneplus/notification/NotificationLedController;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Unable to parse notification light policy"

    invoke-static {v9, v11, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 103
    :try_start_8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 96
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    sget-object v9, Lcom/oneplus/notification/NotificationLedController;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Unable to read notification light policy"

    invoke-static {v9, v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 103
    :try_start_a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 103
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 102
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method private saveLightPolicyFile()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method


# virtual methods
.method public isLightEnabledImpl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLedController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public needTurnOff(Lcom/android/server/notification/ZenModeHelper;)Z
    .locals 12
    .param p1, "zmHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 147
    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 148
    iget-object v8, p0, Lcom/oneplus/notification/NotificationLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "oem_allow_led_light"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_2

    const/4 v3, 0x1

    .line 149
    .local v3, "disableLedInZenMode":Z
    :goto_0
    iget-object v8, p0, Lcom/oneplus/notification/NotificationLedController;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 150
    .local v1, "batteryStatus":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 151
    .local v4, "lowBattery":Z
    const/4 v5, 0x0

    .line 152
    .local v5, "powerConnected":Z
    if-eqz v1, :cond_0

    .line 153
    const-string/jumbo v8, "level"

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "batteryLevel":I
    const-string/jumbo v8, "plugged"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 155
    .local v2, "chargePlug":I
    iget v8, p0, Lcom/oneplus/notification/NotificationLedController;->mDefLowBatteryWarningLevel:I

    if-gt v0, v8, :cond_4

    const/4 v4, 0x1

    .line 156
    :goto_1
    if-eqz v2, :cond_5

    const/4 v5, 0x1

    .line 159
    .end local v0    # "batteryLevel":I
    .end local v2    # "chargePlug":I
    :cond_0
    :goto_2
    if-nez v3, :cond_1

    if-eqz v4, :cond_6

    xor-int/lit8 v6, v5, 0x1

    :cond_1
    :goto_3
    return v6

    .line 148
    .end local v1    # "batteryStatus":Landroid/content/Intent;
    .end local v3    # "disableLedInZenMode":Z
    .end local v4    # "lowBattery":Z
    .end local v5    # "powerConnected":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "disableLedInZenMode":Z
    goto :goto_0

    .line 147
    .end local v3    # "disableLedInZenMode":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "disableLedInZenMode":Z
    goto :goto_0

    .line 155
    .restart local v0    # "batteryLevel":I
    .restart local v1    # "batteryStatus":Landroid/content/Intent;
    .restart local v2    # "chargePlug":I
    .restart local v4    # "lowBattery":Z
    .restart local v5    # "powerConnected":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 156
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .end local v0    # "batteryLevel":I
    .end local v2    # "chargePlug":I
    :cond_6
    move v6, v7

    .line 159
    goto :goto_3
.end method

.method public setLightStatusImpl(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 163
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLedController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 168
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/notification/NotificationLedController;->saveLightPolicyFile()V

    .line 169
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/oneplus/notification/NotificationLedController;->mLightBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
