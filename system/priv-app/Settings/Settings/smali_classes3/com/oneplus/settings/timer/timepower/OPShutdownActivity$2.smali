.class Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;
.super Ljava/lang/Object;
.source "OPShutdownActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-wrap0(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$2;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->-wrap1(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    .line 119
    return-void
.end method
