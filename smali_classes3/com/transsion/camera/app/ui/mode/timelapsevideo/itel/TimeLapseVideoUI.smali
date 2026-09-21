.class public Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;
.super Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDelayHandler:Landroid/os/Handler;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

.field private mTotalDuration:J

.field private final mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;


# direct methods
.method public static synthetic $r8$lambda$aJLQaYKF0JtX0G7m5vkSvEqkadQ(Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->lambda$stopProgressView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$uF5W1nfsxm1wi7okF4YqFydPgfY(Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->lambda$onShowRecordingUI$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimeLapseVideoUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;)V
    .registers 6

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 22
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-wide/16 p1, 0x0

    .line 24
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mTotalDuration:J

    .line 37
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    return-void
.end method

.method private getRecordResultDuring(J)Ljava/lang/String;
    .registers 6

    .line 145
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->mTimeLapseRate:I

    const/4 v0, 0x1

    if-eqz p0, :cond_c

    int-to-long v1, p0

    .line 146
    div-long/2addr p1, v1

    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-wide/32 v1, 0x927c0

    cmp-long p0, p1, v1

    if-gez p0, :cond_16

    const/16 p0, 0xf

    goto :goto_36

    :cond_16
    const-wide/32 v1, 0x124f80

    cmp-long p0, p1, v1

    if-gez p0, :cond_20

    const/16 p0, 0x1e

    goto :goto_36

    :cond_20
    const-wide/32 v1, 0x249f00

    cmp-long p0, p1, v1

    if-gez p0, :cond_2a

    const/16 p0, 0x3c

    goto :goto_36

    :cond_2a
    const-wide/32 v1, 0x493e00

    cmp-long p0, p1, v1

    if-gez p0, :cond_34

    const/16 p0, 0x78

    goto :goto_36

    :cond_34
    const/16 p0, 0x12c

    :goto_36
    int-to-long v1, p0

    .line 160
    div-long/2addr p1, v1

    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onShowRecordingUI$0()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz v0, :cond_10

    .line 95
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.start()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;->start()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$stopProgressView$1()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz v0, :cond_10

    .line 118
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.stop()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;->stop()V

    :cond_10
    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .registers 7

    .line 43
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    .line 44
    sget v1, Lcom/transsion/camera/R$id;->video_shutter_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_59

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$layout;->round_progress_shutter_bg:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    .line 49
    sget v3, Lcom/transsion/camera/R$id;->shutter_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->video_recording_circle_progress_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 52
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    sget v2, Lcom/transsion/camera/R$id;->shutter_panel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz v1, :cond_59

    .line 56
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mTotalDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;->setTotalDuration(J)V

    :cond_59
    return-object v0
.end method

.method public hideInfo()V
    .registers 2

    .line 172
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onHideRecordingUI()V
    .registers 1

    .line 110
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onHideRecordingUI()V

    .line 111
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->stopProgressView()V

    return-void
.end method

.method protected onShowRecordingUI()V
    .registers 5

    .line 89
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onShowRecordingUI()V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->getRecordResultDuring(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;)V

    const-wide/16 v2, 0x204

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTimeLapseWheelShow()V
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .registers 2

    .line 133
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onUpdateRecordingUI(Z)V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz p0, :cond_a

    .line 135
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;->pause(Z)V

    :cond_a
    return-void
.end method

.method public resume()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz v0, :cond_18

    .line 67
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.reset()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;->reset()V

    :cond_18
    return-void
.end method

.method public setTimeLapseDuration(J)V
    .registers 3

    .line 125
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mTotalDuration:J

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz p0, :cond_9

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;->setTotalDuration(J)V

    :cond_9
    return-void
.end method

.method public showFileTooShortInfo()V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->message_video_file_too_short:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .registers 8

    .line 74
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    sub-long/2addr p1, v0

    .line 77
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;->setCurrentDuration(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;->onProgressEnd()V

    .line 80
    :cond_1e
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->getRecordResultDuring(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_41

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    return-void
.end method

.method public stopProgressView()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mDelayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unInitVideoUI()V
    .registers 1

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->unInitVideoUI()V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;

    if-eqz p0, :cond_a

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/itel/RecordingProgressView;->reset()V

    :cond_a
    return-void
.end method
