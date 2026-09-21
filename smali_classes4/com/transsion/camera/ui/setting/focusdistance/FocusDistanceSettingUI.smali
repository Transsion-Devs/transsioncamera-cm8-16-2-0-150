.class public Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentFocusDistanceValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mFocusDistance1M:Landroid/widget/TextView;

.field private mFocusDistance3M:Landroid/widget/TextView;

.field private mFocusDistance5M:Landroid/widget/TextView;

.field private mFocusDistanceAF:Landroid/widget/TextView;

.field private mFocusDistanceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mFocusDistanceListener:Landroid/view/View$OnClickListener;

.field private mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

.field private mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentFocusDistanceValue(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mCurrentFocusDistanceValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusDistanceList(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOperationControl(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFocusDistanceValue(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mCurrentFocusDistanceValue:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FocusDistanceSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 40
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mCurrentFocusDistanceValue:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceList:Ljava/util/List;

    .line 121
    new-instance v0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;-><init>(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$2;-><init>(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private hideFocusDistance(Z)V
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initItemView()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/R$id;->focus_distance_af:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceAF:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/R$id;->focus_distance_1m:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance1M:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/R$id;->focus_distance_3m:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance3M:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/R$id;->focus_distance_5m:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance5M:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceAF:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance1M:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance3M:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance5M:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceAF:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance1M:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance3M:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance5M:Landroid/widget/TextView;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeFocusDistanceRoot()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method private setFocusDistanceEnable(Z)V
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private showFocusDistance(Z)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateItemView()V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mCurrentFocusDistanceValue:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceAF:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 87
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_5e

    goto :goto_42

    :sswitch_17
    const-string v2, "continuous-picture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_42

    :cond_20
    const/4 v3, 0x3

    goto :goto_42

    :sswitch_22
    const-string v2, "0.33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v3, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v2, "0.2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_42

    :cond_36
    move v3, v1

    goto :goto_42

    :sswitch_38
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    packed-switch v3, :pswitch_data_70

    return-void

    .line 89
    :pswitch_46
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceAF:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 95
    :pswitch_4c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance3M:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 98
    :pswitch_52
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance5M:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 92
    :pswitch_58
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance1M:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :sswitch_data_5e
    .sparse-switch
        0x31 -> :sswitch_38
        0xb9f4 -> :sswitch_2d
        0x1684de -> :sswitch_22
        0x363d9440 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_58
        :pswitch_52
        :pswitch_4c
        :pswitch_46
    .end packed-switch
.end method

.method private updateRootParams()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 58
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 59
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->removeFocusDistanceRoot()V

    .line 60
    sget p3, Lcom/transsion/camera/R$layout;->focus_distance_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    sget p2, Lcom/transsion/camera/R$id;->focus_distance_setting_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    .line 62
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->getValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mCurrentFocusDistanceValue:Ljava/lang/String;

    .line 63
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->updateRootParams()V

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->initItemView()V

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->updateItemView()V

    return-object p1
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getFocusDistanceSettingRoot()Landroid/widget/FrameLayout;
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceSettingRoot:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 167
    const-string p0, "key_setting_focus_distance"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->hideFocusDistance(Z)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_22

    const/16 v0, 0xcf

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1e

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_1a

    packed-switch p1, :pswitch_data_26

    return-void

    :pswitch_11
    const/4 p1, 0x1

    .line 217
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->setFocusDistanceEnable(Z)V

    return-void

    .line 213
    :pswitch_16
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->setFocusDistanceEnable(Z)V

    return-void

    .line 209
    :cond_1a
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->showFocusDistance(Z)V

    return-void

    .line 206
    :cond_1e
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->hideFocusDistance(Z)V

    return-void

    .line 220
    :cond_22
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->removeFocusDistanceRoot()V

    return-void

    :pswitch_data_26
    .packed-switch 0xb
        :pswitch_16
        :pswitch_11
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_8

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_a

    :cond_8
    rsub-int p1, p1, 0x168

    .line 232
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceAF:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance1M:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance3M:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistance5M:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 73
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 245
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_c

    .line 247
    sget-object p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->hideFocusDistance(Z)V

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->removeFocusDistanceRoot()V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mFocusDistanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 259
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
