.class public final Landroid/provider/ContactsContract$MetadataSyncState;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$MetadataSyncStateColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSyncState"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_metadata_sync_state"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_metadata_sync_state"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9551
    sget-object v0, Landroid/provider/ContactsContract$MetadataSync;->METADATA_AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "metadata_sync_state"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9550
    sput-object v0, Landroid/provider/ContactsContract$MetadataSyncState;->CONTENT_URI:Landroid/net/Uri;

    .line 9539
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9545
    return-void
.end method
