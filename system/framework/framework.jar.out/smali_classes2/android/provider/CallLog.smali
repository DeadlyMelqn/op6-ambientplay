.class public Landroid/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "call_log"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "CallLog"

.field public static final SHADOW_AUTHORITY:Ljava/lang/String; = "call_log_shadow"

.field private static final VERBOSE_LOG:Z


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    invoke-static {p0, p1}, Landroid/provider/CallLog;->getSubIdByPhoneAccountHandle(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "content://call_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    sput-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSubIdByPhoneAccountHandle(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 998
    invoke-static {p0, p1}, Landroid/provider/CallLog;->getSubscriptionInfoByPhoneAccountHandle(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 999
    .local v0, "si":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0
.end method

.method private static getSubscriptionInfoByPhoneAccountHandle(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v2, 0x0

    .line 1003
    if-nez p1, :cond_0

    .line 1004
    return-object v2

    .line 1007
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "iccid":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 1009
    .local v1, "sm":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_1

    .line 1010
    return-object v2

    .line 1013
    :cond_1
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    return-object v2
.end method
