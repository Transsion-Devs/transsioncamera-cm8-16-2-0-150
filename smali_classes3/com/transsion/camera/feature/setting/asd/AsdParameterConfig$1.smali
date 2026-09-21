.class Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamIdCallback([I)V
    .registers 4

    if-eqz p1, :cond_66

    .line 160
    array-length v0, p1

    if-lez v0, :cond_66

    const/4 v0, 0x0

    .line 161
    aget p1, p1, v0

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I

    move-result v0

    if-eq v0, p1, :cond_66

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;I)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmAlgoPolicy(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/setting/asd/policy/IAlgoPolicy;->setStreamId(I)V

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmAsdHwFeatures(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;

    move-result-object p1

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I

    move-result v1

    .line 166
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSensorRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->setSensorRect(Landroid/graphics/Rect;)V

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    iget-object p1, p1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_66
    return-void
.end method
