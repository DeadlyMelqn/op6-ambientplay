.class public Landroid/util/OpWallpaperUtils$CustomizationSettings;
.super Ljava/lang/Object;
.source "OpWallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/OpWallpaperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizationSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;,
        Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCustomBackCoverType()Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 8

    .prologue
    .line 287
    sget-object v5, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 288
    .local v5, "result":Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/sys/module/param_read_write/parameters/backcover_color"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "custFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 290
    return-object v5

    .line 293
    :cond_0
    const/4 v0, 0x0

    .line 295
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 298
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ff3d3740"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 300
    sget-object v5, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->MYH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    goto :goto_0

    .line 298
    :cond_2
    const-string/jumbo v7, "ff2c2630"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 303
    sget-object v5, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->LCH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    goto :goto_0

    .line 298
    :cond_3
    const-string/jumbo v7, "fff6f7f7"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 306
    sget-object v5, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->YYB:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    goto :goto_0

    .line 298
    :cond_4
    const-string/jumbo v7, "fffe3d3e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    sget-object v5, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->HPH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 319
    :cond_5
    if-eqz v1, :cond_6

    .line 320
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 325
    :cond_6
    :goto_1
    return-object v5

    .line 322
    :catch_0
    move-exception v3

    .line 323
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "OpWallpaperUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 315
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 316
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "OpWallpaperUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    if-eqz v0, :cond_7

    .line 320
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 325
    :cond_7
    :goto_3
    return-object v5

    .line 322
    :catch_2
    move-exception v3

    .line 323
    const-string/jumbo v6, "OpWallpaperUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 317
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 319
    :goto_4
    if-eqz v0, :cond_8

    .line 320
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 325
    :cond_8
    :goto_5
    return-object v5

    .line 322
    :catch_3
    move-exception v3

    .line 323
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "OpWallpaperUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 317
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 315
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getCustomization()Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    .locals 8

    .prologue
    .line 238
    sget-object v4, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    .line 239
    .local v4, "result":Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "/sys/module/param_read_write/parameters/cust_flag"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v5, "themeStateFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 241
    return-object v4

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 246
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 249
    const-string/jumbo v6, "16859"

    invoke-static {}, Landroid/util/OpWallpaperUtils;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "17801"

    invoke-static {}, Landroid/util/OpWallpaperUtils;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 250
    :cond_2
    const-string/jumbo v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    sget-object v4, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->JCC:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    goto :goto_0

    .line 250
    :cond_3
    const-string/jumbo v6, "2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 255
    sget-object v4, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->SW:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    goto :goto_0

    .line 260
    :cond_4
    const-string/jumbo v6, "17819"

    invoke-static {}, Landroid/util/OpWallpaperUtils;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 261
    const-string/jumbo v6, "3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 263
    sget-object v4, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->AVG:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    goto :goto_0

    .line 269
    :cond_5
    sget-object v4, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 276
    :cond_6
    if-eqz v1, :cond_7

    .line 277
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    :cond_7
    :goto_1
    return-object v4

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "OpWallpaperUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 273
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "OpWallpaperUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    if-eqz v0, :cond_8

    .line 277
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 282
    :cond_8
    :goto_3
    return-object v4

    .line 279
    :catch_2
    move-exception v2

    .line 280
    const-string/jumbo v6, "OpWallpaperUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 274
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 276
    :goto_4
    if-eqz v0, :cond_9

    .line 277
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 282
    :cond_9
    :goto_5
    return-object v4

    .line 279
    :catch_3
    move-exception v2

    .line 280
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "OpWallpaperUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 274
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 272
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method
