.class final synthetic Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    iget v2, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f0:I

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->lambda$-com_android_server_pm_ShortcutService_103556(Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v2, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f0:I

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v2, v0, v1, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$-com_android_server_pm_ShortcutUser_8319(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method

.method public synthetic constructor <init>(BILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->$id:B

    iput p2, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f0:I

    iput-object p3, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$akZNYSpRQU-aMo9i0sDNiuGZqwY$1;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
