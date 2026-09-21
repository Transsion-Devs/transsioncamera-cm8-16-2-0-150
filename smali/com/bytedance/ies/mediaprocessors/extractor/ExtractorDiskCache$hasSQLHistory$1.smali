.class final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->hasSQLHistory(Ljava/lang/String;Ljava/lang/String;)Z
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

.field final synthetic $result:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->$assetId:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->$algKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 11

    .line 228
    const-string v0, "ID"

    const-string v1, "ASSET_ID"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 229
    const-string v5, "ASSET_ID = ? AND ALG_KEY = ?"

    .line 230
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->$assetId:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->$algKey:Ljava/lang/String;

    if-eqz v2, :cond_17

    move-object v1, v2

    :cond_17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    .line 231
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$getDbHelper$p(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 232
    :try_start_27
    const-string v3, "FEATURE_CACHE"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_52

    .line 234
    :try_start_30
    const-string v0, "it"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->getConfig()Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;->getCursorMaxSize()I

    move-result v0

    invoke-static {v1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/util/DbUtilKt;->moveToNextSafely(Landroid/database/Cursor;I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_58

    .line 235
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$hasSQLHistory$1;->$result:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_55

    .line 236
    :try_start_4b
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_52

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_52
    move-exception v0

    move-object p0, v0

    goto :goto_67

    :catchall_55
    move-exception v0

    move-object p0, v0

    goto :goto_61

    .line 238
    :cond_58
    :try_start_58
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_55

    .line 233
    :try_start_5a
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_52

    .line 231
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 233
    :goto_61
    :try_start_61
    throw p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v0

    :try_start_63
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_52

    .line 231
    :goto_67
    :try_start_67
    throw p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_6d
    return-void
.end method
