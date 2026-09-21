.class Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->-$$Nest$fputmIsFaceAttributeStarted(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;Z)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->access$100(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->-$$Nest$fputmIsFaceAttributeStarted(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;Z)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->access$000(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method
