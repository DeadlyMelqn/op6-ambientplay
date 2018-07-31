.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mHtmlText:Ljava/lang/String;

.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ClipData$Item;)V
    .locals 1
    .param p1, "other"    # Landroid/content/ClipData$Item;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iget-object v0, p1, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 203
    iget-object v0, p1, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 205
    iget-object v0, p1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 236
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 237
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 238
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 246
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 248
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 213
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 215
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 259
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 226
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 228
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 271
    const-string/jumbo v1, "Plain text must be supplied if HTML text is supplied"

    .line 270
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 274
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 275
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 276
    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 277
    return-void
.end method

.method private coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15

    .line 489
    const/16 v20, 0x0

    .line 491
    .local v20, "types":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    const-string/jumbo v23, "text/*"

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_d

    move-result-object v20

    .line 495
    .end local v20    # "types":[Ljava/lang/String;
    :goto_0
    const/4 v11, 0x0

    .line 496
    .local v11, "hasHtml":Z
    const/4 v12, 0x0

    .line 497
    .local v12, "hasText":Z
    if-eqz v20, :cond_2

    .line 498
    const/16 v21, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget-object v19, v20, v21

    .line 499
    .local v19, "type":Ljava/lang/String;
    const-string/jumbo v23, "text/html"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 500
    const/4 v11, 0x1

    .line 498
    :cond_0
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 501
    :cond_1
    const-string/jumbo v23, "text/"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 502
    const/4 v12, 0x1

    goto :goto_2

    .line 508
    .end local v19    # "type":Ljava/lang/String;
    :cond_2
    if-nez v11, :cond_3

    if-eqz v12, :cond_4

    .line 509
    :cond_3
    const/16 v17, 0x0

    .line 512
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    .line 514
    if-eqz v11, :cond_6

    const-string/jumbo v21, "text/html"

    :goto_3
    const/16 v24, 0x0

    .line 512
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 515
    .local v6, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v17

    .line 516
    .local v17, "stream":Ljava/io/FileInputStream;
    new-instance v15, Ljava/io/InputStreamReader;

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 519
    .local v15, "reader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v21, 0x80

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 520
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/16 v21, 0x2000

    move/from16 v0, v21

    new-array v4, v0, [C

    .line 522
    .local v4, "buffer":[C
    :goto_4
    invoke-virtual {v15, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v13

    .local v13, "len":I
    if-lez v13, :cond_7

    .line 523
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v4, v0, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 552
    .end local v4    # "buffer":[C
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    .line 553
    .local v10, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string/jumbo v21, "ClipData"

    const-string/jumbo v22, "Failure opening stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    if-eqz v17, :cond_4

    .line 567
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 576
    .end local v10    # "e":Ljava/lang/SecurityException;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 577
    .local v16, "scheme":Ljava/lang/String;
    const-string/jumbo v21, "content"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 578
    const-string/jumbo v21, "android.resource"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 577
    if-nez v21, :cond_5

    .line 579
    const-string/jumbo v21, "file"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 577
    if-eqz v21, :cond_13

    .line 580
    :cond_5
    const-string/jumbo v21, ""

    return-object v21

    .line 514
    .end local v16    # "scheme":Ljava/lang/String;
    .local v17, "stream":Ljava/io/FileInputStream;
    :cond_6
    :try_start_4
    const-string/jumbo v21, "text/plain"

    goto/16 :goto_3

    .line 525
    .restart local v4    # "buffer":[C
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v13    # "len":I
    .restart local v15    # "reader":Ljava/io/InputStreamReader;
    .local v17, "stream":Ljava/io/FileInputStream;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v18

    .line 526
    .local v18, "text":Ljava/lang/String;
    if-eqz v11, :cond_d

    .line 527
    if-eqz p2, :cond_b

    .line 531
    :try_start_5
    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    .line 532
    .local v14, "newText":Ljava/lang/CharSequence;
    if-eqz v14, :cond_9

    .line 565
    .end local v14    # "newText":Ljava/lang/CharSequence;
    :goto_6
    if-eqz v17, :cond_8

    .line 567
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 532
    :cond_8
    :goto_7
    return-object v14

    .restart local v14    # "newText":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v14, v18

    goto :goto_6

    .line 568
    .end local v14    # "newText":Ljava/lang/CharSequence;
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    goto :goto_7

    .line 533
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 565
    .local v9, "e":Ljava/lang/RuntimeException;
    if-eqz v17, :cond_a

    .line 567
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 534
    :cond_a
    :goto_8
    return-object v18

    .line 568
    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 539
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_b
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v21

    .line 565
    if-eqz v17, :cond_c

    .line 567
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 539
    :cond_c
    :goto_9
    return-object v21

    .line 568
    :catch_4
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 542
    .end local v8    # "e":Ljava/io/IOException;
    :cond_d
    if-eqz p2, :cond_f

    .line 565
    if-eqz v17, :cond_e

    .line 567
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 545
    :cond_e
    :goto_a
    return-object v18

    .line 568
    :catch_5
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 549
    .end local v8    # "e":Ljava/io/IOException;
    :cond_f
    :try_start_b
    invoke-static/range {v18 .. v18}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v21

    .line 565
    if-eqz v17, :cond_10

    .line 567
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 549
    :cond_10
    :goto_b
    return-object v21

    .line 568
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 559
    .end local v4    # "buffer":[C
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "text":Ljava/lang/String;
    :catch_7
    move-exception v8

    .line 561
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v21, "ClipData"

    const-string/jumbo v22, "Failure loading text"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v21

    .line 565
    if-eqz v17, :cond_11

    .line 567
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 562
    :cond_11
    :goto_c
    return-object v21

    .line 568
    :catch_8
    move-exception v8

    goto :goto_c

    .line 555
    .end local v8    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 565
    .local v7, "e":Ljava/io/FileNotFoundException;
    if-eqz v17, :cond_4

    .line 567
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_5

    .line 568
    :catch_a
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v10    # "e":Ljava/lang/SecurityException;
    :catch_b
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .line 564
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v21

    .line 565
    if-eqz v17, :cond_12

    .line 567
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 564
    :cond_12
    :goto_d
    throw v21

    .line 568
    :catch_c
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 583
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v16    # "scheme":Ljava/lang/String;
    :cond_13
    if-eqz p2, :cond_14

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    return-object v21

    .line 586
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 592
    .end local v11    # "hasHtml":Z
    .end local v12    # "hasText":Z
    .end local v16    # "scheme":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    .line 593
    if-eqz p2, :cond_16

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    return-object v21

    .line 596
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 601
    :cond_17
    const-string/jumbo v21, ""

    return-object v21

    .line 492
    .restart local v20    # "types":[Ljava/lang/String;
    :catch_d
    move-exception v10

    .restart local v10    # "e":Ljava/lang/SecurityException;
    goto/16 :goto_0
.end method

.method private uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 606
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string/jumbo v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string/jumbo v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 615
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 616
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 617
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 618
    const/16 v4, 0x21

    .line 617
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 619
    return-object v0
.end method


# virtual methods
.method public coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 464
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 466
    return-object v0

    .line 470
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 471
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 472
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 473
    check-cast v1, Landroid/text/Spanned;

    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 475
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 478
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 414
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    .line 415
    return-object v3

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "htmlText":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 420
    :try_start_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 421
    .local v2, "newText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 422
    return-object v2

    .line 424
    .end local v2    # "newText":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 429
    :cond_1
    if-eqz v3, :cond_2

    .line 430
    return-object v3

    .line 432
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    .line 332
    .local v16, "text":Ljava/lang/CharSequence;
    if-eqz v16, :cond_0

    .line 333
    return-object v16

    .line 337
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v17

    .line 338
    .local v17, "uri":Landroid/net/Uri;
    if-eqz v17, :cond_5

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 343
    .local v13, "resolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 344
    .local v5, "descr":Landroid/content/res/AssetFileDescriptor;
    const/4 v15, 0x0

    .line 345
    .local v15, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 349
    .local v11, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    const-string/jumbo v18, "text/*"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 356
    .end local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    if-eqz v5, :cond_2

    .line 358
    :try_start_1
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v15

    .line 359
    .local v15, "stream":Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/InputStreamReader;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v12, v15, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .local v12, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v18, 0x80

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 363
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v3, v0, [C

    .line 365
    .local v3, "buffer":[C
    :goto_1
    invoke-virtual {v12, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    .local v10, "len":I
    if-lez v10, :cond_1

    .line 366
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v3, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 369
    .end local v3    # "buffer":[C
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "len":I
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    move-object v11, v12

    .line 371
    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    const-string/jumbo v18, "ClipData"

    const-string/jumbo v19, "Failure loading text"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v18

    .line 376
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 378
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 372
    return-object v18

    .line 350
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    .local v15, "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    .line 351
    .local v8, "e":Ljava/lang/SecurityException;
    :try_start_4
    const-string/jumbo v18, "ClipData"

    const-string/jumbo v19, "Failure opening stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 375
    .end local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "e":Ljava/lang/SecurityException;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v18

    .line 376
    :goto_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 378
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 375
    throw v18

    .line 368
    .restart local v3    # "buffer":[C
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v10    # "len":I
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    .local v15, "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v18

    .line 376
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 378
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 368
    return-object v18

    .line 376
    .end local v3    # "buffer":[C
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "len":I
    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    .local v15, "stream":Ljava/io/FileInputStream;
    :cond_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 378
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 383
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 384
    .local v14, "scheme":Ljava/lang/String;
    const-string/jumbo v18, "content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 385
    const-string/jumbo v18, "android.resource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 384
    if-nez v18, :cond_3

    .line 386
    const-string/jumbo v18, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 384
    if-eqz v18, :cond_4

    .line 387
    :cond_3
    const-string/jumbo v18, ""

    return-object v18

    .line 389
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 394
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .end local v14    # "scheme":Ljava/lang/String;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 395
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_6

    .line 396
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 400
    :cond_6
    const-string/jumbo v18, ""

    return-object v18

    .line 375
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v13    # "resolver":Landroid/content/ContentResolver;
    .local v15, "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v18

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .local v11, "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 369
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v11, "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 352
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    .local v15, "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    .line 635
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 636
    const-string/jumbo v0, "H:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 639
    const-string/jumbo v0, "T:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 642
    const-string/jumbo v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 645
    const-string/jumbo v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_0

    .line 648
    :cond_3
    const-string/jumbo v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toShortSummaryString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    .line 654
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 655
    const-string/jumbo v0, "HTML"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 657
    const-string/jumbo v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 658
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 659
    const-string/jumbo v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 661
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 662
    const-string/jumbo v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_0

    .line 665
    :cond_3
    const-string/jumbo v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 626
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p0, v0}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    .line 628
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
