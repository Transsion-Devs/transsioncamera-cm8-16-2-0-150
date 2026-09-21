.class final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $it:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

.field final synthetic $values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;Landroid/content/ContentValues;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;->$it:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    iput-object p2, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;->$values:Landroid/content/ContentValues;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;->invoke(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    const-string v0, "sqlite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;->$it:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getAssetId()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move-object v0, v2

    :goto_16
    iget-object v3, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;->$it:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Result;->getAlgorithmKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    move-object v2, v1

    :cond_22
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v1, "FEATURE_CACHE"

    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$updateSql$1;->$values:Landroid/content/ContentValues;

    const-string v2, "ASSET_ID = ? AND ALG_KEY = ?"

    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
