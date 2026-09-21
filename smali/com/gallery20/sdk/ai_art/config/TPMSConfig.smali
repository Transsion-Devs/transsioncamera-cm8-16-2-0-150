.class public Lcom/gallery20/sdk/ai_art/config/TPMSConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final json:Lorg/json/JSONObject;

.field private final key:Ljava/lang/String;

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 10

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->key:Ljava/lang/String;

    const/4 v1, 0x0

    .line 17
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 18
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.hoffnung.cloudControl.RemoteConfigProvider/config/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "parse(this)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 18
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_44

    if-eqz v2, :cond_42

    .line 19
    :try_start_39
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_56

    if-nez v0, :cond_47

    :try_start_3f
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_44

    :cond_42
    move-object p1, v1

    goto :goto_63

    :catchall_44
    move-exception v0

    move-object p1, v0

    goto :goto_68

    .line 20
    :cond_47
    :try_start_47
    # invokes: Lcom/gallery20/sdk/ai_art/config/TPMSConfigKt;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/gallery20/sdk/ai_art/config/TPMSConfigKt;->access$getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_56

    if-nez v0, :cond_54

    goto :goto_59

    :cond_54
    move-object p1, v1

    goto :goto_59

    :catchall_56
    move-exception v0

    move-object p1, v0

    goto :goto_5d

    .line 18
    :goto_59
    :try_start_59
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_44

    goto :goto_63

    :goto_5d
    :try_start_5d
    throw p1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v0

    :try_start_5f
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :goto_63
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_44

    goto :goto_72

    :goto_68
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    :goto_72
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "TPMSConfig"

    if-eqz v0, :cond_8e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query TPMS config fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8e
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    goto :goto_96

    :cond_95
    move-object v1, p1

    :goto_96
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->string:Ljava/lang/String;

    if-eqz v1, :cond_a2

    .line 25
    invoke-static {v1}, Lcom/gallery20/base/CommonExtKt;->toJSONObjectSafe(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_a7

    :cond_a2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_a7
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->json:Lorg/json/JSONObject;

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getJson()Lorg/json/JSONObject;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->json:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getString()Ljava/lang/String;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->string:Ljava/lang/String;

    return-object p0
.end method
