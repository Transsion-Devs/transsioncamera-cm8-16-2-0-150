.class public Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mIsInPopSetting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditWaterMarkSettingUIEntry"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 29
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    return-void
.end method

.method private unSupportEditWaterMark()Z
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$bool;->edit_watermark_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$bool;->gold_watermark_support:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$bool;->pro_watermark_support:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_21

    if-nez v1, :cond_21

    if-nez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 3

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->unSupportEditWaterMark()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_8
    sget-object v0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " createCommonUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 5

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->unSupportEditWaterMark()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 50
    :cond_8
    new-instance v0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkPopSettingItemUI;

    new-instance v2, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkPopSettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkPopSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v2}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkPopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 51
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    if-eqz p0, :cond_1b

    return-object v0

    :cond_1b
    return-object v1
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->unSupportEditWaterMark()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 37
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    if-nez v0, :cond_20

    .line 38
    sget-object v0, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUIEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " createPreferenceItemUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0

    :cond_20
    return-object v1
.end method
