.class Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/qrcode/QRcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 321
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmDataCallback(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->access$000(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 314
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$1;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$mapplyUninitQrcode(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V

    return-void
.end method
