.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_PROVIDERS_CHANGED:I = 0x3

.field public static final MSG_NOTIFY_PROVIDER_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_UPDATE_APP_WIDGET:I = 0x1

.field public static final MSG_NOTIFY_VIEW_DATA_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3677
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3678
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3679
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3683
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 3730
    :goto_0
    return-void

    .line 3685
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 3686
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3687
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3688
    .local v5, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Landroid/widget/RemoteViews;

    .line 3689
    .local v7, "views":Landroid/widget/RemoteViews;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 3690
    .local v8, "requestId":J
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3691
    .local v6, "appWidgetId":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static/range {v3 .. v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap9(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    goto :goto_0

    .line 3697
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v6    # "appWidgetId":I
    .end local v7    # "views":Landroid/widget/RemoteViews;
    .end local v8    # "requestId":J
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 3698
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3699
    .restart local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3700
    .restart local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v15, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3701
    .local v15, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 3702
    .restart local v8    # "requestId":J
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3703
    .restart local v6    # "appWidgetId":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3705
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object v12, v4

    move-object v13, v5

    move v14, v6

    move-wide/from16 v16, v8

    invoke-static/range {v11 .. v17}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap7(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    goto :goto_0

    .line 3709
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v6    # "appWidgetId":I
    .end local v8    # "requestId":J
    .end local v15    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 3710
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3711
    .restart local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3712
    .restart local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap8(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    goto :goto_0

    .line 3718
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 3719
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3720
    .restart local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3721
    .restart local v5    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 3722
    .restart local v8    # "requestId":J
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3723
    .restart local v6    # "appWidgetId":I
    iget v0, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v21, v0

    .line 3724
    .local v21, "viewId":I
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v22, v8

    invoke-static/range {v17 .. v23}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap6(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    goto/16 :goto_0

    .line 3683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
