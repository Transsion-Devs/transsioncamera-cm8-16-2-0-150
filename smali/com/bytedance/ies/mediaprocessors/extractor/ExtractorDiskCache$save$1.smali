.class final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->save(Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $results:Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

.field final synthetic this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;->$results:Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 9

    .line 191
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;->$results:Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    if-eqz v0, :cond_a6

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    .line 192
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 193
    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getAssetId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ASSET_ID"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "ALG_KEY"

    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getAlgorithmKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getAlgorithmType()Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->swigValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ALG_TYPE"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getResult()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getResultLength()J

    move-result-wide v5

    new-instance v7, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$values$1$1;

    invoke-direct {v7, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$values$1$1;-><init>(Landroid/content/ContentValues;)V

    invoke-static {v3, v4, v5, v6, v7}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/NativeStringUtils;->getJavaDataFromByte(JJLcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "CREATE_TIME"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getAlgorithmStringType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_65

    goto :goto_67

    :cond_65
    const-string v3, ""

    :goto_67
    const-string v4, "ALG_STR_TYPE"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getAlgorithmKey()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->hasSQLHistory(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$hasSQLHistory(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 209
    new-instance v4, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;

    invoke-direct {v4, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Landroid/content/ContentValues;)V

    .line 214
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {v1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$getDbHelper$p(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v5, 0x0

    if-eqz v3, :cond_94

    .line 216
    :try_start_8e
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99

    :catchall_92
    move-exception p0

    goto :goto_a0

    .line 218
    :cond_94
    const-string v3, "FEATURE_CACHE"

    invoke-virtual {v1, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 220
    :goto_99
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9b
    .catchall {:try_start_8e .. :try_end_9b} :catchall_92

    .line 214
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :goto_a0
    :try_start_a0
    throw p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v0

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_a6
    return-void
.end method
