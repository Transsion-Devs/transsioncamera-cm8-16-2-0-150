.class Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 90
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 94
    const-string v0, "key_camera_zoom"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-nez p2, :cond_c

    .line 95
    sget-object p2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    :cond_c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 96
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;

    invoke-static {}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->-$$Nest$sfgetZOOM_EFFECT_VALUE()I

    move-result v0

    if-ge p1, v0, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    invoke-static {p2, p1}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->-$$Nest$fputmIsCurrentZoomSupportLens(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;Z)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->access$000(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_2e
    const-string v0, "key_sat_stream_id"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;->-$$Nest$fputmCurrentStreamId(Lcom/transsion/camera/feature/setting/lenscorrection/LensCorrection;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method
