.class Landroid/support/design/widget/FloatingActionButtonImpl$3;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V
    .locals 0

    .line 372
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$3;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 0

    .line 375
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$3;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPreDraw()V

    const/4 p0, 0x1

    return p0
.end method
