.class Lcom/oneplus/aod/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/IconMerger;

.field final synthetic val$moreRequired:Z


# direct methods
.method constructor <init>(Lcom/oneplus/aod/IconMerger;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/IconMerger;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/IconMerger$1;->this$0:Lcom/oneplus/aod/IconMerger;

    iput-boolean p2, p0, Lcom/oneplus/aod/IconMerger$1;->val$moreRequired:Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/aod/IconMerger$1;->this$0:Lcom/oneplus/aod/IconMerger;

    invoke-static {v0}, Lcom/oneplus/aod/IconMerger;->-get0(Lcom/oneplus/aod/IconMerger;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/oneplus/aod/IconMerger$1;->val$moreRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
