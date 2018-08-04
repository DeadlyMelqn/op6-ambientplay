.class Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmniJawsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/providers/OmniJawsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/providers/OmniJawsClient;


# direct methods
.method private constructor <init>(Lcom/android/systemui/providers/OmniJawsClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/providers/OmniJawsClient;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;->this$0:Lcom/android/systemui/providers/OmniJawsClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/providers/OmniJawsClient;Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/providers/OmniJawsClient;
    .param p2, "-this1"    # Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;-><init>(Lcom/android/systemui/providers/OmniJawsClient;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;->this$0:Lcom/android/systemui/providers/OmniJawsClient;

    invoke-static {v4}, Lcom/android/systemui/providers/OmniJawsClient;->-get0(Lcom/android/systemui/providers/OmniJawsClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;

    .line 135
    .local v2, "observer":Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;
    const-string/jumbo v4, "org.omnirom.omnijaws.WEATHER_UPDATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-interface {v2}, Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;->weatherUpdated()V

    .line 138
    :cond_1
    const-string/jumbo v4, "org.omnirom.omnijaws.WEATHER_ERROR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const-string/jumbo v4, "error"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 140
    .local v1, "errorReason":I
    invoke-interface {v2, v1}, Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;->weatherError(I)V

    goto :goto_0

    .line 143
    .end local v1    # "errorReason":I
    .end local v2    # "observer":Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;
    :cond_2
    return-void
.end method
