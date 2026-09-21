.class Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/voicecamera/sdk/TVCResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V
    .registers 2

    .line 528
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 4

    .line 536
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onExit()V
    .registers 2

    .line 560
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onExit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .registers 4

    .line 531
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 541
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult str: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", feedbackData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 542
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-nez p2, :cond_94

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmAllowVoiceCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_4f

    goto :goto_94

    .line 548
    :cond_4f
    const-string p2, "capture"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 549
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_81

    .line 550
    :cond_60
    const-string p2, "shoot"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 551
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_81

    .line 552
    :cond_71
    const-string p2, "cheese"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 553
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    .line 555
    :cond_81
    :goto_81
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$500(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_voice_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p2, "voice_capture_state"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 543
    :cond_94
    :goto_94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " mResumed = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmResumed(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mSupportCapture = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmSupportCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsTakePicture: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mAllowVoiceCapture: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmAllowVoiceCapture(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mCloseByFlashSnap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->-$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
