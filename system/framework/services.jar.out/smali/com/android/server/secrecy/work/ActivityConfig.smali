.class public Lcom/android/server/secrecy/work/ActivityConfig;
.super Ljava/lang/Object;
.source "ActivityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/secrecy/work/ActivityConfig;


# instance fields
.field private final ACTIVITY_CONFIG_FILE:Ljava/lang/String;

.field private final ATTR_CLASSNAME:Ljava/lang/String;

.field private final ATTR_PACKAGE:Ljava/lang/String;

.field private final START_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TAG_ACTIVITY:Ljava/lang/Object;

.field private final mActivityItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/secrecy/work/ActivityConfig;->DEBUG:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, "SecrecyService.ActivityConfig"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->TAG:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "system/etc/activity_config.xml"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->ACTIVITY_CONFIG_FILE:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "activityconfig"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->START_TAG:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "activity"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->TAG_ACTIVITY:Ljava/lang/Object;

    .line 46
    const-string/jumbo v0, "packageName"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->ATTR_PACKAGE:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "className"

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->ATTR_CLASSNAME:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/android/server/secrecy/work/ActivityConfig;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/android/server/secrecy/work/ActivityConfig;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/android/server/secrecy/work/ActivityConfig;->sInstance:Lcom/android/server/secrecy/work/ActivityConfig;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/server/secrecy/work/ActivityConfig;

    invoke-direct {v0}, Lcom/android/server/secrecy/work/ActivityConfig;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/work/ActivityConfig;->sInstance:Lcom/android/server/secrecy/work/ActivityConfig;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/server/secrecy/work/ActivityConfig;->sInstance:Lcom/android/server/secrecy/work/ActivityConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readConfigFromXml(Ljava/io/File;)V
    .locals 13
    .param p1, "configFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    .line 74
    const/4 v8, 0x0

    .line 76
    .local v8, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    .end local v8    # "permReader":Ljava/io/FileReader;
    invoke-direct {v8, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .local v8, "permReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 85
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 88
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    if-eq v9, v10, :cond_1

    if-ne v9, v12, :cond_0

    .line 92
    :cond_1
    if-eq v9, v10, :cond_2

    .line 93
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v11, "No start tag found"

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 129
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    return-void

    .line 77
    .end local v8    # "permReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 80
    return-void

    .line 96
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "permReader":Ljava/io/FileReader;
    .restart local v9    # "type":I
    :cond_2
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "activityconfig"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 97
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected start tag in : found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", expected \'permissions\' or \'config\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_2
    move-exception v3

    .line 125
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 106
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    :cond_3
    :try_start_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/secrecy/work/ActivityConfig;->TAG_ACTIVITY:Ljava/lang/Object;

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 108
    const-string/jumbo v10, "packageName"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "packageName":Ljava/lang/String;
    const-string/jumbo v10, "className"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "className":Ljava/lang/String;
    new-instance v0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    invoke-direct {v0, p0, v6, v1}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;-><init>(Lcom/android/server/secrecy/work/ActivityConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v0, "activiytItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    iget-object v10, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    .end local v0    # "activiytItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 102
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    if-ne v10, v12, :cond_3

    .line 127
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 115
    .restart local v5    # "name":Ljava/lang/String;
    :cond_5
    :try_start_6
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 126
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catchall_0
    move-exception v10

    .line 127
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 126
    throw v10
.end method


# virtual methods
.method public clearActivityInfo()V
    .locals 3

    .prologue
    .line 201
    sget-object v1, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    const-string/jumbo v0, "SecrecyService.ActivityConfig"

    const-string/jumbo v2, "clearActivityInfo"

    invoke-static {v0, v2}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 205
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v3, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 182
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActivityItems.size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "activityItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    .line 184
    .local v0, "activityItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->-get1(Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->-get0(Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    .end local v0    # "activityItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    .end local v1    # "activityItem$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "activityItem$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 187
    return-void
.end method

.method public isInActivityConfig(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/work/ActivityConfig;->isInActivityConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInActivityConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 132
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 133
    :cond_0
    return v4

    .line 139
    :cond_1
    sget-object v3, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 140
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    .line 142
    .local v0, "activityItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    invoke-virtual {v0}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "activityItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    :cond_3
    monitor-exit v3

    .line 147
    return v4

    .line 139
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public parseActivityInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v4, 0x0

    .line 191
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "className"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "className":Ljava/lang/String;
    new-instance v0, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;-><init>(Lcom/android/server/secrecy/work/ActivityConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v0, "activiytItem":Lcom/android/server/secrecy/work/ActivityConfig$ActivityItem;
    sget-object v4, Lcom/android/server/secrecy/work/ActivityConfig;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 195
    :try_start_0
    iget-object v3, p0, Lcom/android/server/secrecy/work/ActivityConfig;->mActivityItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 197
    const-string/jumbo v3, "SecrecyService.ActivityConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseActivityInfo, packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", className = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 194
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public readConfigs()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system/etc/activity_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "configFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    const-string/jumbo v1, "SecrecyService.ActivityConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " error hanppend when readConfigs from system/etc/activity_config.xml, configFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/secrecy/policy/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 69
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/secrecy/work/ActivityConfig;->readConfigFromXml(Ljava/io/File;)V

    .line 70
    return-void
.end method
