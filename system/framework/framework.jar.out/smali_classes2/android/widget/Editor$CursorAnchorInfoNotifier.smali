.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final mTmpIntOffset:[I

.field final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    .line 4056
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4057
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4058
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    .line 4059
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 4056
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "-this1"    # Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 29
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 4064
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    move-object/from16 v17, v0

    .line 4065
    .local v17, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_1

    .line 4066
    :cond_0
    return-void

    .line 4068
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 4069
    .local v16, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v16, :cond_2

    .line 4070
    return-void

    .line 4072
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4073
    return-void

    .line 4076
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4077
    return-void

    .line 4079
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    .line 4080
    .local v20, "layout":Landroid/text/Layout;
    if-nez v20, :cond_5

    .line 4081
    return-void

    .line 4084
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4085
    .local v3, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 4087
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v23

    .line 4088
    .local v23, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    move/from16 v0, v23

    invoke-virtual {v3, v0, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4091
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4092
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4093
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    const/16 v27, 0x0

    aget v8, v8, v27

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v2, v8, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4094
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4097
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v2

    int-to-float v6, v2

    .line 4099
    .local v6, "viewportToContentHorizontalOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v2

    int-to-float v7, v2

    .line 4101
    .local v7, "viewportToContentVerticalOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    .line 4102
    .local v26, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v26

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    move-object/from16 v24, v26

    .line 4103
    check-cast v24, Landroid/text/Spannable;

    .line 4104
    .local v24, "sp":Landroid/text/Spannable;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 4105
    .local v4, "composingTextStart":I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 4106
    .local v5, "composingTextEnd":I
    if-ge v5, v4, :cond_6

    .line 4107
    move/from16 v25, v5

    .line 4108
    .local v25, "temp":I
    move v5, v4

    .line 4109
    move/from16 v4, v25

    .line 4112
    .end local v25    # "temp":I
    :cond_6
    if-ltz v4, :cond_e

    if-ge v4, v5, :cond_e

    const/4 v15, 0x1

    .line 4113
    .local v15, "hasComposingText":Z
    :goto_0
    if-eqz v15, :cond_7

    .line 4114
    move-object/from16 v0, v26

    invoke-interface {v0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 4116
    .local v14, "composingText":Ljava/lang/CharSequence;
    invoke-virtual {v3, v4, v14}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4117
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    .line 4124
    .end local v4    # "composingTextStart":I
    .end local v5    # "composingTextEnd":I
    .end local v14    # "composingText":Ljava/lang/CharSequence;
    .end local v15    # "hasComposingText":Z
    .end local v24    # "sp":Landroid/text/Spannable;
    :cond_7
    if-ltz v23, :cond_d

    .line 4125
    move/from16 v22, v23

    .line 4126
    .local v22, "offset":I
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v21

    .line 4127
    .local v21, "line":I
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    add-float v9, v2, v6

    .line 4129
    .local v9, "insertionMarkerX":F
    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    int-to-float v2, v2

    add-float v10, v2, v7

    .line 4131
    .local v10, "insertionMarkerTop":F
    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    int-to-float v2, v2

    add-float v11, v2, v7

    .line 4133
    .local v11, "insertionMarkerBaseline":F
    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    add-float v12, v2, v7

    .line 4135
    .local v12, "insertionMarkerBottom":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v19

    .line 4137
    .local v19, "isTopVisible":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v18

    .line 4139
    .local v18, "isBottomVisible":Z
    const/4 v13, 0x0

    .line 4140
    .local v13, "insertionMarkerFlags":I
    if-nez v19, :cond_8

    if-eqz v18, :cond_9

    .line 4141
    :cond_8
    const/4 v13, 0x1

    .line 4143
    :cond_9
    if-eqz v19, :cond_a

    xor-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_b

    .line 4144
    :cond_a
    or-int/lit8 v13, v13, 0x2

    .line 4146
    :cond_b
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4147
    or-int/lit8 v13, v13, 0x4

    :cond_c
    move-object v8, v3

    .line 4149
    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4153
    .end local v9    # "insertionMarkerX":F
    .end local v10    # "insertionMarkerTop":F
    .end local v11    # "insertionMarkerBaseline":F
    .end local v12    # "insertionMarkerBottom":F
    .end local v13    # "insertionMarkerFlags":I
    .end local v18    # "isBottomVisible":Z
    .end local v19    # "isTopVisible":Z
    .end local v21    # "line":I
    .end local v22    # "offset":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4154
    return-void

    .line 4112
    .restart local v4    # "composingTextStart":I
    .restart local v5    # "composingTextEnd":I
    .restart local v24    # "sp":Landroid/text/Spannable;
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "hasComposingText":Z
    goto/16 :goto_0
.end method
