.class public Lcom/caverock/androidsvg/SVGParser$TextScanner;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TextScanner"
.end annotation


# instance fields
.field protected input:Ljava/lang/String;

.field protected position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2159
    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2164
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    .line 2165
    return-void
.end method

.method private scanForFloat()I
    .locals 7

    .prologue
    const/16 v6, 0x2d

    const/16 v5, 0x2b

    .line 2377
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2379
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2380
    .local v1, "lastValidPos":I
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2382
    .local v2, "start":I
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2384
    .local v0, "ch":I
    if-ne v0, v6, :cond_7

    .line 2385
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2386
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2395
    :cond_1
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_9

    .line 2404
    :cond_2
    const/16 v3, 0x65

    if-ne v0, v3, :cond_a

    .line 2405
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2406
    if-ne v0, v6, :cond_b

    .line 2407
    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2408
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2418
    :cond_5
    :goto_2
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2419
    return v1

    .line 2378
    .end local v0    # "ch":I
    .end local v1    # "lastValidPos":I
    .end local v2    # "start":I
    :cond_6
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    return v3

    .line 2384
    .restart local v0    # "ch":I
    .restart local v1    # "lastValidPos":I
    .restart local v2    # "start":I
    :cond_7
    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 2387
    :cond_8
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    .line 2388
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2389
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2390
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    .line 2391
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_3

    .line 2396
    :cond_9
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    .line 2397
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2398
    :goto_4
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2399
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    .line 2400
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_4

    .line 2404
    :cond_a
    const/16 v3, 0x45

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 2406
    :cond_b
    if-eq v0, v5, :cond_4

    goto :goto_1

    .line 2409
    :cond_c
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    .line 2410
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2411
    :goto_5
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2412
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    .line 2413
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_5
.end method

.method private scanForInteger()I
    .locals 5

    .prologue
    .line 2429
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2431
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2432
    .local v1, "lastValidPos":I
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2434
    .local v2, "start":I
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2436
    .local v0, "ch":I
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    .line 2437
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2438
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2447
    :cond_1
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2448
    return v1

    .line 2430
    .end local v0    # "ch":I
    .end local v1    # "lastValidPos":I
    .end local v2    # "start":I
    :cond_2
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    return v3

    .line 2436
    .restart local v0    # "ch":I
    .restart local v1    # "lastValidPos":I
    .restart local v2    # "start":I
    :cond_3
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2439
    :cond_4
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    .line 2440
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2441
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2442
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    .line 2443
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method protected advanceChar()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2302
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2304
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2305
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2308
    return v2

    .line 2303
    :cond_0
    return v2

    .line 2306
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public ahead()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2456
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2457
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2459
    :cond_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2460
    .local v1, "str":Ljava/lang/String;
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2461
    return-object v1

    .line 2457
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2458
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0
.end method

.method public consume(C)Z
    .locals 3
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 2283
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2284
    .local v0, "found":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 2286
    :goto_1
    return v0

    .line 2283
    .end local v0    # "found":Z
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2285
    .restart local v0    # "found":Z
    :cond_2
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_1
.end method

.method public consume(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2293
    .local v1, "len":I
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 2294
    .local v0, "found":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 2296
    :goto_1
    return v0

    .line 2293
    .end local v0    # "found":Z
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2295
    .restart local v0    # "found":Z
    :cond_2
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_1
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 2172
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasLetter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2489
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 2491
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2492
    .local v0, "ch":C
    const/16 v1, 0x61

    if-ge v0, v1, :cond_3

    :cond_0
    const/16 v1, 0x41

    if-ge v0, v1, :cond_4

    :cond_1
    return v3

    .line 2490
    .end local v0    # "ch":C
    :cond_2
    return v3

    .line 2492
    .restart local v0    # "ch":C
    :cond_3
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_4
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    goto :goto_0
.end method

.method protected isEOL(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 2191
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method protected isWhitespace(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 2177
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public nextChar()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 2248
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 2249
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public nextFlag()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x31

    .line 2270
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2272
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2273
    .local v0, "ch":C
    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    .line 2274
    :cond_0
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2275
    if-eq v0, v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 2271
    .end local v0    # "ch":C
    :cond_1
    return-object v4

    .line 2273
    .restart local v0    # "ch":C
    :cond_2
    if-eq v0, v3, :cond_0

    .line 2277
    return-object v4

    .line 2275
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public nextFloat()Ljava/lang/Float;
    .locals 4

    .prologue
    .line 2211
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->scanForFloat()I

    move-result v0

    .line 2212
    .local v0, "floatEnd":I
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-eq v0, v2, :cond_0

    .line 2214
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2215
    .local v1, "result":Ljava/lang/Float;
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2216
    return-object v1

    .line 2213
    .end local v1    # "result":Ljava/lang/Float;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public nextFunction()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2352
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2354
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2356
    .local v2, "start":I
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2357
    .local v0, "ch":I
    :goto_0
    const/16 v3, 0x61

    if-ge v0, v3, :cond_3

    :cond_0
    const/16 v3, 0x41

    if-ge v0, v3, :cond_4

    .line 2359
    :cond_1
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2360
    .local v1, "end":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2361
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_1

    .line 2353
    .end local v0    # "ch":I
    .end local v1    # "end":I
    .end local v2    # "start":I
    :cond_2
    return-object v5

    .line 2357
    .restart local v0    # "ch":I
    .restart local v2    # "start":I
    :cond_3
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_0

    .line 2358
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    .line 2357
    :cond_4
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_1

    goto :goto_2

    .line 2362
    .restart local v1    # "end":I
    :cond_5
    const/16 v3, 0x28

    if-eq v0, v3, :cond_6

    .line 2366
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2367
    return-object v5

    .line 2363
    :cond_6
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2364
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public nextInteger()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 2237
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->scanForInteger()I

    move-result v0

    .line 2239
    .local v0, "intEnd":I
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-eq v0, v2, :cond_0

    .line 2241
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2242
    .local v1, "result":Ljava/lang/Integer;
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2243
    return-object v1

    .line 2240
    .end local v1    # "result":Ljava/lang/Integer;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public nextLength()Lcom/caverock/androidsvg/SVG$Length;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2255
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v0

    .line 2256
    .local v0, "scalar":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 2258
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1

    .line 2259
    .local v1, "unit":Lcom/caverock/androidsvg/SVG$Unit;
    if-eqz v1, :cond_1

    .line 2262
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    return-object v2

    .line 2257
    .end local v1    # "unit":Lcom/caverock/androidsvg/SVG$Unit;
    :cond_0
    return-object v2

    .line 2260
    .restart local v1    # "unit":Lcom/caverock/androidsvg/SVG$Unit;
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    return-object v2
.end method

.method public nextQuotedString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2500
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2502
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2503
    .local v2, "start":I
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2504
    .local v0, "ch":I
    move v1, v0

    .line 2505
    .local v1, "endQuote":I
    const/16 v3, 0x27

    if-ne v0, v3, :cond_3

    .line 2507
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2508
    :goto_0
    if-ne v0, v6, :cond_4

    .line 2510
    :cond_1
    if-eq v0, v6, :cond_5

    .line 2514
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2515
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2501
    .end local v0    # "ch":I
    .end local v1    # "endQuote":I
    .end local v2    # "start":I
    :cond_2
    return-object v5

    .line 2505
    .restart local v0    # "ch":I
    .restart local v1    # "endQuote":I
    .restart local v2    # "start":I
    :cond_3
    const/16 v3, 0x22

    if-eq v0, v3, :cond_0

    .line 2506
    return-object v5

    .line 2508
    :cond_4
    if-eq v0, v1, :cond_1

    .line 2509
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    .line 2511
    :cond_5
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2512
    return-object v5
.end method

.method public nextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2320
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken(C)Ljava/lang/String;
    .locals 5
    .param p1, "terminator"    # C

    .prologue
    const/4 v4, 0x0

    .line 2330
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2333
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2334
    .local v0, "ch":I
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2335
    :cond_0
    return-object v4

    .line 2331
    .end local v0    # "ch":I
    :cond_1
    return-object v4

    .line 2334
    .restart local v0    # "ch":I
    :cond_2
    if-eq v0, p1, :cond_0

    .line 2337
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2338
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2339
    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 2342
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2339
    :cond_4
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2340
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    .line 2339
    :cond_5
    if-ne v0, p1, :cond_4

    goto :goto_1
.end method

.method public nextUnit()Lcom/caverock/androidsvg/SVG$Unit;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2466
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2468
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2469
    .local v0, "ch":I
    const/16 v3, 0x25

    if-eq v0, v3, :cond_1

    .line 2473
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-gt v3, v4, :cond_2

    .line 2476
    :try_start_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v2

    .line 2477
    .local v2, "result":Lcom/caverock/androidsvg/SVG$Unit;
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    return-object v2

    .line 2467
    .end local v0    # "ch":I
    .end local v2    # "result":Lcom/caverock/androidsvg/SVG$Unit;
    :cond_0
    return-object v6

    .line 2470
    .restart local v0    # "ch":I
    :cond_1
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2471
    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    return-object v3

    .line 2474
    :cond_2
    return-object v6

    .line 2479
    :catch_0
    move-exception v1

    .line 2480
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v6
.end method

.method public possibleNextFloat()Ljava/lang/Float;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2226
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2227
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2228
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v0

    .line 2229
    .local v0, "result":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 2231
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2232
    return-object v2

    .line 2230
    :cond_0
    return-object v0
.end method

.method public restOfText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2523
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2526
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2527
    .local v0, "start":I
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2528
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2524
    .end local v0    # "start":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public skipCommaWhitespace()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2198
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2199
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2201
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 2203
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2204
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2205
    const/4 v0, 0x1

    return v0

    .line 2200
    :cond_0
    return v2

    .line 2202
    :cond_1
    return v2
.end method

.method public skipWhitespace()V
    .locals 2

    .prologue
    .line 2182
    :goto_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2185
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2187
    :cond_0
    return-void
.end method
