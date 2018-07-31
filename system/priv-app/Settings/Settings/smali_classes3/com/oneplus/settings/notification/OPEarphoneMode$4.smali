.class Lcom/oneplus/settings/notification/OPEarphoneMode$4;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPEarphoneMode;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPEarphoneMode;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$4;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    iput-object p2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$4;->val$dialog:Landroid/app/AlertDialog;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    move-object v6, p1

    .line 168
    check-cast v6, Landroid/widget/TextView;

    .line 169
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 170
    .local v5, "text":Ljava/lang/CharSequence;
    instance-of v9, v5, Landroid/text/SpannableString;

    if-eqz v9, :cond_0

    .line 171
    if-ne v0, v10, :cond_0

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 173
    .local v7, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 175
    .local v8, "y":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    sub-int/2addr v7, v9

    .line 176
    invoke-virtual {v6}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 178
    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    add-int/2addr v7, v9

    .line 179
    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    add-int/2addr v8, v9

    .line 181
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 182
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v8}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 183
    .local v2, "line":I
    int-to-float v9, v7

    invoke-virtual {v1, v2, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 185
    .local v4, "off":I
    check-cast v5, Landroid/text/SpannableString;

    .end local v5    # "text":Ljava/lang/CharSequence;
    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-virtual {v5, v4, v4, v9}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 186
    .local v3, "link":[Landroid/text/style/ClickableSpan;
    array-length v9, v3

    if-eqz v9, :cond_0

    .line 187
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$4;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v9}, Lcom/oneplus/settings/notification/OPEarphoneMode;->-wrap1(Lcom/oneplus/settings/notification/OPEarphoneMode;)V

    .line 188
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->cancel()V

    .line 193
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_0
    return v10
.end method
