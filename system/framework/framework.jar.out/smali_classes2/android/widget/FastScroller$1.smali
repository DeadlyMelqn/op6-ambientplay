.class Landroid/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/FastScroller;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/FastScroller;->-wrap0(Landroid/widget/FastScroller;I)V

    .line 235
    return-void
.end method