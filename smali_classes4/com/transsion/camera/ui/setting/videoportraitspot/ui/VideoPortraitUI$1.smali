.class Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;-><init>(Landroid/view/View;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/String;)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mIsRecord:Z

    if-nez v1, :cond_2e

    .line 42
    iget-object v0, v0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsRecording(Z)V

    .line 43
    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mSettingSwitch:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_27

    .line 46
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mSettingSwitch:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "on"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 48
    :goto_27
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoPortraitUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mSettingLevel:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method
