.class Landroid/widget/TextInputTimePickerView$2;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextInputTimePickerView;


# direct methods
.method constructor <init>(Landroid/widget/TextInputTimePickerView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextInputTimePickerView;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/TextInputTimePickerView$2;->this$0:Landroid/widget/TextInputTimePickerView;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/widget/TextInputTimePickerView$2;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/TextInputTimePickerView;->-wrap1(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z

    .line 110
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 105
    return-void
.end method
