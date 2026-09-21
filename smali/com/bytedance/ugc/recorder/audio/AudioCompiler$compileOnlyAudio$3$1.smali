.class public final Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->compileOnlyAudio(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $audioPath:Ljava/lang/String;

.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $videoFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/audio/AudioCompiler;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ugc/recorder/audio/AudioCompiler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    iput-object p2, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$audioPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$videoFile:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$continuation:Lkotlin/coroutines/Continuation;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompileDone()V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getMVEEditor()Lcom/ss/android/vesdk/VEEditor;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    .line 239
    :goto_c
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getAsyncHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 240
    :goto_18
    const-string v0, "onCompileDone   audioPath = "

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$audioPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$videoFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 243
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$continuation:Lkotlin/coroutines/Continuation;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$audioPath:Ljava/lang/String;

    :try_start_31
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 244
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 245
    new-instance v2, Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_51

    :catchall_4f
    move-exception v0

    goto :goto_58

    .line 247
    :cond_51
    :goto_51
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 243
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_4f

    goto :goto_62

    :goto_58
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    :goto_62
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 249
    :try_start_6a
    new-instance v0, Lkotlin/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 250
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 248
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_82

    goto :goto_8c

    :catchall_82
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    :goto_8c
    return-void
.end method

.method public onCompileError(IIFLjava/lang/String;)V
    .registers 5

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCompileProgress  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    invoke-virtual {p1}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getMVEEditor()Lcom/ss/android/vesdk/VEEditor;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    .line 262
    :goto_28
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->$continuation:Lkotlin/coroutines/Continuation;

    new-instance p2, Lkotlin/Pair;

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 263
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/audio/AudioCompiler$compileOnlyAudio$3$1;->this$0:Lcom/bytedance/ugc/recorder/audio/AudioCompiler;

    invoke-virtual {p0}, Lcom/bytedance/ugc/recorder/audio/AudioCompiler;->getAsyncHandlerThread()Landroid/os/HandlerThread;

    move-result-object p0

    if-nez p0, :cond_45

    return-void

    :cond_45
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public onCompileProgress(F)V
    .registers 3

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompileProgress  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " =   "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/ugc/nlerecorder/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method
