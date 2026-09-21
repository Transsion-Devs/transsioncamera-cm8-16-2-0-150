.class final Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HDRSettingChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;-><init>(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 218
    const-string v0, "key_auto_watermark"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 219
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/videohdr/utils/HDRConfig;->setWaterMarkOn(Z)V

    .line 220
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v3

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x5a

    :goto_36
    move v5, v0

    goto :goto_3b

    :cond_38
    const/16 v0, 0x10e

    goto :goto_36

    :goto_3b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$misCurrentCameraFacingBack(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;)Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mupdateWaterMarkPosition(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;IIIIZ)V

    .line 224
    :cond_44
    const-string v0, "key_mirror"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview$HDRSettingChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;->-$$Nest$mupdateTexTransformMatrix(Lcom/transsion/camera/feature/setting/videohdr/preview/VideoHDRPreview;Ljava/lang/String;)V

    :cond_53
    return-void
.end method
