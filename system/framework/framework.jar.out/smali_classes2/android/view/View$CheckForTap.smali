.class final Landroid/view/View$CheckForTap;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;

.field public x:F

.field public y:F


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    .prologue
    .line 25017
    iput-object p1, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$CheckForTap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;
    .param p2, "-this1"    # Landroid/view/View$CheckForTap;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25023
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 25024
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    iget v1, p0, Landroid/view/View$CheckForTap;->x:F

    iget v2, p0, Landroid/view/View$CheckForTap;->y:F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Landroid/view/View;->-wrap1(Landroid/view/View;ZFF)V

    .line 25025
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iget v2, p0, Landroid/view/View$CheckForTap;->x:F

    iget v3, p0, Landroid/view/View$CheckForTap;->y:F

    invoke-static {v0, v1, v2, v3}, Landroid/view/View;->-wrap0(Landroid/view/View;IFF)V

    .line 25026
    return-void
.end method
