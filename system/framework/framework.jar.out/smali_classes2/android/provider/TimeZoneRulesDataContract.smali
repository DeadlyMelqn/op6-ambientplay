.class public final Landroid/provider/TimeZoneRulesDataContract;
.super Ljava/lang/Object;
.source "TimeZoneRulesDataContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/TimeZoneRulesDataContract$Operation;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.timezone"

.field private static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/TimeZoneRulesDataContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "content://com.android.timezone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/TimeZoneRulesDataContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
