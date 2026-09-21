.class public final Lcom/cutsame/solution/draft/CutSameDraft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cutsame/solution/draft/ICutSameDraft;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/draft/CutSameDraft$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cutsame/solution/draft/CutSameDraft$Companion;


# instance fields
.field public a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cutsame/solution/draft/CutSameDraft$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cutsame/solution/draft/CutSameDraft$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cutsame/solution/draft/CutSameDraft;->Companion:Lcom/cutsame/solution/draft/CutSameDraft$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    :goto_a
    if-nez p0, :cond_11

    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>()V

    :cond_11
    return-object p0
.end method

.method public declared-synchronized initWith(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "nleEditor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->b:Z

    if-eqz v0, :cond_15

    const-string p1, "CutSameDraft"

    const-string v0, "init with editor CutSameDraft is already init"

    .line 2
    invoke-static {p1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    goto :goto_1c

    :cond_15
    const/4 v0, 0x1

    .line 5
    :try_start_16
    iput-boolean v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->b:Z

    .line 6
    iput-object p1, p0, Lcom/cutsame/solution/draft/CutSameDraft;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_13

    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_13

    throw p1
.end method

.method public declared-synchronized initWith(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "draftJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->b:Z

    if-eqz v0, :cond_15

    const-string p1, "CutSameDraft"

    const-string v0, "init with json CutSameDraft is already init"

    .line 8
    invoke-static {p1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    goto :goto_2d

    :cond_15
    const/4 v0, 0x1

    .line 11
    :try_start_16
    iput-boolean v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->b:Z

    .line 12
    iget-object v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    if-nez v0, :cond_23

    .line 13
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;-><init>()V

    iput-object v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    .line 15
    :cond_23
    iget-object v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    if-nez v0, :cond_28

    goto :goto_2b

    :cond_28
    invoke-virtual {v0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->restore(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_13

    :goto_2b
    monitor-exit p0

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_13

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    if-nez v0, :cond_6

    goto :goto_10

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->delete()V

    .line 2
    :goto_10
    iget-object v0, p0, Lcom/cutsame/solution/draft/CutSameDraft;->a:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    if-nez v0, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->delete()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method
