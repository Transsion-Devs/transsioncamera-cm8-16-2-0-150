.class final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->query(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
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
.field final synthetic $featureResultList:Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

.field final synthetic $input:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;

.field final synthetic this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->$input:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;

    iput-object p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->$featureResultList:Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 15

    .line 142
    const-string v4, "RESULT"

    const-string v5, "CREATE_TIME"

    const-string v0, "ID"

    const-string v1, "ASSET_ID"

    const-string v2, "ALG_KEY"

    const-string v3, "ALG_TYPE"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v8

    .line 144
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->$input:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;

    const-string v2, "it"

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->getResList()Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 1819
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;

    .line 146
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->add(Ljava/lang/String;)Z

    goto :goto_25

    .line 148
    :cond_3c
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    const-string v3, "ASSET_ID IN (%s)"

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->appendSql(Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;
    invoke-static {v1, v3, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$appendSql(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND ALG_KEY=?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 150
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->$input:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->algorithmKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    goto :goto_62

    :cond_60
    const-string v0, ""

    :goto_62
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    .line 151
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$getDbHelper$p(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_b6

    .line 152
    :try_start_72
    const-string v7, "FEATURE_CACHE"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_a7

    .line 154
    :goto_7b
    :try_start_7b
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->getConfig()Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->getCursorMaxSize()I

    move-result v0

    invoke-static {v1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/util/DbUtilKt;->moveToNextSafely(Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 155
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->$featureResultList:Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->parseCursorToResult(Landroid/database/Cursor;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;
    invoke-static {v3, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$parseCursorToResult(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Landroid/database/Cursor;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;->add(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;)Z

    goto :goto_7b

    :catchall_9a
    move-exception v0

    move-object p0, v0

    goto :goto_aa

    .line 157
    :cond_9d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9f
    .catchall {:try_start_7b .. :try_end_9f} :catchall_9a

    const/4 p0, 0x0

    .line 153
    :try_start_a0
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a7

    .line 151
    invoke-static {v6, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_a7
    move-exception v0

    move-object p0, v0

    goto :goto_b0

    .line 153
    :goto_aa
    :try_start_aa
    throw p0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception v0

    :try_start_ac
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_a7

    .line 151
    :goto_b0
    :try_start_b0
    throw p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception v0

    invoke-static {v6, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_b6
    return-void
.end method
