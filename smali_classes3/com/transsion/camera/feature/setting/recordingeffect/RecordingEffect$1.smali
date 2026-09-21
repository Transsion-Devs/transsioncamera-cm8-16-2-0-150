.class Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingEnd()V
    .registers 2

    .line 97
    invoke-static {}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onRecordingEnd"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingStart()V
    .registers 7

    .line 80
    invoke-static {}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecordingStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->-$$Nest$fputmBasezoom(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;F)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->isHeadSetOn()Z

    move-result v0

    const-string v1, "LVACFS_SCHEMA"

    const-string v2, "LVACFS_ZOOMFACTOR"

    if-eqz v0, :cond_3d

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    const-string v0, "0"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->access$000(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    sget v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    .line 87
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    .line 86
    const-string v5, "key_camera_zoom"

    invoke-virtual {v0, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->-$$Nest$mgetSchemaValue(Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect$1;->this$0:Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;

    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->setAudioEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/transsion/camera/feature/setting/recordingeffect/RecordingEffect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingStart   value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
