.class public final Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final inputPath:Ljava/lang/String;

.field private isCancel:Z

.field private final listener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

.field private final outputPath:Ljava/lang/String;

.field private final veCompiler:Lcom/ss/android/vesdk/VEEditor;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Lcom/ss/android/vesdk/VEEditor;Z)V
    .registers 9

    const-string v0, "inputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->inputPath:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->outputPath:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->width:I

    .line 13
    iput p4, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->height:I

    .line 14
    iput-object p5, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->listener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    .line 15
    iput-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->veCompiler:Lcom/ss/android/vesdk/VEEditor;

    .line 16
    iput-boolean p7, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->isCancel:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Lcom/ss/android/vesdk/VEEditor;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 19

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    move v8, v0

    :goto_6
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    goto :goto_11

    :cond_e
    move/from16 v8, p7

    goto :goto_6

    .line 9
    :goto_11
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;Lcom/ss/android/vesdk/VEEditor;Z)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 5

    .line 19
    iget-boolean v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->isCancel:Z

    if-nez v0, :cond_2d

    .line 20
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->veCompiler:Lcom/ss/android/vesdk/VEEditor;

    if-eqz v0, :cond_2d

    .line 21
    monitor-enter v0

    .line 22
    :try_start_9
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->isCancel()Z

    move-result v1

    if-nez v1, :cond_27

    .line 23
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->veCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    .line 24
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->listener:Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;

    if-nez v1, :cond_19

    goto :goto_20

    :cond_19
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->inputPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->outputPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/ies/cutsame/prepare/OnOptimizeListener;->onCancel(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v1}, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->setCancel(Z)V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_2b

    .line 27
    :cond_27
    :goto_27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_25

    .line 21
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0

    throw p0

    :cond_2d
    return-void
.end method

.method public final getHeight()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->height:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 12
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->width:I

    return p0
.end method

.method public final isCancel()Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->isCancel:Z

    return p0
.end method

.method public final setCancel(Z)V
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEOptimizeVideoTask;->isCancel:Z

    return-void
.end method
