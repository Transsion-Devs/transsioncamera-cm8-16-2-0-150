.class Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSuggestionPolicy"
.end annotation


# static fields
.field private static final BACK_MOVE_CLOSER_PROPORTION:F = 0.05f

.field private static final CACHE_CAPACITY:I = 0x5

.field private static final FRONT_MOVE_CLOSER_PROPORTION:F = 0.1f


# instance fields
.field private final mBigOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

.field private final mCache:Lcom/transsion/camera/feature/mode/aigc/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/aigc/util/Cache<",
            "Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMoreThanOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

.field private mMoveFurtherProportion:F

.field private final mNoFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

.field private final mSmallOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

.field private final mValidFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;


# direct methods
.method public static synthetic $r8$lambda$Unhq5ZoOltHks_7A6p_-xvO18CM(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->lambda$bigOneFace$4(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fc4jhq0I9Yijb5kCCFkH38D-sFQ(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)Z
    .registers 2

    .line 203
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ubfQCDpeWNmnFKP2Rditlm6OrVQ(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->lambda$updateFace$0(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xW1VgIhHxZyPG7aUBx-7qKOZAJU(FLcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)Z
    .registers 4

    .line 209
    iget v0, p1, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget p1, p1, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mMaxFaceProportion:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$zZuK1aULv0Bj-TaocbAb_f1tdTc(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)Z
    .registers 1

    .line 198
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)V
    .registers 6

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mNoFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    .line 136
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;-><init>(IF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMoreThanOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    .line 137
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    const v1, 0x3c23d70a    # 0.01f

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;-><init>(IF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mSmallOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    .line 138
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;-><init>(IF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mBigOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    .line 139
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;-><init>(IF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mValidFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    .line 140
    iput v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMoveFurtherProportion:F

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMainHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/util/Cache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/aigc/util/Cache;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mCache:Lcom/transsion/camera/feature/mode/aigc/util/Cache;

    .line 148
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/aigc/R$string;->argc_suggestion_move_further_proportion:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMoveFurtherProportion:F

    return-void
.end method

.method private declared-synchronized bigOneFace()Z
    .registers 3

    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mCache:Lcom/transsion/camera/feature/mode/aigc/util/Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/util/Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private synthetic lambda$bigOneFace$4(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)Z
    .registers 4

    .line 214
    iget v0, p1, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mFaceCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget p1, p1, Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;->mMaxFaceProportion:F

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMoveFurtherProportion:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_e

    return v1

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateFace$0(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mNoFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    if-ne v0, p1, :cond_1f

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_capture_suggestion:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->showCaptureSuggestion()V

    return-void

    .line 180
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMoreThanOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    if-ne v0, p1, :cond_3e

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_capture_suggestion_single_person:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->showCaptureSuggestion()V

    return-void

    .line 183
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mSmallOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    if-ne v0, p1, :cond_5d

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_capture_suggestion_move_closer:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->showCaptureSuggestion()V

    return-void

    .line 186
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mBigOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    if-ne v0, p1, :cond_7c

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aigc/R$string;->aigc_capture_suggestion_move_further:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->showCaptureSuggestion()V

    return-void

    .line 190
    :cond_7c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->hideCaptureSuggestion()V

    return-void
.end method

.method private declared-synchronized moreThanOneFace()Z
    .registers 3

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mCache:Lcom/transsion/camera/feature/mode/aigc/util/Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/util/Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private declared-synchronized noFace()Z
    .registers 3

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mCache:Lcom/transsion/camera/feature/mode/aigc/util/Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/util/Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private declared-synchronized smallOneFace()Z
    .registers 4

    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->this$0:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_14

    :cond_11
    const v0, 0x3d4ccccd    # 0.05f

    .line 208
    :goto_14
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mCache:Lcom/transsion/camera/feature/mode/aigc/util/Cache;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/aigc/util/Cache;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda4;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mCache:Lcom/transsion/camera/feature/mode/aigc/util/Cache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/util/Cache;->clear()V

    .line 220
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mLastFrameFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 221
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized updateFace(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V
    .registers 6

    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mCache:Lcom/transsion/camera/feature/mode/aigc/util/Cache;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/util/Cache;->offer(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    if-eqz p1, :cond_b

    .line 153
    monitor-exit p0

    return-void

    .line 158
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->noFace()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mNoFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    goto :goto_33

    :catchall_14
    move-exception p1

    goto :goto_66

    .line 160
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->moreThanOneFace()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMoreThanOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    goto :goto_33

    .line 163
    :cond_1f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->smallOneFace()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mSmallOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    goto :goto_33

    .line 165
    :cond_28
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->bigOneFace()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mBigOneFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    goto :goto_33

    .line 168
    :cond_31
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mValidFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    .line 172
    :goto_33
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mLastFrameFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    if-eq v0, p1, :cond_64

    .line 173
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFace currentFrameFaceInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mLastFrameFaceInfo:Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_14

    .line 194
    :cond_64
    monitor-exit p0

    return-void

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_14

    throw p1
.end method
