.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mOkButton:Landroid/view/View;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 127
    :cond_0
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 144
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 147
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 153
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 156
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    const v0, 0x7f1102e4

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 119
    return v0

    .line 109
    :pswitch_0
    const v0, 0x7f1102de

    return v0

    .line 111
    :pswitch_1
    return v0

    .line 113
    :pswitch_2
    const v0, 0x7f1102db

    return v0

    .line 115
    :pswitch_3
    const v0, 0x7f1102e5

    return v0

    .line 117
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setSelected(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setUserActivityListener(Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;)V

    .line 197
    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 211
    :cond_0
    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$5;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setTextChangeListener(Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;)V

    .line 247
    const v0, 0x7f0a0148

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton0:Landroid/view/View;

    .line 248
    const v0, 0x7f0a0149

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton1:Landroid/view/View;

    .line 249
    const v0, 0x7f0a014a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton2:Landroid/view/View;

    .line 250
    const v0, 0x7f0a014b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton3:Landroid/view/View;

    .line 251
    const v0, 0x7f0a014c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton4:Landroid/view/View;

    .line 252
    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton5:Landroid/view/View;

    .line 253
    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton6:Landroid/view/View;

    .line 254
    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton7:Landroid/view/View;

    .line 255
    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton8:Landroid/view/View;

    .line 256
    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mButton9:Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus()Z

    .line 259
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 260
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_0
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 87
    return v2

    .line 88
    :cond_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mDeleteButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performClick(Landroid/view/View;)V

    .line 90
    return v2

    .line 92
    :cond_1
    const/4 v1, 0x7

    if-lt p1, v1, :cond_2

    const/16 v1, 0x10

    if-gt p1, v1, :cond_2

    .line 93
    add-int/lit8 v0, p1, -0x7

    .line 94
    .local v0, "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    .line 95
    return v2

    .line 97
    .end local v0    # "number":I
    :cond_2
    const/16 v1, 0x90

    if-lt p1, v1, :cond_3

    const/16 v1, 0x99

    if-gt p1, v1, :cond_3

    .line 98
    add-int/lit16 v0, p1, -0x90

    .line 99
    .restart local v0    # "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->performNumberClick(I)V

    .line 100
    return v2

    .line 102
    .end local v0    # "number":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->requestFocus()Z

    .line 58
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 59
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "announce"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->reset(ZZ)V

    .line 167
    return-void
.end method

.method protected resetState()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    .line 69
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    .line 75
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->setEnabled(Z)V

    .line 81
    return-void
.end method
