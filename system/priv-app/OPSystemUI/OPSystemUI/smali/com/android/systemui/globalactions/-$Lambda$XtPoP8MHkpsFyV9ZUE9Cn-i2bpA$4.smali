.class final synthetic Lcom/android/systemui/globalactions/-$Lambda$XtPoP8MHkpsFyV9ZUE9Cn-i2bpA$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/-$Lambda$XtPoP8MHkpsFyV9ZUE9Cn-i2bpA$4;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/-$Lambda$XtPoP8MHkpsFyV9ZUE9Cn-i2bpA$4;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/globalactions/-$Lambda$XtPoP8MHkpsFyV9ZUE9Cn-i2bpA$4;->-$f0:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$-com_android_systemui_globalactions_GlobalActionsDialog$ActionsDialog_46395(Landroid/view/View;ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/globalactions/-$Lambda$XtPoP8MHkpsFyV9ZUE9Cn-i2bpA$4;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/globalactions/-$Lambda$XtPoP8MHkpsFyV9ZUE9Cn-i2bpA$4;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/globalactions/-$Lambda$XtPoP8MHkpsFyV9ZUE9Cn-i2bpA$4;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/-$Lambda$XtPoP8MHkpsFyV9ZUE9Cn-i2bpA$4;->$m$0(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
