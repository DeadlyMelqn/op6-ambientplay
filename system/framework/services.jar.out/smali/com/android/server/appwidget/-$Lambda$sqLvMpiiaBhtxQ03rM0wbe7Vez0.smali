.class final synthetic Lcom/android/server/appwidget/-$Lambda$sqLvMpiiaBhtxQ03rM0wbe7Vez0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/appwidget/-$Lambda$sqLvMpiiaBhtxQ03rM0wbe7Vez0;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/appwidget/AppWidgetService;

    iget v1, p0, Lcom/android/server/appwidget/-$Lambda$sqLvMpiiaBhtxQ03rM0wbe7Vez0;->-$f0:I

    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetService;->lambda$-com_android_server_appwidget_AppWidgetService_1563(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/appwidget/-$Lambda$sqLvMpiiaBhtxQ03rM0wbe7Vez0;->-$f0:I

    iput-object p2, p0, Lcom/android/server/appwidget/-$Lambda$sqLvMpiiaBhtxQ03rM0wbe7Vez0;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/appwidget/-$Lambda$sqLvMpiiaBhtxQ03rM0wbe7Vez0;->$m$0()V

    return-void
.end method
