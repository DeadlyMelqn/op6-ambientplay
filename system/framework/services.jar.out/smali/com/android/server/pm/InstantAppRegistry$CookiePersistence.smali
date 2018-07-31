.class final Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;
.super Landroid/os/Handler;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CookiePersistence"
.end annotation


# static fields
.field private static final PERSIST_COOKIE_DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private final mPendingPersistCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            "Lcom/android/internal/os/SomeArgs;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/InstantAppRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/InstantAppRegistry;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    .line 1166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1162
    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1167
    return-void
.end method

.method private addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "cookie"    # [B
    .param p4, "cookieFile"    # Ljava/io/File;

    .prologue
    .line 1215
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1216
    .local v1, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/PackageParser$Package;Lcom/android/internal/os/SomeArgs;>;"
    if-nez v1, :cond_0

    .line 1217
    new-instance v1, Landroid/util/ArrayMap;

    .end local v1    # "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/PackageParser$Package;Lcom/android/internal/os/SomeArgs;>;"
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1218
    .restart local v1    # "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/PackageParser$Package;Lcom/android/internal/os/SomeArgs;>;"
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1220
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1221
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1222
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1223
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    return-void
.end method

.method private removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 1229
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1230
    .local v0, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/PackageParser$Package;Lcom/android/internal/os/SomeArgs;>;"
    const/4 v1, 0x0

    .line 1231
    .local v1, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "state":Lcom/android/internal/os/SomeArgs;
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1233
    .local v1, "state":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1234
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1237
    .end local v1    # "state":Lcom/android/internal/os/SomeArgs;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 1204
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removeMessages(ILjava/lang/Object;)V

    .line 1205
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1206
    .local v0, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1209
    :cond_0
    return-void
.end method

.method public getPendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)[B
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1192
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1193
    .local v0, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/pm/PackageParser$Package;Lcom/android/internal/os/SomeArgs;>;"
    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1195
    .local v1, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v1, :cond_0

    .line 1196
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2

    .line 1199
    .end local v1    # "state":Lcom/android/internal/os/SomeArgs;
    :cond_0
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1242
    iget v4, p1, Landroid/os/Message;->what:I

    .line 1243
    .local v4, "userId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1244
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 1245
    .local v3, "state":Lcom/android/internal/os/SomeArgs;
    if-nez v3, :cond_0

    .line 1246
    return-void

    .line 1248
    :cond_0
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, [B

    .line 1249
    .local v0, "cookie":[B
    iget-object v1, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    .line 1250
    .local v1, "cookieFile":Ljava/io/File;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1251
    iget-object v5, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v5, v0, v6, v1, v4}, Lcom/android/server/pm/InstantAppRegistry;->-wrap2(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V

    .line 1252
    return-void
.end method

.method public schedulePersistLPw(ILandroid/content/pm/PackageParser$Package;[B)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "cookie"    # [B

    .prologue
    .line 1175
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1176
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v3

    .line 1175
    invoke-static {v2, v3, p1}, Lcom/android/server/pm/InstantAppRegistry;->-wrap0(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1177
    .local v0, "newCookieFile":Ljava/io/File;
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1178
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/server/pm/InstantAppRegistry;->-wrap1(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 1179
    .local v1, "oldCookieFile":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1180
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1183
    .end local v1    # "oldCookieFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 1184
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V

    .line 1185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1186
    const-wide/16 v4, 0x3e8

    .line 1185
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1187
    return-void
.end method
