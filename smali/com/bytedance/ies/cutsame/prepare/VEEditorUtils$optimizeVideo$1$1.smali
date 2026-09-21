.class public final Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->optimizeVideo(Landroid/content/Context;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $inputPath:Ljava/lang/String;

.field final synthetic $onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

.field final synthetic $outputPath:Ljava/lang/String;

.field final synthetic $task:Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;

.field final synthetic $tempFile:Ljava/lang/String;

.field final synthetic $veCompiler:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor;Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;)V
    .registers 7

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$tempFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$inputPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$outputPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$veCompiler:Lcom/ss/android/vesdk/VEEditor;

    iput-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$task:Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompileDone()V
    .registers 9

    .line 259
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$task:Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->isCancel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 260
    sget-object v0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$tempFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->safeDeleteFile(Ljava/io/File;)Z

    goto :goto_38

    .line 262
    :cond_16
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$tempFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$outputPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 263
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    if-nez v0, :cond_2c

    goto :goto_33

    :cond_2c
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$inputPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$outputPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_33
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$veCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v1, v1}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    .line 266
    :goto_38
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1$onCompileDone$1;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$veCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {v5, p0, v1}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1$onCompileDone$1;-><init>(Lcom/ss/android/vesdk/VEEditor;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onCompileError(IIFLjava/lang/String;)V
    .registers 11

    .line 250
    sget-object p3, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    new-instance p4, Ljava/io/File;

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$tempFile:Ljava/lang/String;

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/bytedance/ies/cutsame/util/FileUtils;->safeDeleteFile(Ljava/io/File;)Z

    .line 251
    iget-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    if-nez p3, :cond_11

    goto :goto_2c

    :cond_11
    iget-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$inputPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$outputPath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p4, v0, p1}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_2c
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$veCompiler:Lcom/ss/android/vesdk/VEEditor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/ss/android/vesdk/VEEditor;->setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V

    .line 253
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1$onCompileError$1;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$veCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {v3, p0, p2}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1$onCompileError$1;-><init>(Lcom/ss/android/vesdk/VEEditor;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onCompileProgress(F)V
    .registers 2

    .line 246
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$optimizeVideo$1$1;->$onOptimizeListener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onProgress(F)V

    return-void
.end method
