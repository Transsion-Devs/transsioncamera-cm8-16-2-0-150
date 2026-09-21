.class Lcom/transsion/camera/feature/setting/makeup/VipStereo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/VipStereo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/VipStereo;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$3;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$3;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->refreshToUI(I)V

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VipStereo$3;->this$0:Lcom/transsion/camera/feature/setting/makeup/VipStereo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/VipStereo;->updateWarningTypeAndSendRequest(I)V

    return-void
.end method
