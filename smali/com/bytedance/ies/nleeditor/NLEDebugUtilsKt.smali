.class public final Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "NLEDebugUtils"


# direct methods
.method public static final dumpNLE(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .registers 8

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "veModel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p3, p2, p4}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;->storeNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;

    move-result-object p0

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eqz p1, :cond_42

    .line 47
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1e

    goto :goto_42

    .line 49
    :cond_1e
    :try_start_1e
    new-instance p4, Ljava/io/File;

    const-string v0, "ve_sequence.json"

    invoke-direct {p4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p4, p1, p3, p2, p3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_42

    :catch_29
    move-exception p1

    .line 51
    sget-object p4, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p4}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p4

    if-nez p4, :cond_33

    goto :goto_42

    .line 52
    :cond_33
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_WARNING:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 53
    const-string v1, "dump NLE: write ve sequnece json error! "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p4, v0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 57
    :cond_42
    :goto_42
    invoke-static {p5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 59
    :try_start_48
    new-instance p1, Ljava/io/File;

    const-string p4, "ve_model.json"

    invoke-direct {p1, p0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p5, p3, p2, p3}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_53

    goto :goto_6c

    :catch_53
    move-exception p1

    .line 61
    sget-object p2, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p2}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p2

    if-nez p2, :cond_5d

    goto :goto_6c

    .line 62
    :cond_5d
    sget-object p3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_WARNING:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 63
    const-string p4, "dump NLE: write ve model json error! "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2, p3, p1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-object p0
.end method

.method public static final dumpNLE(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;
    .registers 13

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 29
    const-string v4, "/sdcard/aweme/drafts"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-static/range {v1 .. v8}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;->dumpNLE$default(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dumpNLE$default(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Ljava/io/File;
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_5

    const/4 p2, 0x0

    :cond_5
    move-object v2, p2

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_c

    .line 42
    const-string p3, "/sdcard/aweme/drafts"

    :cond_c
    move-object v3, p3

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_12

    const/4 p4, 0x0

    :cond_12
    move v4, p4

    and-int/lit8 p2, p6, 0x20

    if-eqz p2, :cond_19

    .line 44
    const-string p5, ""

    :cond_19
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;->dumpNLE(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dumpNLE$default(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;ZILjava/lang/Object;)Ljava/io/File;
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 23
    :cond_a
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;->dumpNLE(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final restoreDraft(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "draftPath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {p0}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;->restoreNLEEditor(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->store()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final restoreNLEEditor(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    .registers 5

    const-string v0, "draftPath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_12

    return-object v1

    .line 145
    :cond_12
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;-><init>()V

    .line 146
    new-instance v2, Ljava/io/File;

    const-string v3, "draft.json"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->restore(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    .line 158
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->done()Z

    const-wide/16 v0, 0x0

    .line 160
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->trim(JJ)V

    return-object p0
.end method

.method public static final storeNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;
    .registers 14

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd-HHmmss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/io/File;

    const-string v2, "draft_"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_32
    const-string p1, "dump model to: "

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NLEModelUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance p1, Ljava/io/File;

    const-string v0, "model.json"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "model.toJsonString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStage()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p1

    if-nez p1, :cond_64

    .line 83
    const-string p0, "NLEDebugUtils"

    const-string p1, "storeNLEModel error: model.stage is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 86
    :cond_64
    new-instance p1, Ljava/io/File;

    const-string v0, "stage.json"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStage()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v0

    const-string v4, "empty"

    if-nez v0, :cond_74

    goto :goto_7c

    :cond_74
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->toJsonString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7b

    goto :goto_7c

    :cond_7b
    move-object v4, v0

    :goto_7c
    invoke-static {p1, v4, v2, v3, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    if-eqz p3, :cond_ab

    .line 89
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStage()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->deepClone()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    .line 90
    new-instance p1, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-direct {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;-><init>()V

    .line 91
    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->setModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 92
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    .line 93
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->done()Z

    .line 94
    new-instance v7, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;

    invoke-direct {v7, v1, p1}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;-><init>(Ljava/io/File;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :cond_ab
    if-nez p2, :cond_ae

    return-object v1

    .line 130
    :cond_ae
    :try_start_ae
    new-instance p0, Ljava/io/File;

    const-string p1, "draft_cover.png"

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, p3, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 133
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string p2, "byteArrayStream.toByteArray()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_cd} :catch_ce

    return-object v1

    :catch_ce
    move-exception v0

    move-object p0, v0

    .line 136
    const-string p1, "NLEDebugUtil"

    const-string p2, "write cover failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static synthetic storeNLEModel$default(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;ZILjava/lang/Object;)Ljava/io/File;
    .registers 6

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 70
    :cond_a
    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;->storeNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
