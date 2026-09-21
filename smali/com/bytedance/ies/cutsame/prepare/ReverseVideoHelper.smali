.class public final Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$Companion;

.field public static final TAG:Ljava/lang/String; = "ReverseVideoHelper"


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->Companion:Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->data:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$reverseVideo(Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V
    .registers 8

    .line 17
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->reverseVideo(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V

    return-void
.end method

.method private final reverseVideo(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;I",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "[B)V"
        }
    .end annotation

    .line 63
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    .line 64
    sget-object v0, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getDuration()I

    move-result v0

    .line 65
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PathHelper;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->getWorkspacePath()Ljava/lang/String;

    move-result-object v12

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/reverse_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/cutsame/util/Md5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, ".mp4"

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;

    invoke-virtual {v1, v3}, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->queryFile(Ljava/lang/String;)Z

    move-result v1

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reverseVideo existCache? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", patt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ReverseVideoHelper"

    invoke-static {v6, v5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_8d

    .line 71
    invoke-virtual {v2, v3}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->updatePath(Ljava/lang/String;)V

    .line 72
    invoke-interface/range {p6 .. p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v6, p3, 0x1

    .line 74
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_85

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 75
    invoke-direct/range {v3 .. v10}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->reverseVideo(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V

    return-void

    .line 77
    :cond_85
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v9, p4

    invoke-interface {v9, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8d
    move-object/from16 v9, p4

    .line 82
    sget-object v13, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;

    .line 85
    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 82
    new-instance v11, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v10, p5

    move-object/from16 v4, p6

    move-object v1, v11

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$reverseVideo$1;-><init>(Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/util/List;Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;[B)V

    move-object v11, v1

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move v8, v0

    move-object v5, v3

    move-object v9, v12

    move-object v3, v13

    move-object v6, v14

    move-object/from16 v12, p7

    invoke-virtual/range {v3 .. v12}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->getReverseVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;[B)V

    return-void
.end method


# virtual methods
.method public final cancelReverse()V
    .registers 1

    .line 111
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->cancelReverse()V

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final startReverse(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "[B)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isSuccess"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSingleProgress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSingleDone"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "licenseBuffer"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->data:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper$startReverse$1;-><init>(Ljava/util/List;Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[BLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p1, p0

    move-object p4, v0

    move p5, v1

    move-object p6, v2

    move-object p2, v3

    move-object p3, v4

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
