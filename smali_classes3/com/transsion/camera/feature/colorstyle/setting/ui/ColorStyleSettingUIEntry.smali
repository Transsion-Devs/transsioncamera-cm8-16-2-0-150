.class public Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 3

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ColorStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[ColorStyleSettingUIEntry] createCommonUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 37
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    return-object v0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/ColorStyle;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[ColorStyleSettingUIEntry] createTopBarItemUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleTopBarItemUI;

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleTopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method

.method public isSupported()Z
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->tran_filter_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
