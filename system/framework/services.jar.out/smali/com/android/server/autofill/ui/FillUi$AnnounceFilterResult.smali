.class final Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;
.super Ljava/lang/Object;
.source "FillUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnnounceFilterResult"
.end annotation


# static fields
.field private static final SEARCH_RESULT_ANNOUNCEMENT_DELAY:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/FillUi;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/FillUi;
    .param p2, "-this1"    # Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    return-void
.end method


# virtual methods
.method public post()V
    .locals 4

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->remove()V

    .line 576
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->-get2(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 577
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->-get2(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 581
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 585
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi;->-get2(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 587
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 588
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi;->-get1(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi;->-get2(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 594
    return-void

    .line 590
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi;->-get1(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/high16 v4, 0x1150000

    .line 590
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0
.end method
