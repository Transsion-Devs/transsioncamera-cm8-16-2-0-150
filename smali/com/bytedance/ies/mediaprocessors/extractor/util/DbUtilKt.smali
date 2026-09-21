.class public final Lcom/bytedance/ies/mediaprocessors/extractor/util/DbUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final moveToNextSafely(Landroid/database/Cursor;I)Z
    .registers 3

    const-string v0, "$this$moveToNextSafely"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_5 .. :try_end_9} :catch_a

    return p0

    .line 15
    :catch_a
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor/util/DbUtilKt;->resetCursorWindowSize(I)Z

    .line 17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    return p0
.end method

.method private static final resetCursorWindowSize(I)Z
    .registers 3

    .line 22
    :try_start_0
    const-class v0, Landroid/database/CursorWindow;

    const-string v1, "sCursorWindowSize"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 23
    const-string v1, "field"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1e
    const/4 p0, 0x0

    return p0
.end method
