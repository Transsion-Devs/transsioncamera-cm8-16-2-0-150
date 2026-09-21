.class public final Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$Companion;

.field public static final TAG:Ljava/lang/String; = "VEEditorProxy"


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final editor:Lcom/ss/android/vesdk/VEEditor;

.field private final singleDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_NotAllowInvokeExecutorsMethods"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->Companion:Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 3

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string v0, "newSingleThreadScheduledExecutor()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->singleDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 33
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public static final synthetic access$getEditor$p(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;)Lcom/ss/android/vesdk/VEEditor;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    return-object p0
.end method

.method public static final synthetic access$getSingleDispatcher$p(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->singleDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getSpecificImageInternal(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->getSpecificImageInternal(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getSpecificImageInternal(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 315
    new-instance v6, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSpecificImage timeStamp: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " x "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "VEEditorProxy"

    invoke-static {v10, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/ref/WeakReference;

    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->editor:Lcom/ss/android/vesdk/VEEditor;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->access$getEditor$p(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 81
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 82
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->editor:Lcom/ss/android/vesdk/VEEditor;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->access$getEditor$p(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object p0

    .line 83
    filled-new-array {p1}, [I

    move-result-object v4

    move-object v5, v4

    sget-object v4, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->GET_FRAMES_MODE_NORMAL:Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;

    move-object v11, v5

    .line 82
    new-instance v5, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;

    invoke-direct {v5, v1, v0, v6}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/ref/WeakReference;Lkotlinx/coroutines/CancellableContinuation;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEditor;->getImages([IIILcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;Lcom/ss/android/vesdk/VEListener$VEGetImageListener;)I

    move-result p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " end"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_97

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_97
    return-object p0
.end method


# virtual methods
.method public final destroy(Lkotlin/jvm/functions/Function0;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$destroy$1;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final getSpecificImage(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$3;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$3;-><init>(Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;IIILkotlin/coroutines/Continuation;)V

    const-wide/16 p0, 0x1388

    invoke-static {p0, p1, v0, p4}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSpecificImage(IIILkotlin/jvm/functions/Function1;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v2, p4

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImage$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;IIILkotlin/coroutines/Continuation;)V

    move-object v4, v1

    move-object v1, v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
