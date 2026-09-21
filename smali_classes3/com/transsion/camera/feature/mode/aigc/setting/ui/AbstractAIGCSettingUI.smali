.class Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mLowLight:Z

.field protected mOrientation:I

.field protected mScreenFormType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractAIGCSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 3

    return-void
.end method

.method public initSettingUI(II)V
    .registers 3

    .line 35
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mScreenFormType:I

    .line 36
    iput p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mOrientation:I

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mOrientation:I

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 40
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mScreenFormType:I

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    if-nez p1, :cond_a

    .line 65
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setDeviceSetting deviceSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_a
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setupView()V
    .registers 1

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mLowLight:Z

    return-void
.end method

.method public updateVisibility(Z)V
    .registers 2

    return-void
.end method

.method protected viewVisible(Landroid/view/View;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_b

    .line 74
    sget-object p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isViewVisible view is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 77
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    return p0

    .line 81
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 82
    :goto_16
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_4b

    .line 83
    check-cast p1, Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_46

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewVisible parentView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 88
    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_16

    :cond_4b
    const/4 p0, 0x1

    return p0
.end method
