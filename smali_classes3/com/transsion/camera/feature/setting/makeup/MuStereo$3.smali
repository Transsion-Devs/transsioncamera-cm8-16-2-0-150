.class Lcom/transsion/camera/feature/setting/makeup/MuStereo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/makeup/MuStereo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuStereo;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$3;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$3;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->refreshToUI(I)V

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereo$3;->this$0:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->updateWarningTypeAndSendRequest(I)V

    return-void
.end method
