.class public Landroid/widget/RemoteViews$OnClickHandler;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickHandler"
.end annotation


# instance fields
.field private mEnterAnimationId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 320
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "launchStackId"    # I

    .prologue
    const/4 v10, 0x0

    .line 327
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 329
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    if-eqz v1, :cond_1

    .line 330
    iget v1, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 335
    .local v9, "opts":Landroid/app/ActivityOptions;
    :goto_0
    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    .line 336
    invoke-virtual {v9, p4}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 339
    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 341
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 340
    const/high16 v3, 0x10000000

    .line 341
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    move-object v2, p3

    .line 338
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 350
    const/4 v1, 0x1

    return v1

    .line 332
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    :cond_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .restart local v9    # "opts":Landroid/app/ActivityOptions;
    goto :goto_0

    .line 345
    .end local v0    # "context":Landroid/content/Context;
    .end local v9    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v8

    .line 346
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RemoteViews"

    const-string/jumbo v2, "Cannot send pending intent due to unknown exception: "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    return v10

    .line 342
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 343
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v1, "RemoteViews"

    const-string/jumbo v2, "Cannot send pending intent: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    return v10
.end method

.method public setEnterAnimationId(I)V
    .locals 0
    .param p1, "enterAnimationId"    # I

    .prologue
    .line 354
    iput p1, p0, Landroid/widget/RemoteViews$OnClickHandler;->mEnterAnimationId:I

    .line 355
    return-void
.end method
