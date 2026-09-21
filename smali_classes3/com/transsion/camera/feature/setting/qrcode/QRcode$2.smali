.class Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQrCodeResultCallback;


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

    .line 418
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateResult(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;",
            ">;)V"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmDataCallback(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 422
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmInit(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_2f

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmStartTime(Lcom/transsion/camera/feature/setting/qrcode/QRcode;J)V

    goto :goto_71

    .line 426
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xbb8

    cmp-long v1, v1, v5

    if-lez v1, :cond_44

    move v1, v4

    goto :goto_45

    :cond_44
    move v1, v3

    :goto_45
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmIsNeedSkippingFrames(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V

    .line 427
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time with empty result mIsNeedSkippingFrames : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmIsNeedSkippingFrames(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_71

    .line 430
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v0, v3}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmIsNeedSkippingFrames(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Z)V

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fputmStartTime(Lcom/transsion/camera/feature/setting/qrcode/QRcode;J)V

    .line 435
    :goto_71
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->access$100(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_celebrity_scene"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->access$200(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "val_celebrity_scene_none"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_92

    :cond_91
    move v0, v4

    .line 439
    :goto_92
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmDataCallback(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 440
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmDataCallback(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b2

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$2;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmCloseByFlashSnapLite(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Z

    move-result p0

    if-nez p0, :cond_b2

    if-nez v0, :cond_b1

    goto :goto_b2

    :cond_b1
    move v3, v4

    :cond_b2
    :goto_b2
    invoke-interface {v1, p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_b5
    return-void
.end method
