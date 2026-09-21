.class public abstract Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;
    }
.end annotation


# static fields
.field protected static final HALF_SECOND_TO_MS:I = 0x1f4

.field private static final INIT_DURATION:J = 0x0L

.field private static final MSG_UI_STATE_CHANGED:I = 0x65

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x64

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field protected static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mContext:Landroid/content/Context;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsRecording:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mOrientation:I

.field private final mParentViewGroup:Landroid/view/ViewGroup;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRecordingDurationBeforePause:J

.field protected mRecordingOrientation:I

.field private mRecordingRootView:Landroid/view/View;

.field private mRecordingStartTime:J

.field protected mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mRecordingTotalDuration:J

.field private volatile mRelease:Z

.field protected mResources:Landroid/content/res/Resources;

.field private final mRootResourceId:I

.field protected mScreenFormType:I

.field private mShowRecordingTimeViewIndicator:Z

.field protected mShowUI:Z

.field protected mSwitchPreviewValue:Ljava/lang/String;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field private final mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

.field private mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;


# direct methods
.method public static synthetic $r8$lambda$_TsoGJRGFg9R4TPbZk_fN2vVry8(Landroid/view/View;Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V
    .registers 2

    .line 429
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->createView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRelease(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRelease:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$monUIStateChanged(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecordingTime(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingTime()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 92
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 12

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowRecordingTimeViewIndicator:Z

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    .line 70
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    .line 71
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 76
    sget-object v2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 89
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRelease:Z

    const/4 v2, -0x1

    .line 93
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    .line 94
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    .line 96
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    .line 100
    const-string v2, "off"

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 106
    new-instance v2, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    .line 109
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mInflater:Landroid/view/LayoutInflater;

    .line 110
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 111
    iput p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRootResourceId:I

    .line 112
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 113
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 114
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 115
    new-instance p1, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 116
    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 117
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_73

    .line 118
    const-string p1, "com.transsion.camera.feature.mode.dualvideo.CommonDualVideoUI5Ext"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    return-void

    .line 120
    :cond_73
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    return-void
.end method

.method private calculateRecordDuration()V
    .registers 5

    .line 343
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_b

    .line 344
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    return-void

    .line 346
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 3

    .line 427
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_14
    return-object v0
.end method

.method private hideRecordingUI()V
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 380
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onHideRecordingUI()V

    return-void
.end method

.method private onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 9

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onUIStateChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$1;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_8e

    goto :goto_7f

    .line 192
    :pswitch_2e
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_7f

    .line 193
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingUI(Z)V

    return-void

    .line 186
    :pswitch_36
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_7f

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    .line 188
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingUI(Z)V

    return-void

    .line 173
    :pswitch_47
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_57

    .line 174
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingTime()V

    return-void

    .line 177
    :cond_57
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq p1, p2, :cond_5f

    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_7f

    .line 179
    :cond_5f
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    sub-long/2addr p1, v4

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    .line 181
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    .line 182
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingUI(Z)V

    return-void

    .line 166
    :pswitch_70
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_7f

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingStartTime:J

    .line 168
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingDurationBeforePause:J

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->showRecordingUI()V

    :cond_7f
    :goto_7f
    return-void

    .line 161
    :pswitch_80
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->hideRecordingUI()V

    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_80
        :pswitch_80
        :pswitch_70
        :pswitch_47
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method

.method private showRecordingUI()V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showRecordingUI] + mRecordingRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onShowRecordingUI()V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showRecordingUI] - "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRecordingTime()V
    .registers 6

    .line 324
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mIsRecording:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    if-nez v0, :cond_9

    goto :goto_47

    .line 327
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->calculateRecordDuration()V

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1d

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 332
    :cond_1d
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->showTime(JZ)V

    .line 333
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowRecordingTimeViewIndicator:Z

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowRecordingTimeViewIndicator:Z

    .line 334
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v4, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v3, v4, :cond_37

    if-nez v2, :cond_37

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    .line 337
    :cond_37
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :goto_3c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateTimeInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_47
    :goto_47
    return-void
.end method

.method private updateRecordingTimeBarLayout()V
    .registers 9

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_5

    goto :goto_1c

    .line 518
    :cond_5
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    .line 519
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 521
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    .line 524
    :cond_e
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    if-eqz v3, :cond_1d

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    .line 525
    invoke-interface {v3, v4, v5, v0, v1}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->updateRecordingTimeBarLayout(Lcom/transsion/camera/app/common/IAppUI;Landroid/content/res/Resources;II)Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_1c
    return-void

    .line 529
    :cond_1d
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 530
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_33

    .line 532
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "video_recordingtime_origin_height"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 534
    :cond_33
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "top_bar_item_size"

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 535
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v7, 0x31

    if-ne v1, v2, :cond_8f

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7b

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_5d

    .line 553
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 554
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->recording_time_expand_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_89

    :cond_5d
    const/16 v1, 0x15

    .line 547
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 548
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->recording_time_expand_90_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_89

    :cond_6c
    const/16 v1, 0x51

    .line 543
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 544
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->recording_time_expand_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_89

    :cond_7b
    const/16 v1, 0x13

    .line 539
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 540
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->recording_time_expand_90_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 557
    :goto_89
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_d4

    :cond_8f
    const/4 v0, 0x3

    const/4 v2, 0x2

    if-eqz v1, :cond_97

    if-eq v1, v2, :cond_97

    if-ne v1, v0, :cond_d4

    .line 561
    :cond_97
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-nez v1, :cond_af

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v0

    if-ge v4, v5, :cond_a9

    sub-int/2addr v5, v4

    .line 565
    div-int/2addr v5, v2

    add-int/2addr v0, v5

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_cf

    :cond_a9
    sub-int/2addr v4, v5

    .line 567
    div-int/2addr v4, v2

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_cf

    :cond_af
    if-ne v1, v0, :cond_cf

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_recordingtime_margin_top_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 571
    const-string v0, "on"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_recordingtime_margin_preview_on_top_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 575
    :cond_cf
    :goto_cf
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 577
    :cond_d4
    :goto_d4
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRecordingUI(Z)V
    .registers 2

    .line 419
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onUpdateRecordingUI(Z)V

    return-void
.end method


# virtual methods
.method public createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 491
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createNotificationChannel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 492
    new-instance p0, Landroid/app/NotificationChannel;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 493
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 494
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 495
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 496
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public bridge synthetic createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected doCreateView()Landroid/view/View;
    .registers 5

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRootResourceId:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 437
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_recording_root_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 438
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_recording_time_group:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 439
    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_recording_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v1
.end method

.method public getRecordingTotalDuration()J
    .registers 3

    .line 448
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    return-wide v0
.end method

.method protected getUIState()Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-object p0
.end method

.method protected getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    return-object p0
.end method

.method public hideInfo()V
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    return-void
.end method

.method public bridge synthetic isNextRecordingAnimationEnable(Landroid/view/View;Z)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRecordingAnimationComplete(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isRecordingAnimationComplete(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected onHideRecordingUI()V
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    const/4 v0, -0x1

    .line 388
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_28

    goto :goto_29

    :cond_28
    move v1, v0

    .line 208
    :goto_29
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_30

    .line 209
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    .line 211
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_37

    .line 212
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_37
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 228
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    .line 230
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    if-eqz p1, :cond_9

    .line 231
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateBottomRootBarLayout(Z)V

    .line 234
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingTimeBarLayout()V

    return-void
.end method

.method protected onShowRecordingUI()V
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_a

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    :cond_a
    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingUI(Z)V

    .line 404
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 406
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateRecordingTimeBarLayout()V

    .line 407
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 411
    :cond_37
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :goto_3d
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateBottomRootBarLayout(Z)V

    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .registers 2

    return-void
.end method

.method public abstract playCaptureAnimation(Landroid/content/Context;)V
.end method

.method public bridge synthetic resetRecordingUI()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->resetRecordingUI()V

    return-void
.end method

.method public runRecordTimeAnimator()V
    .registers 5

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    const/4 v0, 0x0

    .line 503
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_44

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 507
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    .line 508
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 509
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 510
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public sendNotification(Landroid/content/Context;)V
    .registers 8

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendNotification"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 455
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 456
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video_save_notification"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 458
    const-string v3, "notification_id"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 460
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "camera_label"

    invoke-virtual {v1, v5, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 461
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v5, "camera_video_saved_notification"

    invoke-virtual {v2, v5, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 462
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p1, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->btn_shutter_video_notification_saved:I

    .line 463
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 467
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    const-string v2, "android.intent.category.APP_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 469
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 471
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    .line 472
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_95

    .line 474
    const-string v2, "com.google.android.apps.photos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a3

    :cond_95
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9e

    .line 476
    const-string v2, "com.google.android.apps.photosgo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a3

    .line 478
    :cond_9e
    const-string v2, "com.gallery20"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    :goto_a3
    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    .line 482
    invoke-virtual {p1, v1}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    .line 484
    invoke-virtual {p1, v2, v1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 485
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 486
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 487
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setRecordingOrientation(I)V
    .registers 4

    .line 291
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 292
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    :cond_7
    return-void
.end method

.method public setScreenFormType(II)V
    .registers 3

    .line 135
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    .line 136
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    return-void
.end method

.method public showInfo(I)V
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showInfo] infoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 256
    const-string v1, "string"

    if-eq p1, v0, :cond_77

    const/4 v0, 0x2

    if-eq p1, v0, :cond_61

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_61

    const/4 v0, 0x6

    if-eq p1, v0, :cond_35

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2c

    const/4 p1, 0x0

    goto :goto_8c

    .line 275
    :cond_2c
    sget p1, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 271
    :cond_35
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "video_recording_storage_full"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 267
    :cond_4b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "video_recording_error"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 263
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "video_reach_size_limit"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 258
    :cond_77
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "video_bad_performance_auto_stop"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 281
    :goto_8c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .registers 8

    .line 352
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    sub-long/2addr p1, v0

    .line 355
    :cond_f
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_1a

    .line 357
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 583
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez p1, :cond_a

    .line 584
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->createView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    :cond_a
    return-void
.end method

.method public unInitVideoUI()V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 246
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    .line 247
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRelease:Z

    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic updateRecordingAnimationState(Landroid/view/View;ZZ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method

.method public updateRecordingSize(J)V
    .registers 4

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateRecordingSize] mUIState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method protected updateTimeInterval()J
    .registers 5

    .line 368
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, v1, :cond_d

    .line 370
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    sub-long/2addr v2, v0

    return-wide v2

    :cond_d
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 6

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, p1, :cond_19

    .line 146
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x65

    .line 146
    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    :cond_19
    return-void
.end method
