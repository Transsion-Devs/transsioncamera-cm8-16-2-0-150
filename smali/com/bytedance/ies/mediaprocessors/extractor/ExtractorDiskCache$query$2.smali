.class final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->query(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;
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
.field final synthetic $algKey:Ljava/lang/String;

.field final synthetic $assetId:Ljava/lang/String;

.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->$assetId:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->$algKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 15

    .line 167
    const-string v4, "RESULT"

    const-string v5, "CREATE_TIME"

    const-string v0, "ID"

    const-string v1, "ASSET_ID"

    const-string v2, "ALG_KEY"

    const-string v3, "ALG_TYPE"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v8

    .line 168
    const-string v9, "ASSET_ID = ? AND ALG_KEY = ?"

    .line 169
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->$assetId:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->$algKey:Ljava/lang/String;

    if-eqz v2, :cond_1f

    move-object v1, v2

    :cond_1f
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    .line 170
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$getDbHelper$p(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_7a

    .line 171
    :try_start_2f
    const-string v7, "FEATURE_CACHE"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_5f

    .line 173
    :try_start_38
    const-string v0, "it"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->getConfig()Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->getCursorMaxSize()I

    move-result v0

    invoke-static {v1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/util/DbUtilKt;->moveToNextSafely(Landroid/database/Cursor;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_65

    .line 174
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$query$2;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->parseCursorToResult(Landroid/database/Cursor;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;
    invoke-static {p0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$parseCursorToResult(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Landroid/database/Cursor;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_62

    .line 175
    :try_start_58
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5f

    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_5f
    move-exception v0

    move-object p0, v0

    goto :goto_74

    :catchall_62
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    .line 177
    :cond_65
    :try_start_65
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_62

    .line 172
    :try_start_67
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_5f

    .line 170
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 172
    :goto_6e
    :try_start_6e
    throw p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v0

    :try_start_70
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_5f

    .line 170
    :goto_74
    :try_start_74
    throw p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v0

    invoke-static {v6, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_7a
    return-void
.end method
