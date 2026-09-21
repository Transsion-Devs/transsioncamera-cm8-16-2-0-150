.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodUIEntry;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 37
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodPopSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodPopSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    return-object v0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 31
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI;

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodUISpec;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method
