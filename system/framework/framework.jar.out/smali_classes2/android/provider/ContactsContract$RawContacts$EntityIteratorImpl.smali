.class Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3067
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 3068
    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3069
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3070
    const-string/jumbo v1, "data3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3071
    const-string/jumbo v1, "data4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 3072
    const-string/jumbo v1, "data5"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3073
    const-string/jumbo v1, "data6"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3074
    const-string/jumbo v1, "data7"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 3075
    const-string/jumbo v1, "data8"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 3076
    const-string/jumbo v1, "data9"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 3077
    const-string/jumbo v1, "data10"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 3078
    const-string/jumbo v1, "data11"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 3079
    const-string/jumbo v1, "data12"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 3080
    const-string/jumbo v1, "data13"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 3081
    const-string/jumbo v1, "data14"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 3082
    const-string/jumbo v1, "data15"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 3083
    const-string/jumbo v1, "data_sync1"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 3084
    const-string/jumbo v1, "data_sync2"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 3085
    const-string/jumbo v1, "data_sync3"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 3086
    const-string/jumbo v1, "data_sync4"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 3067
    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    .line 3066
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 3089
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 3090
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3095
    const-string/jumbo v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3096
    .local v1, "columnRawContactId":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3099
    .local v6, "rawContactId":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3100
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "account_name"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3101
    const-string/jumbo v5, "account_type"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3102
    const-string/jumbo v5, "data_set"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3103
    const-string/jumbo v5, "_id"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3104
    const-string/jumbo v5, "dirty"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3105
    const-string/jumbo v5, "version"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3106
    const-string/jumbo v5, "sourceid"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3107
    const-string/jumbo v5, "sync1"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3108
    const-string/jumbo v5, "sync2"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3109
    const-string/jumbo v5, "sync3"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3110
    const-string/jumbo v5, "sync4"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3111
    const-string/jumbo v5, "deleted"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3112
    const-string/jumbo v5, "contact_id"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3113
    const-string/jumbo v5, "starred"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3114
    new-instance v2, Landroid/content/Entity;

    invoke-direct {v2, v3}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 3118
    .local v2, "contact":Landroid/content/Entity;
    :goto_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 3156
    :cond_0
    return-object v2

    .line 3122
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "cv":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3123
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "_id"

    const-string/jumbo v8, "data_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3125
    const-string/jumbo v5, "res_package"

    .line 3124
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3126
    const-string/jumbo v5, "mimetype"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3127
    const-string/jumbo v5, "is_primary"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3129
    const-string/jumbo v5, "is_super_primary"

    .line 3128
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3130
    const-string/jumbo v5, "data_version"

    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3132
    const-string/jumbo v5, "group_sourceid"

    .line 3131
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3134
    const-string/jumbo v5, "data_version"

    .line 3133
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3135
    sget-object v8, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v9, v8

    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v4, v8, v5

    .line 3136
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 3137
    .local v0, "columnIndex":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 3150
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Invalid or unhandled data type"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3144
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    :goto_2
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3147
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2

    .line 3153
    .end local v0    # "columnIndex":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v3}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3154
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    .line 3137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
