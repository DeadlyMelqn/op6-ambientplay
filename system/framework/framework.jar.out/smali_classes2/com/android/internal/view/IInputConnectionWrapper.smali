.class public abstract Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_CLOSE_CONNECTION:I = 0x96

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CONTENT:I = 0xa0

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS:I = 0x51

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field private static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 90
    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 91
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 92
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 93
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 194
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2
    .param p1, "states"    # I

    .prologue
    .line 179
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 180
    return-void
.end method

.method public closeConnection()V
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 212
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 143
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
    .locals 7
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "seq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 216
    const/16 v1, 0xa0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 218
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 147
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 139
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 140
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 183
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 185
    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 188
    const/16 v0, 0x51

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 190
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 227
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 198
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 234
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 581
    const-string/jumbo v11, "IInputConnectionWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unhandled message code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void

    .line 236
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 238
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 239
    .local v2, "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 240
    .local v3, "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 241
    .local v7, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1

    .line 242
    :cond_0
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 244
    return-void

    .line 247
    :cond_1
    :try_start_1
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    .line 246
    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 253
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v5

    .line 249
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 250
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v11

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 250
    throw v11

    .line 256
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 258
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 259
    .restart local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 260
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 261
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    .line 262
    :cond_2
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 264
    return-void

    .line 267
    :cond_3
    :try_start_4
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    .line 266
    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 273
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_1
    return-void

    .line 268
    :catch_1
    move-exception v5

    .line 269
    .restart local v5    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 271
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_1

    .line 270
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v11

    .line 271
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 270
    throw v11

    .line 276
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 278
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 279
    .restart local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 280
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 281
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    .line 282
    :cond_4
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getSelectedText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 291
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 284
    return-void

    .line 287
    :cond_5
    :try_start_7
    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 286
    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 291
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 293
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-void

    .line 288
    :catch_2
    move-exception v5

    .line 289
    .restart local v5    # "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setSelectedText"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 291
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_2

    .line 290
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v11

    .line 291
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 290
    throw v11

    .line 296
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 298
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 299
    .restart local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 300
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 301
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_7

    .line 302
    :cond_6
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 311
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 304
    return-void

    .line 306
    :cond_7
    :try_start_a
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 311
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 313
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_3
    return-void

    .line 308
    :catch_3
    move-exception v5

    .line 309
    .restart local v5    # "e":Landroid/os/RemoteException;
    :try_start_b
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 311
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_3

    .line 310
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v11

    .line 311
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 310
    throw v11

    .line 316
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 318
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 319
    .restart local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 320
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 321
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_9

    .line 322
    :cond_8
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getExtractedText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 331
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 324
    return-void

    .line 327
    :cond_9
    :try_start_d
    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v12, p1, Landroid/os/Message;->arg1:I

    .line 326
    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 331
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 333
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_4
    return-void

    .line 328
    :catch_4
    move-exception v5

    .line 329
    .restart local v5    # "e":Landroid/os/RemoteException;
    :try_start_e
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setExtractedText"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 331
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_4

    .line 330
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_4
    move-exception v11

    .line 331
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 330
    throw v11

    .line 336
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 337
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_b

    .line 338
    :cond_a
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 341
    :cond_b
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 343
    return-void

    .line 346
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 347
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    .line 348
    :cond_c
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setSelection on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void

    .line 351
    :cond_d
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 352
    return-void

    .line 355
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 356
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_f

    .line 357
    :cond_e
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performEditorAction on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 360
    :cond_f
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 361
    return-void

    .line 364
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 365
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_11

    .line 366
    :cond_10
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performContextMenuAction on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 369
    :cond_11
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 370
    return-void

    .line 373
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 374
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_13

    .line 375
    :cond_12
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitCompletion on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 378
    :cond_13
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 379
    return-void

    .line 382
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 383
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_15

    .line 384
    :cond_14
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitCorrection on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 387
    :cond_15
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 388
    return-void

    .line 391
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 392
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_16

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_17

    .line 393
    :cond_16
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setComposingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .line 396
    :cond_17
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 398
    return-void

    .line 401
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 402
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_19

    .line 403
    :cond_18
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setComposingRegion on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 406
    :cond_19
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 407
    return-void

    .line 410
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 416
    return-void

    .line 418
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 423
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v7, :cond_1b

    .line 424
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "finishComposingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 427
    :cond_1b
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 428
    return-void

    .line 431
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 432
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1d

    .line 433
    :cond_1c
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "sendKeyEvent on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 436
    :cond_1d
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/KeyEvent;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 438
    return-void

    .line 441
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 442
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1f

    .line 443
    :cond_1e
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 446
    :cond_1f
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 447
    return-void

    .line 450
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 451
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_21

    .line 452
    :cond_20
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 455
    :cond_21
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 456
    return-void

    .line 459
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 460
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_23

    .line 461
    :cond_22
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void

    .line 464
    :cond_23
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    .line 465
    return-void

    .line 468
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 469
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_25

    .line 470
    :cond_24
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "beginBatchEdit on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void

    .line 473
    :cond_25
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 474
    return-void

    .line 477
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 478
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_27

    .line 479
    :cond_26
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "endBatchEdit on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_27
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 483
    return-void

    .line 486
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 488
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 489
    .local v0, "action":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 490
    .local v4, "data":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 491
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_29

    .line 492
    :cond_28
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performPrivateCommand on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 497
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 493
    return-void

    .line 495
    :cond_29
    :try_start_10
    invoke-interface {v7, v0, v4}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 497
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 499
    return-void

    .line 496
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "data":Landroid/os/Bundle;
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_5
    move-exception v11

    .line 497
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 496
    throw v11

    .line 502
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 504
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_11
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 505
    .restart local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 506
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 507
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2b

    .line 508
    :cond_2a
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "requestCursorAnchorInfo on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 517
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 510
    return-void

    .line 513
    :cond_2b
    :try_start_12
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v11

    .line 512
    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 517
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 519
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_5
    return-void

    .line 514
    :catch_5
    move-exception v5

    .line 515
    .restart local v5    # "e":Landroid/os/RemoteException;
    :try_start_13
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling requestCursorAnchorInfo"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 517
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    .line 516
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_6
    move-exception v11

    .line 517
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 516
    throw v11

    .line 526
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_16
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 527
    return-void

    .line 530
    :cond_2c
    :try_start_14
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move-result-object v7

    .line 535
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v7, :cond_2d

    .line 544
    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 545
    const/4 v11, 0x0

    :try_start_15
    iput-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 546
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    monitor-exit v12

    .line 536
    return-void

    .line 544
    :catchall_7
    move-exception v11

    monitor-exit v12

    throw v11

    .line 539
    :cond_2d
    :try_start_16
    invoke-static {v7}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    move-result v9

    .line 540
    .local v9, "missingMethods":I
    and-int/lit8 v11, v9, 0x40

    if-nez v11, :cond_2e

    .line 541
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 544
    :cond_2e
    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 545
    const/4 v11, 0x0

    :try_start_17
    iput-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 546
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    monitor-exit v12

    .line 549
    return-void

    .line 544
    :catchall_8
    move-exception v11

    monitor-exit v12

    throw v11

    .line 543
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v9    # "missingMethods":I
    :catchall_9
    move-exception v11

    .line 544
    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 545
    const/4 v13, 0x0

    :try_start_18
    iput-object v13, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 546
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    monitor-exit v12

    .line 543
    throw v11

    .line 544
    :catchall_a
    move-exception v11

    monitor-exit v12

    throw v11

    .line 552
    :sswitch_17
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 553
    .local v6, "flags":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 555
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_19
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    .line 556
    .restart local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 557
    .restart local v3    # "callbackSeq":I
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 558
    .restart local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v7, :cond_2f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_30

    .line 559
    :cond_2f
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitContent on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 576
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 561
    return-void

    .line 563
    :cond_30
    :try_start_1a
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Landroid/view/inputmethod/InputContentInfo;

    .line 564
    .local v8, "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    if-eqz v8, :cond_31

    invoke-virtual {v8}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_32

    .line 565
    :cond_31
    const-string/jumbo v11, "IInputConnectionWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "commitContent with invalid inputContentInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 576
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 568
    return-void

    .line 571
    :cond_32
    :try_start_1b
    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-interface {v7, v8, v6, v11}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v10

    .line 572
    .local v10, "result":Z
    invoke-interface {v2, v10, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 576
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 578
    .end local v2    # "callback":Lcom/android/internal/view/IInputContextCallback;
    .end local v3    # "callbackSeq":I
    .end local v7    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v8    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .end local v10    # "result":Z
    :goto_6
    return-void

    .line 573
    :catch_6
    move-exception v5

    .line 574
    .restart local v5    # "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling commitContent"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 576
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_6

    .line 575
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_b
    move-exception v11

    .line 576
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 575
    throw v11

    .line 234
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x37 -> :sswitch_9
        0x38 -> :sswitch_a
        0x39 -> :sswitch_6
        0x3a -> :sswitch_7
        0x3b -> :sswitch_8
        0x3c -> :sswitch_b
        0x3f -> :sswitch_c
        0x41 -> :sswitch_d
        0x46 -> :sswitch_e
        0x50 -> :sswitch_10
        0x51 -> :sswitch_11
        0x5a -> :sswitch_12
        0x5f -> :sswitch_13
        0x78 -> :sswitch_14
        0x82 -> :sswitch_f
        0x8c -> :sswitch_15
        0x96 -> :sswitch_16
        0xa0 -> :sswitch_17
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 172
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "reqModes"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 129
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 130
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 134
    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 136
    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 125
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 126
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 117
    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 118
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 121
    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 122
    return-void
.end method

.method protected abstract isActive()Z
.end method

.method protected isFinished()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "callbackSeq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 605
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 606
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 607
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 608
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "objArg1"    # Ljava/lang/Object;
    .param p4, "objArg2"    # Ljava/lang/Object;
    .param p5, "callbackSeq"    # I
    .param p6, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 613
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 614
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 615
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 616
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 617
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 618
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "callbackSeq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 623
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 624
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 625
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 626
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 627
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "callbackSeq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 597
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 598
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 599
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 600
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 635
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 636
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 637
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 638
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method protected abstract onUserAction()V
.end method

.method public performContextMenuAction(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 159
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method public performEditorAction(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 155
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 156
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 201
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 206
    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 175
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 163
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 164
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 167
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 151
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 152
    return-void
.end method
