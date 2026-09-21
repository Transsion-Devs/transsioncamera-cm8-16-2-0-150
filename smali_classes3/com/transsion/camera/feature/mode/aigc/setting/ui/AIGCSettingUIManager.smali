.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

.field private final mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCSettingUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    .line 30
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    return-void
.end method


# virtual methods
.method public createSettingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public initSettingUI(II)V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->initSettingUI(II)V

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->initSettingUI(II)V

    .line 37
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->setIndicatorListener(Lcom/transsion/camera/feature/mode/aigc/setting/ui/IIndicatorListener;)V

    .line 38
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->setTemplateListener(Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->onOrientationChanged(I)V

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->onScreenFormChanged(IZ)V

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setupSettingView()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->setupView()V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->setupView()V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 5

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLowLight lowLight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->updateLowLight(Z)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->updateLowLight(Z)V

    return-void
.end method

.method public updateVisibility(Z)V
    .registers 5

    .line 67
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVisibility visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mIndicatorSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->updateVisibility(Z)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->mTemplateSettingUI:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->updateVisibility(Z)V

    return-void
.end method
