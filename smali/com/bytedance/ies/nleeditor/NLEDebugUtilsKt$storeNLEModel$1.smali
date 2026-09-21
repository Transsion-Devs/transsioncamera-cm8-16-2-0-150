.class final Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt;->storeNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;
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
.field final synthetic $draftDir:Ljava/io/File;

.field final synthetic $editor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$draftDir:Ljava/io/File;

    iput-object p2, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$editor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 8

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$draftDir:Ljava/io/File;

    const-string v2, "resources/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_12
    iget-object v1, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$editor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getAllResources()Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;

    move-result-object v1

    const-string v2, "editor.allResources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1642
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    .line 99
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->hasResourceFile()Z

    move-result v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_b2

    const-string v5, "NLEDebugUtils"

    if-eqz v4, :cond_79

    :try_start_3e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_79

    .line 104
    :cond_45
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 106
    const-string v2, "Copy resource: "

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v2, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1$1$1;

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v2}, Lkotlin/io/FilesKt;->copyRecursively(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 110
    const-string v2, "Copy resource failed: "

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 101
    :cond_79
    :goto_79
    const-string v2, "Resource not found: "

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 114
    :cond_87
    iget-object v0, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$editor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    .line 115
    iget-object v0, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$editor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->done()Z

    .line 116
    iget-object v0, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$editor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->trim(JJ)V

    .line 118
    iget-object v0, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$editor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->store()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/bytedance/ies/nleeditor/NLEDebugUtilsKt$storeNLEModel$1;->$draftDir:Ljava/io/File;

    const-string v2, "draft.json"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "draftData"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p0, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_b1} :catch_b2

    return-void

    :catch_b2
    move-exception p0

    .line 123
    const-string v0, "NLEDebugUtil"

    const-string v1, "write draft.json failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
