.class public Landroid/content/ContentDebugUtils;
.super Ljava/lang/Object;
.source "ContentDebugUtils.java"


# static fields
.field public static final DBG:Z

.field public static final DBG_ALL:Z

.field public static final DBG_DUMP_STACK:Z

.field private static final DBG_URI:Landroid/net/Uri;

.field public static final SAVE_DBG_MSG:Z = true

.field private static final TAG:Ljava/lang/String; = "ContentDebugUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    const-string/jumbo v0, "content://media/external/op_debug"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/content/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    .line 169
    const-string/jumbo v0, "persist.debug.content.all"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/ContentDebugUtils;->DBG_ALL:Z

    .line 172
    const-string/jumbo v0, "persist.debug.content.dumpstack"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    .line 175
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Landroid/content/ContentDebugUtils;->DBG_ALL:Z

    or-int/2addr v0, v1

    sput-boolean v0, Landroid/content/ContentDebugUtils;->DBG:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUriVolumeName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 137
    :cond_0
    return-object v3
.end method

.method public static isExternalMediaUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    const-string/jumbo v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "external"

    invoke-static {p0}, Landroid/content/ContentDebugUtils;->getUriVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    if-eq p0, v0, :cond_0

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sel"    # Ljava/lang/String;
    .param p4, "selArgs"    # [Ljava/lang/String;
    .param p5, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, "strUri":Ljava/lang/String;
    const/4 v1, 0x0

    .line 145
    .local v1, "strSelArgs":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v0, "pack_values":Landroid/content/ContentValues;
    if-eqz p4, :cond_0

    .line 147
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .end local v1    # "strSelArgs":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .end local v2    # "strUri":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "_tag"

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v3, "_action"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v3, "_uri"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v3, "sel"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v3, "sel_arg"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v3, "_pkg_name"

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-boolean v3, Landroid/content/ContentDebugUtils;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ContentDebugUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    return-object v0
.end method

.method public static saveDbgMsg(Landroid/content/ContentProvider;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "provider"    # Landroid/content/ContentProvider;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "sel"    # Ljava/lang/String;
    .param p5, "selArgs"    # [Ljava/lang/String;
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p3, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "strUri":Ljava/lang/String;
    const-string/jumbo v3, "deletedata=false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-static/range {p1 .. p6}, Landroid/content/ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 120
    .local v0, "dbg_values":Landroid/content/ContentValues;
    invoke-static {p3}, Landroid/content/ContentDebugUtils;->isExternalMediaUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    sget-object v3, Landroid/content/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v0    # "dbg_values":Landroid/content/ContentValues;
    .end local v2    # "strUri":Ljava/lang/String;
    :cond_0
    sget-boolean v3, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ContentDebugUtils"

    const-string/jumbo v4, "DbgMsg Stack:"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 127
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v3, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ContentDebugUtils"

    const-string/jumbo v4, "DbgMsg Stack:"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 127
    sget-boolean v4, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ContentDebugUtils"

    const-string/jumbo v5, "DbgMsg Stack:"

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_2
    throw v3
.end method

.method public static saveDbgMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8

    .line 72
    .local v8, "providerClient":Landroid/content/ContentProviderClient;
    if-eqz v8, :cond_0

    .line 73
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/content/ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 75
    .local v6, "dbg_values":Landroid/content/ContentValues;
    sget-object v0, Landroid/content/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v6    # "dbg_values":Landroid/content/ContentValues;
    :cond_0
    sget-boolean v0, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ContentDebugUtils"

    const-string/jumbo v1, "DbgMsg Stack:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_1
    if-eqz v8, :cond_2

    .line 81
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->release()Z

    .line 85
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v8    # "providerClient":Landroid/content/ContentProviderClient;
    :cond_2
    :goto_0
    return-void

    .line 77
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v8    # "providerClient":Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v7

    .line 79
    .local v7, "ex":Ljava/lang/Exception;
    sget-boolean v0, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ContentDebugUtils"

    const-string/jumbo v1, "DbgMsg Stack:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_3
    if-eqz v8, :cond_2

    .line 81
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 78
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 79
    sget-boolean v1, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ContentDebugUtils"

    const-string/jumbo v2, "DbgMsg Stack:"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_4
    if-eqz v8, :cond_5

    .line 81
    invoke-virtual {v8}, Landroid/content/ContentProviderClient;->release()Z

    .line 78
    :cond_5
    throw v0
.end method

.method public static saveDbgMsg(Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "iProvider"    # Landroid/content/IContentProvider;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "sel"    # Ljava/lang/String;
    .param p5, "selArgs"    # [Ljava/lang/String;
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "strUri":Ljava/lang/String;
    const-string/jumbo v3, "deletedata=false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    invoke-static/range {p1 .. p6}, Landroid/content/ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 98
    .local v0, "dbg_values":Landroid/content/ContentValues;
    invoke-static {p3}, Landroid/content/ContentDebugUtils;->isExternalMediaUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    sget-object v3, Landroid/content/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-interface {p0, p6, v3, v0}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v0    # "dbg_values":Landroid/content/ContentValues;
    .end local v2    # "strUri":Ljava/lang/String;
    :cond_0
    sget-boolean v3, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ContentDebugUtils"

    const-string/jumbo v4, "DbgMsg Stack:"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 105
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v3, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ContentDebugUtils"

    const-string/jumbo v4, "DbgMsg Stack:"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 105
    sget-boolean v4, Landroid/content/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ContentDebugUtils"

    const-string/jumbo v5, "DbgMsg Stack:"

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_2
    throw v3
.end method
