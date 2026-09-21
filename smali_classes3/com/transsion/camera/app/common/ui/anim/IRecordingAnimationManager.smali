.class public interface abstract Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RecordingAnimMgr"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;
    .registers 15

    .line 69
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createRecordingAnimation]: hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", moveDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_95

    const/4 v0, 0x2

    .line 77
    const-string v1, "alpha"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_49

    .line 78
    new-array v4, v0, [F

    fill-array-data v4, :array_9e

    invoke-static {p1, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 79
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v4, v5, v3, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0x0

    goto :goto_5d

    .line 83
    :cond_49
    new-array v4, v0, [F

    fill-array-data v4, :array_a6

    invoke-static {p1, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 84
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v4, v5, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v5, 0x15e

    const-wide/16 v7, 0x96

    .line 89
    :goto_5d
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_83

    .line 90
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 91
    new-array v9, v0, [F

    const/4 v10, 0x0

    aput p3, v9, v10

    const/4 p3, 0x1

    aput v3, v9, p3

    const-string/jumbo v3, "translationX"

    invoke-static {p1, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 92
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v10

    aput-object v3, v0, p3

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object v1, v2

    .line 97
    :cond_83
    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 99
    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 100
    new-instance p3, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$2;-><init>(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Landroid/view/View;Z)V

    invoke-virtual {v1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    .line 71
    :cond_95
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "createRecordingAnimation in wrong thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_9e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 3

    .line 32
    invoke-interface {p0, p1, p2, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;
    .registers 5

    const/4 v0, 0x0

    .line 38
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;
    .registers 7

    .line 44
    invoke-interface {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object p3

    .line 45
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    sget p4, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    if-eqz p2, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, 0x3

    .line 47
    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46
    invoke-virtual {p1, p4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    sget-object p4, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[createRecordingAnimationWithState] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    new-instance p4, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;

    invoke-direct {p4, p0, p2, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;-><init>(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;ZLandroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3
.end method

.method public isNextRecordingAnimationEnable(Landroid/view/View;Z)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_b

    .line 117
    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[isNextVideoRecordingAnimationEnable]: rootView is null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 120
    :cond_b
    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_17

    const/4 p1, 0x5

    goto :goto_1b

    .line 121
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 122
    :goto_1b
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNextVideoRecordingAnimationEnable]: current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRecordBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eqz p2, :cond_41

    if-le p1, v1, :cond_40

    return v0

    :cond_40
    return p0

    :cond_41
    if-lez p1, :cond_46

    if-ge p1, v1, :cond_46

    return v0

    :cond_46
    return p0
.end method

.method public isRecordingAnimationComplete(Landroid/view/View;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_b

    .line 130
    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[isRecordingAnimationComplete]: rootView is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 133
    :cond_b
    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x5

    if-nez p1, :cond_18

    move p1, v0

    goto :goto_1c

    .line 134
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1c
    if-ne p1, v0, :cond_1f

    const/4 p0, 0x1

    :cond_1f
    return p0
.end method

.method public resetRecordingUI()V
    .registers 1

    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 3

    return-void
.end method

.method public updateRecordingAnimationState(Landroid/view/View;ZZ)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_b

    if-eqz p3, :cond_9

    const/4 p0, 0x1

    goto :goto_10

    :cond_9
    const/4 p0, 0x2

    goto :goto_10

    :cond_b
    if-eqz p3, :cond_f

    const/4 p0, 0x4

    goto :goto_10

    :cond_f
    const/4 p0, 0x5

    .line 148
    :goto_10
    sget-object p2, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateRecordingAnimationState]: state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    sget p2, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
