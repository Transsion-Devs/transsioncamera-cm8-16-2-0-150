.class Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/location/LocationReceiveHelper$ILocationReceiveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationReceived(Landroid/location/Location;)V
    .registers 8

    .line 405
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLocationReceived]: location: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_1e

    return-void

    .line 409
    :cond_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x1

    invoke-static {p1, v3, v4, v5}, Lcom/transsion/camera/utils/LocationUtil;->getAddress(Landroid/location/Location;Landroid/content/Context;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fputmLocationPlainText(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->access$400(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fgetmLocationPlainText(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    .line 411
    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v3}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->access$300(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 410
    const-string v5, "key_plain_location_text"

    invoke-virtual {p1, v5, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->access$500(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    const-string v1, "key_gold_watermark"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onLocationReceived]: mLocationPlainText: ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$2;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fgetmLocationPlainText(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
