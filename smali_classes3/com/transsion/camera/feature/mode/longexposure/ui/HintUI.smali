.class public Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;
.implements Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;,
        Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;,
        Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;,
        Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAimAtStarrySkyInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCancelInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

.field private final mPicTraceHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

.field private final mStableEnterTripodInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStableInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStarHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

.field private final mStellarTrackCanceledInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStellarTrackCancelingInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStellarTrackHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

.field private final mStellarTrackStableInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStellarTrackStarSearchFailInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mStellarTrackTimeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mTripodHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

.field private final mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAimAtStarrySkyInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAimAtStarrySkyInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCancelInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCancelInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentHint(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStableEnterTripodInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStableEnterTripodInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStableInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStellarTrackCanceledInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackCanceledInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStellarTrackCancelingInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackCancelingInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStellarTrackStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackStableInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStellarTrackStarSearchFailInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackStarSearchFailInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTripodHelper(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mTripodHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwilightMonitor(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentHint(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;)V
    .registers 14

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStableInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 36
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCancelInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 38
    new-instance v4, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v4, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAimAtStarrySkyInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 40
    new-instance v5, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v5, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackTimeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 41
    new-instance v6, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v6, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackStableInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 42
    new-instance v7, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v7, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v7, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackStarSearchFailInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 43
    new-instance v8, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v8, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v8, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackCancelingInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 44
    new-instance v9, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v9, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v9, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackCanceledInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 46
    new-instance v3, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v3, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStableEnterTripodInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 160
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStarHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    .line 161
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    .line 162
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mPicTraceHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 55
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    .line 57
    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mTripodHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    .line 59
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->capture_stable_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 60
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->capture_cancel_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 62
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->aim_at_starry_sky_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 64
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->stellar_track_capture_time_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 65
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->stellar_track_capture_stable_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 66
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->stellar_track_capture_star_search_fail_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 67
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->stellar_track_capture_canceling_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 68
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->stellar_track_capture_canceled_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 70
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->stable_enter_tripod_tip:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mTripodHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;->updateTripodTip(Z)V

    return-void
.end method

.method public onCaptureCancel()V
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    if-eqz p0, :cond_7

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onCaptureCancel()V

    :cond_7
    return-void
.end method

.method public onCaptureEnd()V
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    if-eqz p0, :cond_7

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onCaptureEnd()V

    :cond_7
    return-void
.end method

.method public onCaptureFail()V
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    if-eqz p0, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onCaptureFail()V

    :cond_7
    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    if-eqz p0, :cond_7

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onCaptureStart()V

    :cond_7
    return-void
.end method

.method public onCaptureStop()V
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    if-eqz p0, :cond_7

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onCaptureStop()V

    :cond_7
    return-void
.end method

.method public onStarSearched(I)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    if-eqz p0, :cond_7

    .line 121
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onStarSearched(I)V

    :cond_7
    return-void
.end method

.method public onStatusUpdate(I)V
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    if-eqz p0, :cond_7

    .line 114
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onStatusUpdate(I)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStableInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCancelInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAimAtStarrySkyInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackTimeInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackStableInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackStarSearchFailInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackCancelingInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackCanceledInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStableEnterTripodInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public updateScene(Ljava/lang/String;)V
    .registers 3

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "stellartrack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "star"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mPicTraceHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->entry()V

    return-void

    .line 92
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStarHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->entry()V

    return-void

    .line 96
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mStellarTrackHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->entry()V

    return-void
.end method

.method public updateTripod(Ljava/lang/String;)V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->mCurrentHint:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    if-eqz p0, :cond_7

    .line 107
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->tripodChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
