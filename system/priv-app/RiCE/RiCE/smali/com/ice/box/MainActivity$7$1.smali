.class Lcom/ice/box/MainActivity$7$1;
.super Landroid/os/CountDownTimer;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/MainActivity$7;->onAdFailedToLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ice/box/MainActivity$7;

.field final synthetic val$tag:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/ice/box/MainActivity$7;JJLandroid/widget/Toast;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/ice/box/MainActivity$7$1;->this$1:Lcom/ice/box/MainActivity$7;

    iput-object p6, p0, Lcom/ice/box/MainActivity$7$1;->val$tag:Landroid/widget/Toast;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/ice/box/MainActivity$7$1;->val$tag:Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/ice/box/MainActivity$7$1;->val$tag:Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
