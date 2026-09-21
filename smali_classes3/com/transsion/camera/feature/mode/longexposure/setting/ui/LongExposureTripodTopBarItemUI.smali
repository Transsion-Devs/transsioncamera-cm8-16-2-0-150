.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# instance fields
.field private mTripodHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;


# direct methods
.method public static synthetic $r8$lambda$gJUinGZC0RENA6gacETpLzxT9cA(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 28
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .registers 3

    .line 41
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI;->mTripodHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;->updateTripodTip(Z)V

    .line 44
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_f

    .line 45
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 47
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;
    .registers 9

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodTopBarItemUI;->mTripodHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    .line 36
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method
