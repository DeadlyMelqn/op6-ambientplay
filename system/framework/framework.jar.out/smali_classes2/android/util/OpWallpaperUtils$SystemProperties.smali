.class Landroid/util/OpWallpaperUtils$SystemProperties;
.super Ljava/lang/Object;
.source "OpWallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/OpWallpaperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemProperties"
.end annotation


# static fields
.field private static sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    sput-object v0, Landroid/util/OpWallpaperUtils$SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    .line 417
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 421
    sget-object v6, Landroid/util/OpWallpaperUtils$SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_0

    .line 423
    :try_start_0
    const-string/jumbo v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 424
    .local v5, "systemPropertiesClass":Ljava/lang/Class;
    if-eqz v5, :cond_0

    .line 426
    const-string/jumbo v6, "get"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 425
    sput-object v6, Landroid/util/OpWallpaperUtils$SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 434
    .end local v5    # "systemPropertiesClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    sget-object v6, Landroid/util/OpWallpaperUtils$SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    .line 436
    :try_start_1
    sget-object v6, Landroid/util/OpWallpaperUtils$SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    .line 437
    :catch_0
    move-exception v2

    .line 445
    :cond_1
    :goto_1
    return-object v10

    .line 439
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 441
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 428
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 430
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v3

    .local v3, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method
