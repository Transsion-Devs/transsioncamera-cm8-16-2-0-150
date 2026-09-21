.class Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


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

    .line 383
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmAsdModeFeatures(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;->isModeSupportFakeCamera()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_45

    .line 390
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmAsd(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/Asd;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->onFakeCameraStatusChanged(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fgetmWarningType(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I

    move-result v0

    if-eq v0, p1, :cond_45

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualLensWarningCallback type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI(Z)V

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;->this$0:Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->-$$Nest$fputmWarningType(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;I)V

    :cond_45
    :goto_45
    return-void
.end method
