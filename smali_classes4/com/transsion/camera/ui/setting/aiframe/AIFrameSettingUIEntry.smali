.class public Lcom/transsion/camera/ui/setting/aiframe/AIFrameSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 15
    new-instance v0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameSettingUIEntry;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    return-void
.end method


# virtual methods
.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 26
    new-instance v0, Lcom/transsion/camera/ui/setting/aiframe/AIFramePopSettingItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/aiframe/AIFrameSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameSettingUIEntry;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/aiframe/AIFramePopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    return-object v0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 5

    .line 20
    new-instance v0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/aiframe/AIFrameSettingUISpec;

    invoke-direct {v2, v1}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameSettingUIEntry;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method

.method public isSupported()Z
    .registers 2

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->ai_frame_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
