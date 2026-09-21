.class public Lcom/transsion/camera/ui/setting/videohdr/VideoHDRSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mFlagType:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 20
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$integer;->video_hdr_type_setting_preference:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRSettingUIEntry;->mFlagType:I

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 36
    iget v0, p0, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRSettingUIEntry;->mFlagType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 37
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 25
    iget v0, p0, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRSettingUIEntry;->mFlagType:I

    if-nez v0, :cond_13

    .line 26
    new-instance v0, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRSettingUISpec;

    invoke-direct {v2, v1}, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videohdr/VideoHDRTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSupported()Z
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->tran_360_video_hdr_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
