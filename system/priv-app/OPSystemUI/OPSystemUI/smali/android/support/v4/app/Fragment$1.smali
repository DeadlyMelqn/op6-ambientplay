.class Landroid/support/v4/app/Fragment$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;

    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Landroid/support/v4/app/Fragment;->-wrap0(Landroid/support/v4/app/Fragment;)V

    .line 2070
    return-void
.end method