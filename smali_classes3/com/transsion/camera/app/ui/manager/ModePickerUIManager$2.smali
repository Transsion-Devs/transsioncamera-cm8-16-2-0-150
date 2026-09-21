.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IMoreTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .registers 2

    .line 1425
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoreTabChanged(Ljava/lang/String;)V
    .registers 8

    .line 1428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 1430
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoreTabChanged, modeName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", facingBack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1431
    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1432
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const/16 v2, 0x2c

    const-string v3, "click_to_enter"

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 1434
    :cond_42
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->back_cam_mode_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1435
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$string;->front_cam_mode_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1436
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModeOrderProvider(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_76

    move-object v5, v1

    goto :goto_77

    :cond_76
    move-object v5, v2

    :goto_77
    if-eqz v0, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v1, v2

    :goto_7b
    const/4 v0, 0x0

    invoke-virtual {v3, v4, v5, v1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1438
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateCurrentMode(Ljava/lang/String;ZZ)V

    return-void
.end method
