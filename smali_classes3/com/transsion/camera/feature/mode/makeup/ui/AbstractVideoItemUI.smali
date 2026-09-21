.class public abstract Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mOrientation:I

.field protected mScreenFormType:I

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private final mStateList:Landroid/content/res/ColorStateList;

.field private final mStateListLowLight:Landroid/content/res/ColorStateList;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mTabIndicator:Landroid/widget/ImageView;

.field private mTabSelectCallback:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;

.field private mTabSelectListener:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectListener;

.field protected mTabText:Landroid/widget/TextView;

.field protected mTabView:Landroid/view/ViewGroup;

.field protected mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private mVideoFaceBeautyMakeup:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$-wZsWaDx1uN2MA6jVO2fWfhatSM(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->lambda$setupTabView$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractVideoItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v0, 0x10100a1

    .line 48
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 52
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->NORMAL_STATE_SET:[I

    .line 54
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mMainHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 102
    sget-object p1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 103
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 105
    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->sStates:[[I

    filled-new-array {p1, v0}, [I

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mStateList:Landroid/content/res/ColorStateList;

    .line 106
    new-instance v0, Landroid/content/res/ColorStateList;

    const/high16 v1, -0x1000000

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mStateListLowLight:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private synthetic lambda$setupTabView$0(Landroid/view/View;)V
    .registers 3

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1d

    .line 223
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mVideoFaceBeautyMakeup:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_16

    .line 226
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 228
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabSelectListener:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectListener;

    if-eqz p0, :cond_1d

    .line 229
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectListener;->onTabSelectChanged(Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public final createItemView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .registers 4

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->createTabView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    .line 179
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->createListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected abstract createListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end method

.method protected createTabView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .registers 5

    .line 184
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_12

    .line 187
    :cond_f
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_tab_layout:I

    goto :goto_14

    .line 185
    :cond_12
    :goto_12
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_tab_layout_ui4:I

    :goto_14
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    .line 190
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_tab_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabText:Landroid/widget/TextView;

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_tab_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabIndicator:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_55

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_item_tab_internal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 198
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingTitle()Ljava/lang/String;
    .registers 1

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initItemUI(II)V
    .registers 3

    .line 122
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mScreenFormType:I

    .line 123
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mOrientation:I

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 2

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 296
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mOrientation:I

    .line 297
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateLayout()V

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateTabView()V

    return-void
.end method

.method public onProgressChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 291
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mScreenFormType:I

    .line 292
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateLayout()V

    return-void
.end method

.method public onSettingOptionToggle()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 44
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected registerSettingDevice()V
    .registers 1

    return-void
.end method

.method protected final registerValueChangedListener(Ljava/lang/String;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v0, :cond_c

    .line 132
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerValueChangedListener mStatusMonitor is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_c
    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected resetUI()V
    .registers 1

    return-void
.end method

.method protected setDeviceSettingData(Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V
    .registers 4

    if-nez p1, :cond_a

    .line 163
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setDeviceSettingData: settingData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_a
    const-string v0, "key_video_face_beauty_makeup"

    iget-object v1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 168
    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mVideoFaceBeautyMakeup:Lcom/transsion/camera/app/common/setting/ISetting;

    :cond_18
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 153
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setDeviceSettingData: settingDataList is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 157
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setDeviceSettingData(Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 303
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setTabEnable(Z)V
    .registers 5

    .line 308
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTabEnable enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setTabSelectCallback(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabSelectCallback:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;

    return-void
.end method

.method public setTabSelectListener(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectListener;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabSelectListener:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectListener;

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 3

    .line 173
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 174
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public final setupItemView()V
    .registers 1

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->registerSettingDevice()V

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setupTabView()V

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateLayout()V

    return-void
.end method

.method protected setupTabView()V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateTabView()V

    return-void
.end method

.method public tabSelectChanged(Ljava/lang/String;)V
    .registers 5

    .line 317
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tabSelectChanged value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateTabView()V

    const/4 p1, 0x1

    .line 319
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateListView(Z)V

    return-void
.end method

.method protected tabSelected()Z
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mVideoFaceBeautyMakeup:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_d

    .line 263
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "tabSelected mVideoFaceBeautyMakeup is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 266
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mVideoFaceBeautyMakeup:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 1

    return-void
.end method

.method protected final unregisterValueChangedListener(Ljava/lang/String;)V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v0, :cond_d

    .line 140
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "unregisterValueChangedListener mStatusMonitor is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_d
    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected updateLayout()V
    .registers 1

    return-void
.end method

.method protected updateListView()V
    .registers 2

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateListView(Z)V

    return-void
.end method

.method protected updateListView(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 286
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mLowLight:Z

    .line 287
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateTabView()V

    return-void
.end method

.method protected updateTabView()V
    .registers 5

    .line 238
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 239
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_10

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_11

    :cond_10
    const/4 v0, 0x0

    .line 243
    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 246
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mLowLight:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mStateListLowLight:Landroid/content/res/ColorStateList;

    goto :goto_22

    :cond_20
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mStateList:Landroid/content/res/ColorStateList;

    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabIndicator:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mLowLight:Z

    if-eqz v1, :cond_2e

    .line 248
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->tab_indicator_low_light:I

    goto :goto_30

    .line 249
    :cond_2e
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->tab_indicator:I

    .line 247
    :goto_30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->tabSelected()Z

    move-result v0

    .line 253
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTabView selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabSelectCallback:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;

    if-eqz v1, :cond_77

    if-eqz v0, :cond_77

    .line 255
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;->onTabSelectChanged(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 257
    :cond_77
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
