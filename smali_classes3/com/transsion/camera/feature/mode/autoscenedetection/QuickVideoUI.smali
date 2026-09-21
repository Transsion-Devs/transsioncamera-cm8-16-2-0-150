.class public Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$UIHandler;
    }
.end annotation


# static fields
.field private static final HALF_SECOND_TO_MS:I = 0x1f4

.field private static final MSG_RESUME_QUICK_VIDEO_UI:I = 0x67

.field private static final MSG_START_RECORDING_UI:I = 0x66

.field private static final MSG_STOP_RECORDING_UI:I = 0x65

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x64

.field private static final QUICK_VIDEO_START_TIMESTAMP:Ljava/lang/String; = "00:00:00"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private volatile mIsRecording:Z

.field private mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private final mParentRecordingRoot:Landroid/view/ViewGroup;

.field private mRecordingOrientation:I

.field private mRecordingRootView:Landroid/view/View;

.field private mRecordingStartTime:J

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mRecordingTotalDuration:J

.field private final mResources:Landroid/content/res/Resources;

.field private mScreenFormType:I

.field private mSwitchPreviewValue:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$X_PmNi9swiiYv-2mX09Ri_tUzig(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateRecordingTimeBarLayout()V

    return-void
.end method

.method public static synthetic $r8$lambda$xIzzzicFLIGEV9elAQ6NIUoWzDs(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingRootView(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingTimeView(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingTimeViewGroup(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRecordingOrientation(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecordingTime(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateRecordingTime()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecordingTimeBarLayout(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateRecordingTimeBarLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickVideoUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mOrientation:I

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mScreenFormType:I

    .line 49
    iput v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingOrientation:I

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mIsRecording:Z

    .line 55
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingStartTime:J

    .line 212
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTotalDuration:J

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 59
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 60
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mParentRecordingRoot:Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    .line 62
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAsyncInflater()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$layout;->quick_video_recording_layout:I

    new-instance v2, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V

    invoke-virtual {p1, v1, v0, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method private calculateRecordDuration()V
    .registers 5

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTotalDuration:J

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 208
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mLowLight:Z

    if-eqz p0, :cond_b

    const/high16 p0, -0x1000000

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    return-void
.end method

.method private showTime(JZ)V
    .registers 8

    .line 234
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    sub-long/2addr p1, v0

    .line 237
    :cond_f
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_1a

    .line 239
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    return-void
.end method

.method private updateRecordingTime()V
    .registers 5

    .line 215
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mIsRecording:Z

    if-nez v0, :cond_5

    return-void

    .line 218
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->calculateRecordDuration()V

    .line 219
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTotalDuration:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->showTime(JZ)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_15

    .line 221
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateTimeInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateRecordingTimeBarLayout()V
    .registers 14

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_5

    return-void

    .line 253
    :cond_5
    iget v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mOrientation:I

    .line 254
    iget v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mScreenFormType:I

    .line 255
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getShutterProcessingOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    .line 257
    iget v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingOrientation:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1a

    if-eq v2, v0, :cond_1a

    move v0, v2

    .line 264
    :cond_1a
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2f

    .line 267
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->video_recordingtime_origin_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 269
    :cond_2f
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    .line 271
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v7, 0x13

    const/16 v8, 0x15

    const/16 v9, 0x31

    const/16 v10, 0xb4

    if-ne v1, v3, :cond_8b

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_78

    if-eq v0, v10, :cond_69

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_5c

    .line 289
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 290
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_84

    .line 283
    :cond_5c
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 284
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_expand_90_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_84

    :cond_69
    const/16 v1, 0x51

    .line 279
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_84

    .line 275
    :cond_78
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 276
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_expand_90_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 293
    :goto_84
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_125

    :cond_8b
    const/4 v3, 0x3

    .line 294
    const-string v11, "on"

    const/4 v12, 0x2

    if-eqz v1, :cond_e4

    if-eq v1, v12, :cond_e4

    if-ne v1, v3, :cond_96

    goto :goto_e4

    :cond_96
    const/4 v3, 0x4

    if-ne v1, v3, :cond_bd

    .line 317
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_lr_hover_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 319
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_lr_hover_preview_on_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 322
    :cond_b7
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_125

    :cond_bd
    const/4 v3, 0x5

    if-ne v1, v3, :cond_125

    .line 324
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 325
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_lr_hover_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 326
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_lr_hover_preview_on_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 329
    :cond_de
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_125

    .line 297
    :cond_e4
    :goto_e4
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v1, v3, :cond_fc

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v1

    if-ge v4, v5, :cond_f6

    sub-int/2addr v5, v4

    .line 301
    div-int/2addr v5, v12

    add-int/2addr v1, v5

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_118

    :cond_f6
    sub-int/2addr v4, v5

    .line 303
    div-int/2addr v4, v12

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_118

    .line 306
    :cond_fc
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_recordingtime_margin_top_hover:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 307
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 308
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_recordingtime_margin_preview_on_top_hover:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_118
    :goto_118
    if-ne v0, v10, :cond_120

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v10, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_125

    .line 314
    :cond_120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 331
    :cond_125
    :goto_125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hideRecordingUIImmediately()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingOrientation:I

    return-void
.end method

.method public onHideRecordingUI()V
    .registers 3

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mIsRecording:Z

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 5

    .line 67
    sget-object p2, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "QuickVideoUI onInflateFinished"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    sget p2, Lcom/transsion/camera/R$id;->quick_video_recording_root_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 70
    sget p2, Lcom/transsion/camera/R$id;->quick_video_recording_time_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 71
    sget p2, Lcom/transsion/camera/R$id;->quick_video_recording_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 87
    iget v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    goto :goto_1d

    .line 93
    :cond_c
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mOrientation:I

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_1c

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_18

    goto :goto_19

    :cond_18
    move v1, v0

    .line 95
    :goto_19
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1c
    return-void

    .line 90
    :cond_1d
    :goto_1d
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mOrientation:I

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 121
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mScreenFormType:I

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_12

    .line 123
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public onShowRecordingUI()V
    .registers 2

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mIsRecording:Z

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resumeQuickVideoUI()V
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mMainHandler:Landroid/os/Handler;

    if-eqz p0, :cond_9

    const/16 v0, 0x67

    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method public setRecordingOrientation(I)V
    .registers 4

    .line 132
    iget v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 133
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingOrientation:I

    :cond_7
    return-void
.end method

.method public setScreenFormType(II)V
    .registers 3

    .line 138
    iput p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mScreenFormType:I

    .line 139
    iput p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mOrientation:I

    return-void
.end method

.method public unInitQuickVideoUI()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mParentRecordingRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingRootView:Landroid/view/View;

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 202
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mLowLight:Z

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateRecordingTimeUI()V
    .registers 5

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingStartTime:J

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    const/16 v1, 0x64

    .line 145
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateTimeInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_13
    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method protected updateTimeInterval()J
    .registers 5

    .line 245
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    sub-long/2addr v2, v0

    return-wide v2
.end method
