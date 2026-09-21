.class Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 134
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 138
    invoke-static {}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] + key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsVideoMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->-$$Nest$fgetmIsVideoMode(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   getSecondSettingValue() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->-$$Nest$fgetmIsVideoMode(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_75

    .line 143
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getSecondSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LVACFS_ZOOMFACTOR"

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_76

    .line 147
    :cond_62
    const-string v0, "key_camera_zoom"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    :goto_75
    return-void

    .line 144
    :cond_76
    :goto_76
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$2;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    const-string p1, "1"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
