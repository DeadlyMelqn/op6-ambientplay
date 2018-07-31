.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/QuickContactBadge;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 348
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 349
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 350
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 354
    const/4 v8, 0x0

    .line 355
    .local v8, "lookupUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 356
    .local v4, "createUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 357
    .local v10, "trigger":Z
    if-eqz p2, :cond_3

    move-object/from16 v5, p2

    check-cast v5, Landroid/os/Bundle;

    .line 359
    .local v5, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 393
    .end local v4    # "createUri":Landroid/net/Uri;
    .end local v8    # "lookupUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 394
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v11, v8}, Landroid/widget/QuickContactBadge;->-set0(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 399
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v11}, Landroid/widget/QuickContactBadge;->-wrap0(Landroid/widget/QuickContactBadge;)V

    .line 401
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v11}, Landroid/widget/QuickContactBadge;->-get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 403
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v13}, Landroid/widget/QuickContactBadge;->-get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v13

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v14, v14, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v15}, Landroid/widget/QuickContactBadge;->-get1(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v15

    .line 403
    invoke-static {v11, v12, v13, v14, v15}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_2
    :goto_2
    return-void

    .line 357
    .end local v5    # "extras":Landroid/os/Bundle;
    .restart local v4    # "createUri":Landroid/net/Uri;
    .restart local v8    # "lookupUri":Landroid/net/Uri;
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .restart local v5    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 361
    :pswitch_0
    const/4 v10, 0x1

    .line 362
    :try_start_0
    const-string/jumbo v11, "uri_content"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 363
    .local v9, "ssp":Ljava/lang/String;
    if-nez v9, :cond_4

    .line 364
    const-string/jumbo v12, "QuickContactBadge"

    const-string/jumbo v13, "ssp is null"

    const-string/jumbo v11, "debug"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/lang/Throwable;

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :cond_4
    const-string/jumbo v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v9, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 369
    .end local v4    # "createUri":Landroid/net/Uri;
    .end local v9    # "ssp":Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 370
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 371
    .local v2, "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "lookupUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 378
    .end local v2    # "contactId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .restart local v4    # "createUri":Landroid/net/Uri;
    .local v8, "lookupUri":Landroid/net/Uri;
    :pswitch_2
    const/4 v10, 0x1

    .line 379
    const-string/jumbo v11, "mailto"

    .line 380
    const-string/jumbo v12, "uri_content"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 379
    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 384
    .end local v4    # "createUri":Landroid/net/Uri;
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 385
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 386
    .restart local v2    # "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 387
    .restart local v7    # "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .local v8, "lookupUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 392
    .end local v2    # "contactId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .local v8, "lookupUri":Landroid/net/Uri;
    :catchall_0
    move-exception v11

    .line 393
    if-eqz p3, :cond_5

    .line 394
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_5
    throw v11

    .line 405
    .end local v8    # "lookupUri":Landroid/net/Uri;
    :cond_6
    if-eqz v4, :cond_2

    .line 407
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v11, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v6, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 408
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    .line 409
    const-string/jumbo v11, "uri_content"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v6, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 412
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
