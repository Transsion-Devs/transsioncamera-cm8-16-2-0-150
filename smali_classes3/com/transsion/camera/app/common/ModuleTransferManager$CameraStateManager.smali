.class public Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ModuleTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraStateManager"
.end annotation


# instance fields
.field private mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

.field private final mSupportModeList:Ljava/util/List;

.field final synthetic this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ModuleTransferManager;)V
    .registers 14

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const-string v10, "TimeLapseVideoModeEntry"

    const-string v11, "MakeUpModeEntry"

    const-string v0, "ASDModeEntry"

    const-string v1, "IntentPhotoMode"

    const-string v2, "FaceBeautyModeEntry"

    const-string v3, "STBlurModeEntry"

    const-string v4, "SuperNightModeEntry"

    const-string v5, "SuperNightFilterModeEntry"

    const-string v6, "HighDefinitionModeEntry"

    const-string v7, "VideoModeEntry"

    const-string v8, "FunVideoModeEntry"

    const-string v9, "SlowMotionModeEntry"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->mSupportModeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCameraChangeListener(Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->mOnCameraChangeListener:Lcom/transsion/camera/app/common/ModuleTransferManager$OnCameraChangeListener;

    return-void
.end method

.method public isCurrentModeSupport()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 237
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->mSupportModeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 238
    iget-object v2, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->this$0:Lcom/transsion/camera/app/common/ModuleTransferManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getModeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$CameraStateManager;->mSupportModeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method
