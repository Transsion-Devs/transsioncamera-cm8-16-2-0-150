.class public final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;-><init>(Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase$CursorFactory;",
            "I",
            "Landroid/database/DatabaseErrorHandler;",
            ")V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v0, "CREATE TABLE IF NOT EXISTS FEATURE_CACHE(ID INTEGER PRIMARY KEY AUTOINCREMENT, ASSET_ID TEXT NOT NULL, ALG_KEY TEXT NOT NULL,ALG_TYPE INT NOT NULL,RESULT BLOB NOT NULL, CREATE_TIME LONG NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->upgradeDBVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$upgradeDBVersion3(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p0, "db"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ge p2, v0, :cond_f

    if-lt p3, v0, :cond_f

    .line 68
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$1;->this$0:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->upgradeDBVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;->access$upgradeDBVersion3(Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    return-void
.end method
