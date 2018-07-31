.class final Landroid/widget/SelectionActionModeHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;,
        Landroid/widget/SelectionActionModeHelper$SelectionResult;,
        Landroid/widget/SelectionActionModeHelper$SelectionTracker;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectActionModeHelper"


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private final mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

.field private mTextClassification:Landroid/view/textclassifier/TextClassification;

.field private mTextClassificationAsyncTask:Landroid/os/AsyncTask;

.field private final mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -android_widget_SelectionActionModeHelper-mthref-0(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->suggestSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -android_widget_SelectionActionModeHelper-mthref-1(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -android_widget_SelectionActionModeHelper-mthref-3(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    invoke-static {p0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .locals 6
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 65
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 66
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 67
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    .line 68
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 69
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 66
    invoke-direct/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;-><init>(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 70
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 71
    return-void
.end method

.method private cancelAsyncTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 151
    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 153
    :cond_0
    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 154
    return-void
.end method

.method private static getActionType(I)I
    .locals 1
    .param p0, "menuItemId"    # I

    .prologue
    .line 735
    sparse-switch p0, :sswitch_data_0

    .line 750
    const/16 v0, 0x6c

    return v0

    .line 737
    :sswitch_0
    const/16 v0, 0xc8

    return v0

    .line 739
    :sswitch_1
    const/16 v0, 0x67

    return v0

    .line 741
    :sswitch_2
    const/16 v0, 0x65

    return v0

    .line 744
    :sswitch_3
    const/16 v0, 0x66

    return v0

    .line 746
    :sswitch_4
    const/16 v0, 0x68

    return v0

    .line 748
    :sswitch_5
    const/16 v0, 0x69

    return v0

    .line 735
    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_1
        0x1020021 -> :sswitch_2
        0x1020022 -> :sswitch_3
        0x1020031 -> :sswitch_3
        0x1020035 -> :sswitch_4
        0x1020041 -> :sswitch_5
    .end sparse-switch
.end method

.method private static getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 758
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 759
    return-object v0

    .line 761
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 6
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .prologue
    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get0(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 193
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 194
    .local v0, "actionMode":Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 197
    :cond_0
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 198
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 197
    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionUpdated(IILandroid/view/textclassifier/TextClassification;)V

    .line 199
    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 200
    return-void

    .end local v0    # "actionMode":Landroid/view/ActionMode;
    :cond_1
    move-object v1, v2

    .line 192
    goto :goto_0
.end method

.method private resetTextClassificationHelper()V
    .locals 6

    .prologue
    .line 203
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 204
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    .line 205
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 206
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 207
    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 203
    invoke-virtual/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    .line 208
    return-void
.end method

.method private skipTextClassification()Z
    .locals 5

    .prologue
    .line 158
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v3

    sget-object v4, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 160
    .local v0, "noOpTextClassifier":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 162
    .local v1, "noSelection":Z
    :goto_1
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    invoke-static {v3}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 164
    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    :goto_3
    return v2

    .line 158
    .end local v0    # "noOpTextClassifier":Z
    .end local v1    # "noSelection":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "noOpTextClassifier":Z
    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "noSelection":Z
    goto :goto_1

    .line 162
    :cond_2
    const/4 v2, 0x1

    .local v2, "password":Z
    goto :goto_2

    .line 164
    .end local v2    # "password":Z
    :cond_3
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 5
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 169
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz p1, :cond_3

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_3

    .line 171
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/textclassifier/TextClassifier;->getSettings()Landroid/view/textclassifier/TextClassifierConstants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassifierConstants;->isDarkLaunch()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get3(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v2

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get1(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 174
    :cond_0
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get0(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 178
    :goto_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 180
    .local v0, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    .line 184
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v2, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSmartSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 187
    .end local v0    # "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_2
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Editor;->setRestartActionModeOnNextRefresh(Z)V

    .line 188
    iput-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 189
    return-void

    .line 176
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_3
    iput-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    goto :goto_0
.end method


# virtual methods
.method synthetic -android_widget_SelectionActionModeHelper-mthref-2(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method synthetic -android_widget_SelectionActionModeHelper-mthref-4(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public getTextClassification()Landroid/view/textclassifier/TextClassification;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public invalidateActionModeAsync()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 101
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    .line 105
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    .line 106
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 107
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()J

    move-result-wide v2

    .line 108
    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;

    invoke-direct {v4, v6, v5}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;-><init>(BLjava/lang/Object;)V

    .line 109
    new-instance v5, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;

    invoke-direct {v5, v6, p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;-><init>(BLjava/lang/Object;)V

    .line 105
    invoke-direct/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;JLjava/util/function/Supplier;Ljava/util/function/Consumer;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDestroyActionMode()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionDestroyed()V

    .line 145
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 146
    return-void
.end method

.method public onSelectionAction(I)V
    .locals 5
    .param p1, "menuItemId"    # I

    .prologue
    .line 115
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 116
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 117
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper;->getActionType(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 115
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 118
    return-void
.end method

.method public onSelectionDrag()V
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 122
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 123
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    const/16 v4, 0x6a

    .line 121
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 124
    return-void
.end method

.method public onTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onTextChanged(IILandroid/view/textclassifier/TextClassification;)V

    .line 128
    return-void
.end method

.method public resetSelection(I)Z
    .locals 2
    .param p1, "textIndex"    # I

    .prologue
    .line 131
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelection(ILandroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeAsync(Z)V
    .locals 8
    .param p1, "adjustSelection"    # Z

    .prologue
    const/4 v6, 0x1

    .line 75
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->getSettings()Landroid/view/textclassifier/TextClassifierConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierConstants;->isSuggestSelectionEnabledForEditableText()Z

    move-result v0

    .line 75
    :goto_0
    and-int/2addr p1, v0

    .line 79
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 80
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 81
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 82
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onOriginalSelection(Ljava/lang/CharSequence;II)V

    .line 83
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 84
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 97
    :goto_1
    return-void

    :cond_0
    move v0, v6

    .line 75
    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    .line 88
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    .line 89
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 90
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()J

    move-result-wide v2

    .line 91
    if-eqz p1, :cond_2

    .line 92
    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;

    invoke-direct {v4, v6, v5}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;-><init>(BLjava/lang/Object;)V

    .line 94
    :goto_2
    new-instance v5, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;

    invoke-direct {v5, v6, p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;-><init>(BLjava/lang/Object;)V

    .line 88
    invoke-direct/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;JLjava/util/function/Supplier;Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    goto :goto_1

    .line 93
    :cond_2
    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;

    const/4 v7, 0x2

    invoke-direct {v4, v7, v5}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;-><init>(BLjava/lang/Object;)V

    goto :goto_2
.end method
