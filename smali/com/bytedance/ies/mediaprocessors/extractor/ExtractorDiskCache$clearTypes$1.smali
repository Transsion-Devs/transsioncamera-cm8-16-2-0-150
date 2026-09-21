.class final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->clearTypes(Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
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
.field final synthetic $types:Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

.field final synthetic this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;->$types:Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    const-string v1, "DELETE FROM FEATURE_CACHE WHERE ALG_STR_TYPE IN (%s);"

    iget-object v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;->$types:Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->appendSql(Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$appendSql(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$clearTypes$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # getter for: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$getDbHelper$p(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 270
    :try_start_16
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_20

    const/4 v0, 0x0

    .line 269
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_20
    move-exception v0

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_27
    return-void
.end method
