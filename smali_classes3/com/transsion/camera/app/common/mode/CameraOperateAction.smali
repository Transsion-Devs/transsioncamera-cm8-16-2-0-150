.class public Lcom/transsion/camera/app/common/mode/CameraOperateAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;
    }
.end annotation


# static fields
.field private static final ACTION_BOOLEAN_MAP:Landroid/util/SparseArray;

.field private static final ACTION_BOOLEAN_PREVIEW_MAP:Landroid/util/SparseArray;

.field private static final ACTION_HINT_MAP:Landroid/util/SparseArray;

.field private static final ACTION_STATE_MAP:Landroid/util/SparseArray;

.field private static final ACTION_STRING_MAP:Landroid/util/SparseArray;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TYPE_NO_NEED_TO_RESPOND_EVENT_ACTIONS_MAP:Landroid/util/SparseArray;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private volatile mCurrentState:I

.field private final mFirstSteadyFrameComeStates:Ljava/util/Map;

.field private mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;


# direct methods
.method public static synthetic $r8$lambda$wF3WlolQtqCZuVBuJ8aAXUFFk3M()V
    .registers 1

    const/4 v0, 0x0

    .line 915
    invoke-static {v0}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->setModeResetStatus(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraOperateAction"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 484
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_STATE_MAP:Landroid/util/SparseArray;

    .line 500
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$2;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_STRING_MAP:Landroid/util/SparseArray;

    .line 609
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$3;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_MAP:Landroid/util/SparseArray;

    .line 688
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$4;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_PREVIEW_MAP:Landroid/util/SparseArray;

    .line 739
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$5;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_HINT_MAP:Landroid/util/SparseArray;

    .line 757
    new-instance v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction$6;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$6;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TYPE_NO_NEED_TO_RESPOND_EVENT_ACTIONS_MAP:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x65

    .line 459
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    .line 780
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mFirstSteadyFrameComeStates:Ljava/util/Map;

    .line 887
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    .line 888
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 3

    .line 837
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_STRING_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 838
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 840
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown action ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkFirstSteadyFrameState(I)V
    .registers 6

    const/16 v0, 0x10

    if-ne p1, v0, :cond_4e

    .line 877
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mFirstSteadyFrameComeStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 878
    sget-object v1, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFirstSteadyFrameState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_4e

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mFirstSteadyFrameComeStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x9

    .line 881
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    :cond_4e
    return-void
.end method

.method public static filterRespondByState(III)I
    .registers 4

    const/16 v0, 0x12

    if-ne p1, v0, :cond_e

    const/16 p1, 0x66

    if-eq p0, p1, :cond_c

    const/16 p1, 0x67

    if-ne p0, p1, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    return p2
.end method

.method private firstSteadyFrameNotify()V
    .registers 6

    .line 910
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 912
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 913
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 915
    :cond_32
    sget-object v0, Lcom/transsion/camera/utils/UIUtils;->sMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/app/common/mode/CameraOperateAction$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 916
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v2, 0x9

    const/16 v3, -0x65

    if-eq v0, v3, :cond_99

    const/16 v4, 0x6d

    if-eq v0, v4, :cond_93

    packed-switch v0, :pswitch_data_9e

    goto :goto_7e

    .line 946
    :pswitch_4e
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return-void

    .line 942
    :pswitch_51
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 943
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return-void

    :pswitch_57
    const/16 v0, 0x14

    .line 938
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 939
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return-void

    :pswitch_5f
    const/4 v0, 0x7

    .line 930
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 931
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    .line 933
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 934
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    :cond_7e
    :goto_7e
    return-void

    :pswitch_7f
    const/4 v0, 0x5

    .line 926
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 927
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return-void

    :pswitch_86
    const/4 v0, 0x3

    .line 922
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 923
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return-void

    .line 918
    :pswitch_8d
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    .line 919
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return-void

    .line 949
    :cond_93
    iput v3, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    .line 950
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    return-void

    .line 953
    :cond_99
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x64
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
        :pswitch_5f
        :pswitch_57
        :pswitch_51
        :pswitch_4e
    .end packed-switch
.end method

.method public static needStopPressedAnimation(I)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x52

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x90

    if-eq p0, v0, :cond_1f

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x4d

    if-ne p0, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method private notifyOperateAction(I)V
    .registers 2

    .line 892
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mRawActionCallback:Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;

    if-eqz p0, :cond_7

    .line 893
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;->onAction(I)V

    :cond_7
    return-void
.end method

.method public static respondHintEvent(I)I
    .registers 2

    .line 820
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_HINT_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 824
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static respondPreviewManagerEvent(I)I
    .registers 2

    .line 812
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_PREVIEW_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 816
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static respondUIManagerEvent(II)I
    .registers 4

    .line 792
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_23

    .line 796
    :cond_9
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TYPE_NO_NEED_TO_RESPOND_EVENT_ACTIONS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 797
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-eqz p0, :cond_28

    const/4 v0, 0x0

    .line 800
    :goto_1c
    array-length v1, p0

    if-ge v0, v1, :cond_28

    .line 801
    aget v1, p0, v0

    if-ne v1, p1, :cond_25

    :goto_23
    const/4 p0, -0x1

    return p0

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 807
    :cond_28
    sget-object p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_BOOLEAN_MAP:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private switchNeedToHandleActionBegin(II)V
    .registers 6

    .line 898
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchNeedToHandleActionBegin state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 899
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, -0x65

    if-eq v0, v1, :cond_34

    if-eq p1, v1, :cond_34

    const/16 v0, 0xa5

    if-ne p2, v0, :cond_49

    .line 900
    :cond_34
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_49

    .line 901
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_44

    const/16 v0, 0x10

    if-eq p2, v0, :cond_46

    .line 902
    :cond_44
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    .line 904
    :cond_46
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    :cond_49
    return-void
.end method


# virtual methods
.method public getCurrentActionState()I
    .registers 1

    .line 481
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    return p0
.end method

.method public rawActionHandle(I)V
    .registers 4

    .line 846
    sget-object v0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->ACTION_STATE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 847
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->switchNeedToHandleActionBegin(II)V

    .line 848
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->checkFirstSteadyFrameState(I)V

    return-void

    :cond_19
    const/16 v0, 0x8

    if-eq p1, v0, :cond_58

    const/16 v0, 0x9

    if-eq p1, v0, :cond_41

    const/16 v0, 0xe

    if-eq p1, v0, :cond_37

    .line 867
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_33

    const/16 v0, 0xd5

    if-eq p1, v0, :cond_33

    const/16 v0, 0xd4

    if-ne p1, v0, :cond_40

    .line 869
    :cond_33
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    return-void

    .line 859
    :cond_37
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_40

    .line 860
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    :cond_40
    return-void

    .line 853
    :cond_41
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mCurrentState:I

    const/16 v0, 0x6a

    if-ne p1, v0, :cond_54

    .line 854
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->mFirstSteadyFrameComeStates:Ljava/util/Map;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->firstSteadyFrameNotify()V

    return-void

    .line 864
    :cond_58
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->notifyOperateAction(I)V

    return-void
.end method
