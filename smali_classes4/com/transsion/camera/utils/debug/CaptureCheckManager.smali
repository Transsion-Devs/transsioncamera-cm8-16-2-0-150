.class public Lcom/transsion/camera/utils/debug/CaptureCheckManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/debug/ICaptureCheck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/debug/CaptureCheckManager$InstanceHolder;,
        Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final captureRecords:Ljava/util/List;

.field private currentMode:Ljava/lang/String;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$0uG9uONHWMmTedeasMjRkMFiKbg(Lcom/transsion/camera/utils/debug/CaptureCheckManager;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->lambda$onCaptureEndByTimestamp$4(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$C1trqQlbOHUZ00ISNQjfAZhvktE(Lcom/transsion/camera/utils/debug/CaptureCheckManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->checkCapture()V

    return-void
.end method

.method public static synthetic $r8$lambda$TjQSqBVPr3hGSipHebj9vTDUGNo(JLcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;)Z
    .registers 5

    .line 128
    iget-wide v0, p2, Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;->timestamp:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$UH5XOyBZAOuQdUHKfpdLEs9Qe9g(Lcom/transsion/camera/utils/debug/CaptureCheckManager;Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->lambda$onCaptureStarted$0(Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ys3ZWAzxYQltzOB9OAJH3fqAQ3E(JLcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;)Z
    .registers 5

    .line 118
    iget-wide v0, p2, Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;->frameNum:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$yynlMTB0exYfRMqiExngflgWqzI(Lcom/transsion/camera/utils/debug/CaptureCheckManager;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->lambda$onCaptureEndByFrameNumber$2(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCapture(Lcom/transsion/camera/utils/debug/CaptureCheckManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->checkCapture()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureCheckManag"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$1;-><init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->mainHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->captureRecords:Ljava/util/List;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->currentMode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;-><init>()V

    return-void
.end method

.method private checkCapture()V
    .registers 5

    .line 141
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2a

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->captureRecords:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->captureRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    :goto_2a
    return-void

    .line 144
    :cond_2b
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    const-string v1, "Capture Service ERROR, contact Camera APP RD"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture fail pics, please check log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->captureRecords:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/transsion/camera/utils/debug/CaptureCheckManager;
    .registers 1

    .line 38
    invoke-static {}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onCaptureEndByFrameNumber$2(J)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->captureRecords:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda6;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->checkCapture()V

    return-void
.end method

.method private synthetic lambda$onCaptureEndByTimestamp$4(J)V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->captureRecords:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda5;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->checkCapture()V

    return-void
.end method

.method private synthetic lambda$onCaptureStarted$0(Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->captureRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->checkCapture()V

    return-void
.end method


# virtual methods
.method public onCaptureEndByFrameNumber(J)V
    .registers 6

    .line 115
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 116
    :cond_7
    sget-object v0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureEndByFrameNum() called with: frameNum = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager;J)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureEndByTimestamp(J)V
    .registers 6

    .line 125
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 126
    :cond_7
    sget-object v0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureEndByTimestamp() called with: timestamp = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager;J)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureFailedByFrameNumber(J)V
    .registers 4

    .line 135
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 136
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->onCaptureEndByFrameNumber(J)V

    return-void
.end method

.method public onCaptureStarted(JJ)V
    .registers 11

    .line 99
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 100
    :cond_7
    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->currentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_25

    .line 109
    :cond_1c
    new-instance p1, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 101
    :cond_25
    :goto_25
    new-instance v0, Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;

    const/4 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;-><init>(JJLcom/transsion/camera/utils/debug/CaptureCheckManager-IA;)V

    .line 102
    sget-object p1, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCaptureStart: currentMode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->currentMode:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    new-instance p1, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager;Lcom/transsion/camera/utils/debug/CaptureCheckManager$CaptureRecord;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->mainHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    const-wide/16 p2, 0x2710

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;)V
    .registers 5

    .line 92
    sget-object v0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode() called with: mode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->currentMode:Ljava/lang/String;

    .line 94
    new-instance p1, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/utils/debug/CaptureCheckManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/utils/debug/CaptureCheckManager;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
