.class Lcom/transsion/camera/app/ui/CameraAppUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_9

    .line 161
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onLottieAnimationEnd()V

    :cond_9
    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_9

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onLottieAnimationStart()V

    :cond_9
    return-void
.end method

.method public onAnimationUpdate(F)V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$1;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    if-eqz p0, :cond_9

    .line 154
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onLottieAnimationUpdate(F)V

    :cond_9
    return-void
.end method
