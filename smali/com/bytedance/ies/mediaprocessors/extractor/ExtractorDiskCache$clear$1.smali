.class final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->clear(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
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
.field final synthetic $res_id_list:Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

.field final synthetic this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;->$res_id_list:Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    .line 247
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;->$res_id_list:Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    if-eqz v1, :cond_1d

    .line 1819
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    invoke-virtual {v0, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;->add(Ljava/lang/String;)Z

    goto :goto_d

    .line 251
    :cond_1d
    iget-object v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    const-string v2, "ASSET_ID IN (%s)"

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->appendSql(Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$appendSql(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clear$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$getDbHelper$p(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 253
    :try_start_31
    const-string v1, "FEATURE_CACHE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3d

    .line 252
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_3d
    move-exception v0

    :try_start_3e
    throw v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_44
    return-void
.end method
