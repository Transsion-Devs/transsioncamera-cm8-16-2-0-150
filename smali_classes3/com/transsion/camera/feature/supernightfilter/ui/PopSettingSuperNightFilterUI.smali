.class public Lcom/transsion/camera/feature/supernightfilter/ui/PopSettingSuperNightFilterUI;
.super Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$s5Zm1H3p9jbJLTtaLSJLq859CYY(Lcom/transsion/camera/feature/supernightfilter/ui/PopSettingSuperNightFilterUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/PopSettingSuperNightFilterUI;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mNeedAnimation:Z

    .line 10
    new-instance p1, Lcom/transsion/camera/feature/supernightfilter/ui/PopSettingSuperNightFilterUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/PopSettingSuperNightFilterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/PopSettingSuperNightFilterUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 11
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz p1, :cond_b

    .line 12
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->onSettingOptionClick(Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method
