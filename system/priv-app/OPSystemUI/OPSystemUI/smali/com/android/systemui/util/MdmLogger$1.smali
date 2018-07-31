.class final Lcom/android/systemui/util/MdmLogger$1;
.super Ljava/lang/Object;
.source "MdmLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/MdmLogger$1;->val$label:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/util/MdmLogger$1;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/util/MdmLogger$1;->val$tag:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/util/MdmLogger$1;->val$label:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/util/MdmLogger$1;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->-get1()Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/MdmLogger$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->-get0()Lcom/android/systemui/util/GoogleAnalyticsHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 80
    invoke-static {}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->getInstance()Lcom/android/systemui/util/GoogleAnalyticsHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/MdmLogger;->-set0(Lcom/android/systemui/util/GoogleAnalyticsHelper;)Lcom/android/systemui/util/GoogleAnalyticsHelper;

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->-get0()Lcom/android/systemui/util/GoogleAnalyticsHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->-get0()Lcom/android/systemui/util/GoogleAnalyticsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/MdmLogger$1;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/util/MdmLogger$1;->val$label:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/util/MdmLogger$1;->val$value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method
