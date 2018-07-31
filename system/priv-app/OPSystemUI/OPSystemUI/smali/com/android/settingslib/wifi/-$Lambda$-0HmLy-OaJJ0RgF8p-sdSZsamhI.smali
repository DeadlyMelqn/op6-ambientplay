.class final synthetic Lcom/android/settingslib/wifi/-$Lambda$-0HmLy-OaJJ0RgF8p-sdSZsamhI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:J

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-wide v2, p0, Lcom/android/settingslib/wifi/-$Lambda$-0HmLy-OaJJ0RgF8p-sdSZsamhI;->-$f0:J

    iget-object v0, p0, Lcom/android/settingslib/wifi/-$Lambda$-0HmLy-OaJJ0RgF8p-sdSZsamhI;->-$f1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    check-cast p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v2, v3, v0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->lambda$-com_android_settingslib_wifi_AccessPoint_18446(JLjava/util/Iterator;Lcom/android/settingslib/wifi/TimestampedScoredNetwork;)V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Object;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/wifi/-$Lambda$-0HmLy-OaJJ0RgF8p-sdSZsamhI;->-$f0:J

    iput-object p3, p0, Lcom/android/settingslib/wifi/-$Lambda$-0HmLy-OaJJ0RgF8p-sdSZsamhI;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/-$Lambda$-0HmLy-OaJJ0RgF8p-sdSZsamhI;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
