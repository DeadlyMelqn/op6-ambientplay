.class final Landroid/support/v4/provider/FontsContractCompat$5;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->requestFont(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$callerThreadHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/os/Handler;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$request:Landroid/support/v4/provider/FontRequest;

    iput-object p3, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 483
    :try_start_0
    iget-object v7, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$context:Landroid/content/Context;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$request:Landroid/support/v4/provider/FontRequest;

    const/4 v9, 0x0

    invoke-static {v7, v9, v8}, Landroid/support/v4/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/support/v4/provider/FontRequest;)Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 495
    .local v3, "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v7

    if-eqz v7, :cond_0

    .line 496
    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 517
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$4;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$4;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void

    .line 484
    .end local v3    # "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$1;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$1;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void

    .line 498
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "result":Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    :pswitch_0
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$2;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$2;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    return-void

    .line 507
    :pswitch_1
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$3;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$3;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void

    .line 528
    :cond_0
    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v2

    .line 529
    .local v2, "fonts":[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-nez v7, :cond_2

    .line 530
    :cond_1
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$5;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$5;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    return-void

    .line 539
    :cond_2
    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v1, v2, v6

    .line 540
    .local v1, "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v8

    if-eqz v8, :cond_4

    .line 543
    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    .line 544
    .local v4, "resultCode":I
    if-gez v4, :cond_3

    .line 547
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$6;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$6;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    :goto_1
    return-void

    .line 555
    :cond_3
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$7;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8, v4}, Landroid/support/v4/provider/FontsContractCompat$5$7;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 539
    .end local v4    # "resultCode":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 566
    .end local v1    # "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    :cond_5
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$context:Landroid/content/Context;

    invoke-static {v6, v10, v2}, Landroid/support/v4/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 568
    .local v5, "typeface":Landroid/graphics/Typeface;
    if-nez v5, :cond_6

    .line 571
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$8;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$8;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    return-void

    .line 581
    :cond_6
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$9;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8, v5}, Landroid/support/v4/provider/FontsContractCompat$5$9;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    return-void

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method