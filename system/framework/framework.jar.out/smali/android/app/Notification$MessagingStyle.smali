.class public Landroid/app/Notification$MessagingStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field mConversationTitle:Ljava/lang/CharSequence;

.field mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mUserDisplayName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6203
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 6200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 6201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 6204
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "userDisplayName"    # Ljava/lang/CharSequence;

    .prologue
    .line 6212
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 6200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 6201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 6213
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    .line 6214
    return-void
.end method

.method private findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 4

    .prologue
    .line 6410
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6411
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 6413
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6414
    return-object v1

    .line 6410
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6417
    .end local v1    # "m":Landroid/app/Notification$MessagingStyle$Message;
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6419
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    return-object v2

    .line 6421
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6336
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    .line 6337
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    if-nez v1, :cond_2

    const/4 v3, 0x0

    .line 6338
    :goto_0
    if-nez v1, :cond_3

    const/4 v2, 0x0

    .line 6341
    :goto_1
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 6342
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 6343
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 6344
    .local v0, "bidi":Landroid/text/BidiFormatter;
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 6346
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 6345
    const v7, 0x10403e4

    .line 6344
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6354
    .end local v0    # "bidi":Landroid/text/BidiFormatter;
    .local v4, "title":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v4, :cond_0

    .line 6355
    const-string/jumbo v5, "android.title"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6357
    :cond_0
    if-eqz v3, :cond_1

    .line 6358
    const-string/jumbo v5, "android.text"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6360
    :cond_1
    return-void

    .line 6337
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 6339
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    .local v2, "sender":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v2    # "sender":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "sender":Ljava/lang/CharSequence;
    goto :goto_1

    .line 6348
    .end local v2    # "sender":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 6351
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_6
    move-object v4, v2

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private static makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .locals 6
    .param p0, "color"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6564
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 6565
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move v3, v2

    move-object v5, v1

    .line 6564
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v7, 0x0

    .line 6519
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 6520
    .local v0, "bidi":Landroid/text/BidiFormatter;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6521
    .local v3, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {p2}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)Z

    move-result v1

    .line 6524
    .local v1, "colorize":Z
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6525
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    const-string/jumbo v2, ""

    .line 6526
    .local v2, "replyName":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 6527
    if-eqz v1, :cond_1

    .line 6528
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v5

    .line 6527
    :goto_1
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v5

    .line 6526
    invoke-virtual {v3, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 6538
    .end local v2    # "replyName":Ljava/lang/CharSequence;
    :goto_2
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v4, ""

    .line 6539
    .local v4, "text":Ljava/lang/CharSequence;
    :goto_3
    const-string/jumbo v5, "  "

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6540
    return-object v3

    .line 6525
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    .restart local v2    # "replyName":Ljava/lang/CharSequence;
    goto :goto_0

    .line 6529
    :cond_1
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v5

    goto :goto_1

    .line 6532
    .end local v2    # "replyName":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 6533
    if-eqz v1, :cond_3

    .line 6534
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v5

    .line 6533
    :goto_4
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v5

    .line 6532
    invoke-virtual {v3, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 6535
    :cond_3
    const/high16 v5, -0x1000000

    goto :goto_4

    .line 6538
    :cond_4
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "text":Ljava/lang/CharSequence;
    goto :goto_3
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6318
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 6319
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 6320
    const-string/jumbo v0, "android.selfDisplayName"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6322
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 6323
    const-string/jumbo v0, "android.conversationTitle"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6325
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.messages"

    .line 6326
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    .line 6325
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 6328
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.messages.historic"

    .line 6329
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v1

    .line 6328
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 6332
    :cond_3
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 6333
    return-void
.end method

.method public addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 2
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .prologue
    .line 6292
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6293
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 6294
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6296
    :cond_0
    return-object p0
.end method

.method public addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 2
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .prologue
    .line 6271
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6272
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 6273
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6275
    :cond_0
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .prologue
    .line 6258
    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 6239
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHistoricMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6310
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6303
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 6220
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 18

    .prologue
    .line 6429
    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-get0(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 6430
    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-get0(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 6432
    .local v13, "title":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/lit8 v7, v14, 0x1

    .line 6434
    .local v7, "hasTitle":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 6439
    if-eqz v7, :cond_1

    .line 6440
    move-object v1, v13

    .line 6441
    .local v1, "bigTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Notification$MessagingStyle$Message;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 6446
    .local v12, "text":Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 6447
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v15}, Landroid/app/Notification$Builder;->-wrap11(Landroid/app/Notification$Builder;)I

    move-result v15

    .line 6448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    .line 6446
    invoke-static/range {v14 .. v16}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6449
    .local v2, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v14, v2, v12}, Landroid/app/Notification$BigTextStyle;->applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 6450
    return-object v2

    .line 6431
    .end local v1    # "bigTitle":Ljava/lang/CharSequence;
    .end local v2    # "contentView":Landroid/widget/RemoteViews;
    .end local v7    # "hasTitle":Z
    .end local v12    # "text":Ljava/lang/CharSequence;
    .end local v13    # "title":Ljava/lang/CharSequence;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .restart local v13    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 6443
    .restart local v7    # "hasTitle":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {v14}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6444
    .restart local v1    # "bigTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {v14}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v12

    .restart local v12    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 6453
    .end local v1    # "bigTitle":Ljava/lang/CharSequence;
    .end local v12    # "text":Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 6454
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v15}, Landroid/app/Notification$Builder;->-wrap13(Landroid/app/Notification$Builder;)I

    move-result v15

    .line 6455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v16

    .line 6453
    invoke-static/range {v14 .. v16}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6457
    .restart local v2    # "contentView":Landroid/widget/RemoteViews;
    const/4 v14, 0x7

    new-array v11, v14, [I

    .local v11, "rowIds":[I
    fill-array-data v11, :array_0

    .line 6461
    const/4 v14, 0x0

    array-length v15, v11

    :goto_2
    if-ge v14, v15, :cond_3

    aget v10, v11, v14

    .line 6462
    .local v10, "rowId":I
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v2, v10, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6461
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 6465
    .end local v10    # "rowId":I
    :cond_3
    const/4 v8, 0x0

    .line 6467
    .local v8, "i":I
    if-eqz v7, :cond_5

    const v14, 0x1050121

    .line 6466
    :goto_3
    const v15, 0x10202d2

    invoke-virtual {v2, v15, v14}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 6468
    const-string/jumbo v15, "setNumIndentLines"

    .line 6469
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v14}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v14

    invoke-static {v14}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v14

    if-nez v14, :cond_6

    const/4 v14, 0x0

    .line 6468
    :goto_4
    const v16, 0x102032b

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6471
    const/4 v3, -0x1

    .line 6472
    .local v3, "contractedChildId":I
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v4

    .line 6473
    .local v4, "contractedMessage":Landroid/app/Notification$MessagingStyle$Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 6474
    array-length v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    sub-int v15, v15, v16

    .line 6473
    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 6475
    .local v5, "firstHistoricMessage":I
    :goto_5
    add-int v14, v5, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_8

    array-length v14, v11

    if-ge v8, v14, :cond_8

    .line 6476
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    add-int v15, v5, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$MessagingStyle$Message;

    .line 6477
    .local v9, "m":Landroid/app/Notification$MessagingStyle$Message;
    aget v10, v11, v8

    .line 6479
    .restart local v10    # "rowId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6481
    if-ne v4, v9, :cond_4

    .line 6482
    move v3, v10

    .line 6485
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 6467
    .end local v3    # "contractedChildId":I
    .end local v4    # "contractedMessage":Landroid/app/Notification$MessagingStyle$Message;
    .end local v5    # "firstHistoricMessage":I
    .end local v9    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v10    # "rowId":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 6469
    :cond_6
    if-eqz v7, :cond_7

    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    const/4 v14, 0x2

    goto :goto_4

    .line 6488
    .restart local v3    # "contractedChildId":I
    .restart local v4    # "contractedMessage":Landroid/app/Notification$MessagingStyle$Message;
    .restart local v5    # "firstHistoricMessage":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    array-length v15, v11

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 6489
    .local v6, "firstMessage":I
    :goto_6
    add-int v14, v6, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_a

    array-length v14, v11

    if-ge v8, v14, :cond_a

    .line 6490
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    add-int v15, v6, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$MessagingStyle$Message;

    .line 6491
    .restart local v9    # "m":Landroid/app/Notification$MessagingStyle$Message;
    aget v10, v11, v8

    .line 6493
    .restart local v10    # "rowId":I
    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6494
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 6495
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 6494
    invoke-static {v14, v15}, Landroid/app/Notification$Builder;->-wrap17(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6496
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v14, v2, v10}, Landroid/app/Notification$Builder;->-wrap18(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V

    .line 6498
    if-ne v4, v9, :cond_9

    .line 6499
    move v3, v10

    .line 6502
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 6506
    .end local v9    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v10    # "rowId":I
    :cond_a
    :goto_7
    array-length v14, v11

    if-ge v8, v14, :cond_b

    .line 6507
    aget v10, v11, v8

    .line 6508
    .restart local v10    # "rowId":I
    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6509
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 6513
    .end local v10    # "rowId":I
    :cond_b
    const-string/jumbo v14, "setContractedChildId"

    const v15, 0x102032b

    invoke-virtual {v2, v15, v14, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6515
    return-object v2

    .line 6457
    nop

    :array_0
    .array-data 4
        0x1020296
        0x1020297
        0x1020298
        0x1020299
        0x102029a
        0x102029b
        0x102029c
    .end array-data
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "increasedHeight"    # Z

    .prologue
    const/4 v6, 0x0

    .line 6388
    if-nez p1, :cond_4

    .line 6389
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 6390
    .local v0, "m":Landroid/app/Notification$MessagingStyle$Message;
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 6391
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 6393
    :goto_0
    if-nez v0, :cond_2

    .line 6394
    const/4 v2, 0x0

    .line 6397
    :goto_1
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;)I

    move-result v5

    .line 6398
    iget-object v6, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v6, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v6}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 6397
    invoke-static {v4, v5, v6}, Landroid/app/Notification$Builder;->-wrap3(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v4

    return-object v4

    .line 6392
    :cond_0
    if-nez v0, :cond_1

    const/4 v3, 0x0

    .local v3, "title":Ljava/lang/CharSequence;
    goto :goto_0

    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 6395
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v0, v4}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "text":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 6400
    .end local v0    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_4
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->-set1(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6401
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6402
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 6403
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6404
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v6}, Landroid/app/Notification$Builder;->-set1(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 6405
    return-object v1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "increasedHeight"    # Z

    .prologue
    .line 6548
    if-eqz p1, :cond_0

    .line 6549
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    return-object v3

    .line 6551
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 6552
    .local v0, "m":Landroid/app/Notification$MessagingStyle$Message;
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 6553
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 6555
    :goto_0
    if-nez v0, :cond_3

    .line 6556
    const/4 v1, 0x0

    .line 6559
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-wrap9(Landroid/app/Notification$Builder;)I

    move-result v4

    .line 6560
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, v5, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v5}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 6559
    invoke-static {v3, v4, v5}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v3

    return-object v3

    .line 6554
    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x0

    .local v2, "title":Ljava/lang/CharSequence;
    goto :goto_0

    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 6557
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v0, v3}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6367
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 6369
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6370
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6371
    const-string/jumbo v2, "android.selfDisplayName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    .line 6372
    const-string/jumbo v2, "android.conversationTitle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 6373
    const-string/jumbo v2, "android.messages"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 6374
    .local v1, "messages":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v2, v1, [Landroid/os/Parcelable;

    if-eqz v2, :cond_0

    .line 6375
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 6377
    :cond_0
    const-string/jumbo v2, "android.messages.historic"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 6378
    .local v0, "histMessages":[Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    instance-of v2, v0, [Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 6379
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 6381
    :cond_1
    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 0
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 6230
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 6231
    return-object p0
.end method
