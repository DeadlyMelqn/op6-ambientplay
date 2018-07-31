.class Landroid/support/v7/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flush(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 46
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)Z

    move-result v0

    return v0

    .line 47
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 48
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)Z

    move-result v0

    return v0

    .line 49
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 50
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)Z

    move-result v0

    return v0

    .line 52
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)Z
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 57
    sget-boolean v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v4, :cond_0

    .line 59
    :try_start_0
    const-class v4, Landroid/content/res/Resources;

    const-string/jumbo v5, "mDrawableCache"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 60
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    sput-boolean v6, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 66
    :cond_0
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "drawableCache":Ljava/util/Map;
    :try_start_1
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .end local v1    # "drawableCache":Ljava/util/Map;
    :goto_1
    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 75
    return v6

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v4, "ResourcesFlusher"

    const-string/jumbo v5, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v1    # "drawableCache":Ljava/util/Map;
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ResourcesFlusher"

    const-string/jumbo v5, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 78
    .end local v1    # "drawableCache":Ljava/util/Map;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)Z
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 83
    sget-boolean v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v4, :cond_0

    .line 85
    :try_start_0
    const-class v4, Landroid/content/res/Resources;

    const-string/jumbo v5, "mDrawableCache"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 86
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    sput-boolean v6, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "drawableCache":Ljava/lang/Object;
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    .line 96
    :try_start_1
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 102
    .end local v0    # "drawableCache":Ljava/lang/Object;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 104
    return v3

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v4, "ResourcesFlusher"

    const-string/jumbo v5, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "drawableCache":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ResourcesFlusher"

    const-string/jumbo v5, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 107
    .end local v0    # "drawableCache":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)Z

    move-result v3

    :cond_3
    return v3
.end method

.method private static flushNougats(Landroid/content/res/Resources;)Z
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 112
    sget-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    if-nez v5, :cond_0

    .line 114
    :try_start_0
    const-class v5, Landroid/content/res/Resources;

    const-string/jumbo v6, "mResourcesImpl"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    .line 115
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    sput-boolean v7, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    .line 122
    :cond_0
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_1

    .line 124
    return v4

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    const/4 v3, 0x0

    .line 129
    .local v3, "resourcesImpl":Ljava/lang/Object;
    :try_start_1
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 134
    .end local v3    # "resourcesImpl":Ljava/lang/Object;
    :goto_1
    if-nez v3, :cond_2

    .line 136
    return v4

    .line 130
    .restart local v3    # "resourcesImpl":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 139
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "resourcesImpl":Ljava/lang/Object;
    :cond_2
    sget-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v5, :cond_3

    .line 141
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "mDrawableCache"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 142
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    :goto_2
    sput-boolean v7, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 149
    :cond_3
    const/4 v0, 0x0

    .line 150
    .local v0, "drawableCache":Ljava/lang/Object;
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_4

    .line 152
    :try_start_3
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 158
    .end local v0    # "drawableCache":Ljava/lang/Object;
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)Z

    move-result v4

    :cond_5
    return v4

    .line 143
    :catch_2
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 153
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "drawableCache":Ljava/lang/Object;
    :catch_3
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)Z
    .locals 9
    .param p0, "cache"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 163
    sget-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    if-nez v5, :cond_0

    .line 165
    :try_start_0
    const-string/jumbo v5, "android.content.res.ThemedResourceCache"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    sput-boolean v7, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    .line 172
    :cond_0
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    if-nez v5, :cond_1

    .line 174
    return v8

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not find ThemedResourceCache class"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    sget-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v5, :cond_2

    .line 180
    :try_start_1
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    const-string/jumbo v6, "mUnthemedEntries"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 179
    sput-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 181
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_1
    sput-boolean v7, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 188
    :cond_2
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_3

    .line 190
    return v8

    .line 182
    :catch_1
    move-exception v3

    .line 183
    .local v3, "ee":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 193
    .end local v3    # "ee":Ljava/lang/NoSuchFieldException;
    :cond_3
    const/4 v4, 0x0

    .line 196
    .local v4, "unthemedEntries":Landroid/util/LongSparseArray;
    :try_start_2
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 195
    move-object v0, v5

    check-cast v0, Landroid/util/LongSparseArray;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    .end local v4    # "unthemedEntries":Landroid/util/LongSparseArray;
    :goto_2
    if-eqz v4, :cond_4

    .line 202
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 203
    return v7

    .line 197
    .restart local v4    # "unthemedEntries":Landroid/util/LongSparseArray;
    :catch_2
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 205
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "unthemedEntries":Landroid/util/LongSparseArray;
    :cond_4
    return v8
.end method
