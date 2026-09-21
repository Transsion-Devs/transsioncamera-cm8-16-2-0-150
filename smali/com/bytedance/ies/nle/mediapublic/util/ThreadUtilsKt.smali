.class public final Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final uiHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_ByteDanceKotlinRules_Static_Names"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$81U4r8B1Kd40MjvIFJRM8-iiX94(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt;->runOnUIThread$lambda-0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j05QNrtnxUEDRt-mSCHlxkc96A8(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt;->runOnUIThreadAtFrontOfQueue$lambda-1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final runOnUIThread(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 12
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 14
    :cond_1b
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final runOnUIThread$lambda-0(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final runOnUIThreadAtFrontOfQueue(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 20
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 22
    :cond_1b
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/bytedance/ies/nle/mediapublic/util/ThreadUtilsKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final runOnUIThreadAtFrontOfQueue$lambda-1(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
